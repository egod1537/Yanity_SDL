#pragma once

#include "SDL_stdafx.h"
#include "Vector2.h"

class Input {

public:

	Input() {}

	static void Handler();

	static bool getKeyDown(int);

	static bool getMouseLeftClickDown();
	static bool getMouseLeftClickUp();
	static bool getMouseRightClickDown();
	static bool getMouseRightClickUp();
	static Vector2 getMousePosition();

};