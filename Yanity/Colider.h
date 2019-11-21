#pragma once

#include "Component.h"
#include "Vector2.h"

class Colider : public Component{

public:
	
	bool isTrigger = false;

	virtual bool isCollision(Vector2) = 0;

};