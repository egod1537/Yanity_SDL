#include "PhysX.h"

#include "Colider.h"
#include "BoxColider.h"
#include "SphereColider.h"

#include "Lib.h"

static PhysX* _instance;

PhysX& PhysX::getInstance() {

	if (_instance == nullptr) _instance = new PhysX();

	return *_instance;

}

void PhysX::Run() {

	Lib::Lib_ItrVector<Colider*>(
	Coliders,
	[&](Colider* other) {

		other->Collision();

	}
	);

}