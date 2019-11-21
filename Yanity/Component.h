#pragma once

#include "GameObject.h"

class GameObject;

class Component {

public:

	GameObject* gameobject;

	bool isEnable = true;

	Component() {}

	virtual void Awake() = 0;
	virtual void Start() = 0;
	virtual void OnEnable() = 0;
	virtual void Update() = 0;
	virtual void Destory() = 0;

	void Enable() { isEnable = true; OnEnable(); }
	void Disable() { isEnable = false; };

};