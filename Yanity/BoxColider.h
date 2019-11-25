#pragma once

#include "Colider.h"

class BoxColider : public Colider {

public:

	Vector2 Scale, min, max;

	BoxColider(){ }

	void Awake();
	void Update();

	bool isCollision(Vector2);
	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};