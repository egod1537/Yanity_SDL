#pragma once

#include "GraphicCore.h"
#include "lib_stdafx.h"
#include "stdafx.h"
#include "SDL_stdafx.h"

class WindowManager {

public:

	WindowManager() {}

	static WindowManager& getInstance();

	void SetWindowName(std::string _name);
	void SetWindowIcon(SDL_Surface* _img);
	void SetWindowSize(Vector2 _vec);

};