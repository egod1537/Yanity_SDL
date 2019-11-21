#pragma once

#include "PhysX.h"
#include "Colider.h"

class BoxColider : public Colider {

public:

	Vector2 ColiderScale;

	BoxColider() : ColiderScale{ Vector2(1, 1) } { PhysX::AddColider(this); }

	void Component::Awake() {}
	void Component::OnEnable() {}
	void Component::Start() {}
	void Component::Update() {}
	void Component::Destory() {}

	bool Colider::isCollision(Vector2);

};