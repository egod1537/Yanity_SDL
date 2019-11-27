#include "BoxColider.h"

#include "SphereColider.h"
#include "GraphicCore.h"
#include "Color.h"

void BoxColider::Awake() { PhysX::getInstance().Coliders.push_back(this); }

void BoxColider::Update() {

	if (DebugMode) {

		GraphicCore::getInstance().DrawFillSquare(Color::GREEN(), min, max);

	}

	min = gameobject->getPosition() - Scale * 0.5f;
	max = gameobject->getPosition() + Scale * 0.5f;

}

bool BoxColider::isCollision(Vector2 _pos) {

	if (_pos.x < min.x || _pos.x > max.x) return false;
	if (_pos.y < min.y || _pos.y > max.y) return false;

	return true;

}

bool BoxColider::isCollision(BoxColider* _colider) {

	if (max.x < _colider->min.x || min.x > _colider->max.x) return false;
	if (max.y < _colider->min.y || min.y > _colider->max.y) return false;

	return true;

}

bool BoxColider::isCollision(SphereColider* _colider) {

	return false;

}

void BoxColider::Collision() {

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

		if(!rig->Collision) rig->Collision = col;

	}
	);

	rigidbody->Collision = Collision;

}