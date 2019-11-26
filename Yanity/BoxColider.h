#pragma once

#include "Colider.h"

///@brief Box ������ Colider ������Ʈ �Դϴ�.
class BoxColider : public Colider {

public:

	Vector2 Scale, ///< BoxColider �߽��� ������ ũ��
			min, ///< BoxColider ������
			max; ///< BoxColider ����

	BoxColider(){ }

	void Awake();
	void Update();

	bool isCollision(Vector2);
	bool isCollision(BoxColider*);
	bool isCollision(SphereColider*);

	void Collision();

};