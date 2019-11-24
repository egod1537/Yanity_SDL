#include "SphereColider.h"

#include "BoxColider.h"
#include "GraphicCore.h"
#include "Color.h"

void SphereColider::Update() {

	if (DebugMode) {

		GraphicCore::getInstance().DrawSphere(Color::GREEN(), gameobject->getPosition(), Radius);

	}

}

bool SphereColider::isCollision(SphereColider* _colider) {

	float r = Radius + _colider->Radius;

	r *= r;

	Vector2 trPos = gameobject->getPosition(),
		_cPos = _colider->gameobject->getPosition();

	return r > pow((trPos.x - _cPos.x), 2) + pow((trPos.y - _cPos.y), 2);

}

bool SphereColider::isCollision(BoxColider* _colider) {

	return false;

}

void SphereColider::Collision() {

	Rigidbody *rigidbody = gameobject->GetComponenet<Rigidbody*>();

	if (rigidbody == nullptr) return;

	PhysX ph = PhysX::getInstance();

	Lib::Lib_ItrVector<Colider*>(
		ph.Coliders,
		[&](Colider* other) {

		if (other != this) {

			bool col = other->isCollision(this);

			if (col) {

				if (!rigidbody->Collision) RunOnEnter(other);
				else RunOnStay(other);

			}
			else
				if (rigidbody->Collision) RunOnExit(other);

			rigidbody->Collision = (isTrigger) ? false : col;

		}

	}
	);

}