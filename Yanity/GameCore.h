#pragma once

#include "stdafx.h"
#include "lib_stdafx.h"
#include "SDL_stdafx.h"

#include "GameObject.h"
#include "GraphicCore.h"
#include "WindowManager.h"

#include "Vector2.h"
#include "Lib.h"
#include "PhysX.h"

class GameCore {

public:

	GameCore() {}

	static GameCore& getInstance();

	void Init();

};