#include "TestColiderCheck.h"

void TestColiderCheck::OnColiderEnter(Colider* other) {

	std::cout << "Colider Enter\n";

}

void TestColiderCheck::OnTriggerEnter(Colider* other) {

	std::cout << "Trigger Enter\n";

}

void TestColiderCheck::OnColiderStay(Colider* other) {

	std::cout << "Colider Stay\n";

}

void TestColiderCheck::OnTriggerStay(Colider* other) {

	std::cout << "Trigger Stay\n";

}

void TestColiderCheck::OnColiderExit(Colider* other) {

	std::cout << "Colider Exit\n";

}

void TestColiderCheck::OnTriggerExit(Colider* other) {

	std::cout << "Trigger Exit\n";

}