#pragma once

#include "GameCore.h"

class Input {

public:

	Input() {}

	static void keyStateHandler(SDL_Keycode _keycode, Uint32 _eventtype);

	static bool getKeyDown(SDL_Keycode _key);
	static bool getKeyUp(SDL_Keycode _key);

	static bool getMouseLeftClickDown();
	static bool getMouseLeftClickUp();
	static bool getMouseRightClickDown();
	static bool getMouseRightClickUp();
	static Vector2 getMousePosition();

};