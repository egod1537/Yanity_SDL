#pragma once

#include "Colider.h"

///@brief Sphere ������ Colider ������Ʈ �Դϴ�.
class SphereColider : public Colider {

public:

	float Radius; ///< SphereColider�� ������

	SphereColider() { }

	void Awake();
	void Update();

	bool isCollision(Vector2);
	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};