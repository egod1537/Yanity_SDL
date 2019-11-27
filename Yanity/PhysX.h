#pragma once

#include "stdafx.h"

class Colider;

class BoxColider;
class SphereColider;

///@brief ���� ���� �ý��� ó�� class �Դϴ�.
class PhysX {

public:

	PhysX() {}

	std::vector<Colider*> Coliders; ///< ColiderList �Դϴ�.

	static PhysX& getInstance();///< Singleton Method

	void Run(); ///< PhysX �۵�

};