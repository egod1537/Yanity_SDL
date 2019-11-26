#pragma once

#include "Vector2.h"
#include "SDL_stdafx.h"

///@brief Window Form�� �������ִ� class�Դϴ�.
class WindowManager {

public:

	WindowManager() {}

	static WindowManager& getInstance(); ///< Singleton Method

	///@brief Window Form�� �̸��� �����ݴϴ�.
	///@param string : �̸�
	void SetWindowName(std::string);
	///@brief Window Form�� �������� �����ݴϴ�.
	///@param SDL_Surface : �������� Surface
	void SetWindowIcon(SDL_Surface*);
	///@brief Window Form�� ũ�⸦ �����ݴϴ�.
	///@param Vector2 : ũ�� x, y
	void SetWindowSize(Vector2);

};