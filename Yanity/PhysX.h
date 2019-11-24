#pragma once

#include "stdafx.h"

class Colider;

class BoxColider;
class SphereColider;

class PhysX {

public:

	PhysX() {}

	std::vector<Colider*> Coliders;

	static PhysX& getInstance();

	void Run();

};