#include "SphereColider.h"

#include "BoxColider.h"
#include "GraphicCore.h"
#include "Color.h"

void SphereColider::Awake() { PhysX::getInstance().Coliders.push_back(this); }

void SphereColider::Update() {

	if (DebugMode) {

		GraphicCore::getInstance().DrawSphere(Color::GREEN(), gameobject->getPosition(), Radius);

	}

}

bool SphereColider::isCollision(Vector2 _pos) {

	float r = Radius;

	r *= r;

	Vector2 trPos = gameobject->getPosition();

	return r > pow((trPos.x - _pos.x), 2) + pow((trPos.y - _pos.y), 2);

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

	bool Collision = false;

	Rigidbody *rig;

	Lib::Lib_ItrVector<Colider*>(
		ph.Coliders,
		[&](Colider* other) {

		if (other == this) return;

		bool col = other->isCollision(this);

		rig = other->gameobject->GetComponenet<Rigidbody*>();

		if (col) {

			if (!rig->Collision) { RunOnEnter(other); }
			else RunOnStay(other);

			Collision = true;

		}
		else
			if (rig->Collision) RunOnExit(other);

		if (!rig->Collision) rig->Collision = col;

	}
	);

	rigidbody->Collision = Collision;

}