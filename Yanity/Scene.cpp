#include "Scene.h"

#include "Lib.h"
#include "GameObject.h"
#include "GraphicCore.h"
#include "Input.h"
#include "PhysX.h"

void Scene::Enable() {

	isActive = true;

	Run();

}
void Scene::Disable() {

	isActive = false;

	Lib::Lib_ItrVector<GameObject*>(
		listGameObeject,
		[](GameObject* callback)
		{
			callback->RunDestroy();
		}
	);

}

void Scene::Run() {

	Lib::Lib_ItrVector<GameObject*>(
		listGameObeject,
		[](GameObject* callback)
		{
			callback->RunAwake();
		}
	);

	Lib::Lib_ItrVector<GameObject*>(
		listGameObeject,
		[](GameObject* callback)
		{
			callback->RunStart();
		}
	);

	SDL_Renderer* _renderer = GraphicCore::getInstance().renderer;

	SDL_Event Event;

	while (isActive) {

		SDL_SetRenderDrawColor(_renderer, 0, 0, 0, 0);
		SDL_RenderClear(_renderer);

		if (SDL_PollEvent(&Event)) Input::keyStateHandler(Event.key.keysym.sym, Event.type); 

		Lib::Lib_ItrVector<GameObject*>(
			listGameObeject,
			[](GameObject* callback)
			{
				callback->RunUpdate();
			}
		);

		PhysX::getInstance().Run();

		GraphicCore::getInstance().Render();

		SDL_Delay(6);

	}

}

void Scene::AddGameObject(GameObject* gameobject) { listGameObeject.push_back(gameobject); }