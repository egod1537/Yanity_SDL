#pragma once

#include "Component.h"
#include "Vector2.h"
#include "Lib.h"
#include "PhysX.h"
#include "Rigidbody.h"

class BoxColider;
class SphereColider;

class Colider : public Component{

public:

	bool isTrigger = false,
		 DebugMode = false;

	virtual void Collision() {}

	virtual bool isCollision(BoxColider*) { return false; }
	virtual bool isCollision(SphereColider*) { return false; }

	void RunOnEnter(Colider*);
	void RunOnStay(Colider*);
	void RunOnExit(Colider*);

	void Update() { Collision(); }

};