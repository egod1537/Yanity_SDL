#pragma once

#include "GameCore.h"
#include "Input.h"

class Scene {

public:

	bool isActive = false;

	std::vector<GameObject*> listGameObeject;

	void Enable();
	void Disable();

	void Run();

	void AddGameObject(GameObject* gameobject);

};