#include "PhysX.h"

std::vector<Colider*> Collision;

bool PhysX::isCollision(Vector2 _pos) {

	bool collision = false;

	Lib::Lib_ItrVector<Colider*>(Collision,
		[&](Colider* _colider) {

			if (_colider->isCollision(_pos)) {

				collision = true;
				return;

			}

		}
	);

	return collision;

}

void PhysX::AddColider(Colider* _colider) { Collision.push_back(_colider); }