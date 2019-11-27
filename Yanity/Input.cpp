#include "Input.h"

SDL_Event Event;

Vector2 MousePosition;

std::map<int, bool> Mousestates, Keystates;

const Uint8* Key;

void Input::Handler() {

	Key = SDL_GetKeyboardState(NULL);

	for (int m = 1; m <= 3; m++)
		Mousestates[m] = (SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(m));

}

bool Input::getKeyDown(int _key) 
{ 

	Key = SDL_GetKeyboardState(NULL);

	return Key[_key];
}

bool Input::getMouseLeftClickDown() {

	return (!Mousestates[SDL_BUTTON_LEFT] && (SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_LEFT)));

}

bool Input::getMouseLeftClick() {

	return (Mousestates[SDL_BUTTON_LEFT] && (SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_LEFT)));

}

bool Input::getMouseLeftClickUp() 
{

	return (Mousestates[SDL_BUTTON_LEFT] && !(SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_LEFT)));

}

bool Input::getMouseRightClickDown() { 

	return (!Mousestates[SDL_BUTTON_RIGHT] && (SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_RIGHT)));

}

bool Input::getMouseRightClick() {

	return (Mousestates[SDL_BUTTON_RIGHT] && (SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_RIGHT)));

}

bool Input::getMouseRightClickUp() {

	return (Mousestates[SDL_BUTTON_RIGHT] && !(SDL_GetMouseState(NULL, NULL) & SDL_BUTTON(SDL_BUTTON_RIGHT)));

}

Vector2 Input::getMousePosition() {

	if (!SDL_PollEvent(&Event)) return MousePosition;

	if (Event.type != SDL_MOUSEMOTION) return MousePosition;

	MousePosition = Vector2(Event.motion.x, Event.motion.y);

	return MousePosition;

}