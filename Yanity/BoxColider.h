#pragma once

#include "Colider.h"

///@brief Box 형태의 Colider 컴포넌트 입니다.
class BoxColider : public Colider {

public:

	Vector2 Scale, ///< BoxColider 중심을 시작인 크기
			min, ///< BoxColider 시작점
			max; ///< BoxColider 끝점

	BoxColider(){ }

	void Awake();
	void Update();

	bool isCollision(Vector2);
	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};