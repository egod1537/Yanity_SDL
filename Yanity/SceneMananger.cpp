#pragma once

#include "SceneManager.h"

#include "GameCore.h"

void SceneManager::LoadScene(std::string _name)
{

	for (Scene* s : GameCore::getInstance().list_Scene) 
		s->Disable();

	Scene *scene = FindScene(_name);

	if (scene == nullptr) return;

	scene->Enable();

}

Scene* SceneManager::FindScene(std::string _name) 
{

	for (Scene* scene : GameCore::getInstance().list_Scene) {

		std::cout << scene->name << "\n";
		if (scene->name == _name) return scene;

	}
		
	return nullptr;

}