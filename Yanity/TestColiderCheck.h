#pragma once

#include "GameEngine.h"

class TestColiderCheck : public Component {

public:

	void OnColiderEnter(Colider*);
	void OnColiderStay(Colider*);
	void OnColiderExit(Colider*);

	void OnTriggerEnter(Colider*);
	void OnTriggerStay(Colider*);
	void OnTriggerExit(Colider*);

};