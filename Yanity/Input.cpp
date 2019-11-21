#include "Input.h"

SDL_Event Event;

Vector2 MousePosition;

std::map<SDL_Keycode, int> KeyState;

void Input::keyStateHandler(SDL_Keycode _keycode, Uint32 _eventtype) {

	KeyState[_keycode] = _eventtype;

}

bool Input::getKeyDown(SDL_Keycode _key) {return (KeyState[_key] == SDL_KEYDOWN);}

bool Input::getKeyUp(SDL_Keycode _key) { return (KeyState[_key] == SDL_KEYUP); }

bool Input::getMouseLeftClickDown() {

	if (!SDL_PollEvent(&Event)) return false;

	if (Event.type != SDL_MOUSEBUTTONDOWN) return false;

	if (Event.button.button != SDL_BUTTON_LEFT) return false;

	return true;

}

bool Input::getMouseLeftClickUp() {

	if (!SDL_PollEvent(&Event)) return false;

	if (Event.type != SDL_MOUSEBUTTONUP) return false;

	if (Event.button.button != SDL_BUTTON_LEFT) return false;

	return true;

}

bool Input::getMouseRightClickDown() {

	if (!SDL_PollEvent(&Event)) return false;

	if (Event.type != SDL_MOUSEBUTTONDOWN) return false;

	if (Event.button.button != SDL_BUTTON_RIGHT) return false;

	return true;
	
}

bool Input::getMouseRightClickUp() {

	if (!SDL_PollEvent(&Event)) return false;

	if (Event.type != SDL_MOUSEBUTTONUP) return false;

	if (Event.button.button != SDL_BUTTON_RIGHT) return false;

	return true;

}

Vector2 Input::getMousePosition() {

	if (!SDL_PollEvent(&Event)) return MousePosition;

	if (Event.type != SDL_MOUSEMOTION) return MousePosition;

	MousePosition = Vector2(Event.motion.x, Event.motion.y);

	return MousePosition;

}