#include "Button.h"

#include "Input.h"
#include "Lib.h"
#include "BoxColider.h"

BoxColider* boxColider;

void Button::Start() {

	boxColider = gameobject->GetComponenet<BoxColider*>();

}

void Button::Update() {

	Vector2 pos = Lib::ScreenPosToViewPortPos(Input::getMousePosition());

	if (boxColider->isCollision(pos)) {

		if (Input::getMouseLeftClickUp()) std::cout << "click\n";

	}

}