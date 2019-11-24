#pragma once

#include "stdafx.h"
#include "GameObject.h"

class GameObject;
class Colider;

class Component {

public:

	GameObject* gameobject;

	bool isEnable = true;

	Component() {}

	virtual void Awake() {}
	virtual void Start() {}
	virtual void OnEnable() {}
	virtual void Update() {}
	virtual void Destory() {}

	virtual void OnColiderEnter(Colider*) {}
	virtual void OnColiderStay(Colider*) {}
	virtual void OnColiderExit(Colider*) {}

	virtual void OnTriggerEnter(Colider*) {}
	virtual void OnTriggerStay(Colider*) {}
	virtual void OnTriggerExit(Colider*) {}

	void Enable() { isEnable = true; OnEnable(); }
	void Disable() { isEnable = false; };

};