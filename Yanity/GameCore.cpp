#include "GameCore.h"

#include "stdafx.h"
#include "SDL_stdafx.h"
#include "GraphicCore.h"
#include "Input.h"

#include "Lib.h"
#include "GameObject.h"
#include "PhysX.h"

static GameCore* _instance;

void GameCore::Init() {

	srand(time(NULL));

	SDL_Init(SDL_INIT_EVERYTHING);

	GraphicCore::getInstance().Init();

}

GameCore& GameCore::getInstance() {

	if (_instance == nullptr) _instance = new GameCore();

	return *_instance;

}

#pragma region RunThread

typedef struct ThreadData {

	bool* active;
	float* ms;

}ThreadData;

#pragma region PhysX

int Thread_PhysX(void *ptr) {

	ThreadData *data = static_cast<ThreadData*>(ptr);

	while (*data->active) { PhysX::getInstance().Run(); SDL_Delay(*data->ms); }

	return 0;

}

void GameCore::RunPhysX() {

	SDL_Thread *thread;

	ThreadData *td = (ThreadData*)malloc(sizeof(ThreadData));

	td->active = &isActive;
	td->ms = &PhysX_updateMs;

	thread = SDL_CreateThread(Thread_PhysX, "PhysX", td);

}

#pragma endregion

#pragma region Input

int Thread_Input(void *ptr) {

	ThreadData *data = static_cast<ThreadData*>(ptr);

	SDL_Event Event;

	while (*data->active) { if (SDL_PollEvent(&Event)) Input::Handler(); SDL_Delay(*data->ms); }

	return 0;

}

void GameCore::RunInput() {

	Input::Handler();

	SDL_Thread *thread;

	ThreadData *data = (ThreadData*)malloc(sizeof(ThreadData));

	data->active = &isActive;
	data->ms = &Input_updateMs;

	thread = SDL_CreateThread(Thread_Input, "Input", data);

}

#pragma endregion

#pragma endregion

void GameCore::RunSystem(std::vector<GameObject*> _list) {

	isActive = true;

	#pragma region Awake and Start

	Lib::Lib_ItrVector<GameObject*>(
		_list,
		[](GameObject* callback)
	{
		callback->RunAwake();
	}
	);

	Lib::Lib_ItrVector<GameObject*>(
		_list,
		[](GameObject* callback)
	{
		callback->RunStart();
	}
	);

	#pragma endregion

	SDL_Renderer* _renderer = GraphicCore::getInstance().renderer;

	RunPhysX(); RunInput();

	while (isActive) {

		SDL_SetRenderDrawColor(_renderer, 0, 0, 0, 0);
		SDL_RenderClear(_renderer);

		#pragma region Update

		Lib::Lib_ItrVector<GameObject*>(
			_list,
			[](GameObject* callback)
		{
			callback->RunUpdate();
		}
		);

		#pragma endregion

		GraphicCore::getInstance().Render();

		SDL_Delay(6);

	}

}