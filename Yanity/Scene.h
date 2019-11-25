#pragma once

#include "GameObject.h"

class GameObject;

class Scene {

public:

	bool isActive = false;

	std::vector<GameObject*> listGameObject;

	void Enable();
	void Disable();

	void AddGameObject(GameObject* gameobject);

};