#pragma once

#include "Component.h"

class Rigidbody : public Component{

public:

	bool Collision = false;

	Rigidbody() {}

	void MovePosition(Vector2);

};