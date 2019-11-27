#pragma once 

#include "SDL_stdafx.h"

///@brief SDL_Color 상수 값을 저장하는 class 입니다.
class Color {

public:

	static SDL_Color GREEN() { return { 0, 128, 0 }; } ///< 초록색
	static SDL_Color WHITE() { return {255, 255, 255}; } ///< 빨강색

};