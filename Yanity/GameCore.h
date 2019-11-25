#pragma once

#include "stdafx.h"

class GameObject;

class GameCore {

public:

	bool isActive = false;

	float PhysX_updateMs = 6, Input_updateMs = 6;

	GameCore() {}

	static GameCore& getInstance();

	void Init();

	void RunSystem(std::vector<GameObject*>);

	void RunPhysX();
	void RunInput();

};