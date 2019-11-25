#pragma once

#include "Colider.h"

class SphereColider : public Colider {

public:

	float Radius;

	SphereColider() { }

	void Awake();
	void Update();

	bool isCollision(Vector2);
	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};