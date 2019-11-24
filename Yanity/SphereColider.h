#pragma once

#include "Colider.h"

class SphereColider : public Colider {

public:

	float Radius;

	SphereColider() { PhysX::getInstance().Coliders.push_back(this); }

	void Update();

	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};