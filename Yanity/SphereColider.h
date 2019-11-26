#pragma once

#include "Colider.h"

///@brief Sphere 형태의 Colider 컴포넌트 입니다.
class SphereColider : public Colider {

public:

	float Radius; ///< SphereColider의 반지름

	SphereColider() { }

	void Awake();
	void Update();

	bool isCollision(Vector2);
	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};