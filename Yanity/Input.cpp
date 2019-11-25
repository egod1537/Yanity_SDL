#include "Input.h"

SDL_Event Event;

Vector2 MousePosition;

const Uint8* Keystates;
bool Left = false;

void Input::Handler() {

	Keystates = SDL_GetKeyboardState(NULL);

	Left = SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_LEFT);

}

bool Input::getKeyDown(int _key) { return Keystates[_key]; }

bool Input::getMouseLeftClickDown() {return Left;}

bool Input::getMouseLeftClickUp() 
{

	std::cout << "Left : " << Left << ", State : " << (SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_LEFT)) << "\n";

	return (Left == true && SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_LEFT) == false);

}

bool Input::getMouseRightClickDown() { return SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_RIGHT); }

bool Input::getMouseRightClickUp() {return false;}

Vector2 Input::getMousePosition() {

	if (!SDL_PollEvent(&Event)) return MousePosition;

	if (Event.type != SDL_MOUSEMOTION) return MousePosition;

	MousePosition = Vector2(Event.motion.x, Event.motion.y);

	return MousePosition;

}