#include "Rigidbody.h"

#include "BoxColider.h"
#include "SphereColider.h"

void Rigidbody::MovePosition(Vector2 _pos) {

	Vector2 _back = gameobject->getPosition();

	Vector2 Scale = gameobject->getScale();

	gameobject->setPosition(_pos);

	#pragma region BoxColider

	BoxColider *boxColider = gameobject->GetComponenet<BoxColider*>();

	if (boxColider != nullptr) {

		boxColider->min = gameobject->getPosition() - Scale * 0.5f;
		boxColider->max = gameobject->getPosition() + Scale * 0.5f;

		boxColider->Collision();

		if (boxColider->isTrigger) return;

	}

	#pragma endregion

	#pragma region SphereColider

	SphereColider *sphereColider = gameobject->GetComponenet<SphereColider*>();

	if (sphereColider != nullptr) {

		sphereColider->Collision();

		if (sphereColider->isTrigger) return;

	}

	#pragma endregion

	if (Collision) gameobject->setPosition(_back);

}