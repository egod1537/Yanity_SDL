#include "GameCore.h"

#include "stdafx.h"
#include "SDL_stdafx.h"
#include "GraphicCore.h"

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