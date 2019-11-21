#pragma once 

#include "SDL_stdafx.h"

class Color {

public:

	static SDL_Color getColor(int r, int g, int b, int a = 255) {

		SDL_Color _color;

		_color.r = r;
		_color.g = g;
		_color.b = b;
		_color.a = a;

		return _color;

	}

	static SDL_Color GREEN() { return getColor(0, 128, 0); }

};