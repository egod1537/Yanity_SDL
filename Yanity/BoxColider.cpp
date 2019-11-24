#include "BoxColider.h"

#include "SphereColider.h"
#include "GraphicCore.h"
#include "Color.h"

void BoxColider::Update() {

	if (DebugMode) {

		GraphicCore::getInstance().DrawFillSquare(Color::GREEN(), min, max);

	}

	min = gameobject->getPosition() - Scale * 0.5f;
	max = gameobject->getPosition() + Scale * 0.5f;

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

	Lib::Lib_ItrVector<Colider*>(
	ph.Coliders,
	[&](Colider* other) {

		if (other != this) {

			bool col = other->isCollision(this);

			if (col) {

				if(!rigidbody->Collision) RunOnEnter(other);
				else RunOnStay(other);
				
			}
			else
				if (rigidbody->Collision) RunOnExit(other);

			rigidbody->Collision = (isTrigger) ? false : col;

		}

	}
	);

}