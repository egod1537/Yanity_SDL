#pragma once

#include "Vector2.h"
#include "SDL_stdafx.h"

///@brief Window Form을 관리해주는 class입니다.
class WindowManager {

public:

	WindowManager() {}

	static WindowManager& getInstance(); ///< Singleton Method

	///@brief Window Form의 이름을 정해줍니다.
	///@param string : 이름
	void SetWindowName(std::string);
	///@brief Window Form의 아이콘을 정해줍니다.
	///@param SDL_Surface : 아이콘의 Surface
	void SetWindowIcon(SDL_Surface*);
	///@brief Window Form의 크기를 정해줍니다.
	///@param Vector2 : 크기 x, y
	void SetWindowSize(Vector2);

};