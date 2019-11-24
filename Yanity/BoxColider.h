#pragma once

#include "Colider.h"

class BoxColider : public Colider {

public:

	Vector2 Scale, min, max;

	BoxColider() { PhysX::getInstance().Coliders.push_back(this); }

	void Update();

	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};