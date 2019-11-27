#pragma once

#include "stdafx.h"

class Colider;

class BoxColider;
class SphereColider;

///@brief 물리 관련 시스템 처리 class 입니다.
class PhysX {

public:

	PhysX() {}

	std::vector<Colider*> Coliders; ///< ColiderList 입니다.

	static PhysX& getInstance();///< Singleton Method

	void Run(); ///< PhysX 작동

};