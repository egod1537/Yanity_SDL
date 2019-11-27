#pragma once

#include "stdafx.h"
#include "Scene.h"

class GameObject;

///@brief Yanity의 생애주기를 관리하는 Core 입니다.
class GameCore {

public:

	bool Power = true,
		 isActive = true; ///< Core 활성화 여부

	float PhysX_updateMs = 6, ///< PhysX Thread Update 주기(ms)
		  Input_updateMs = 1; ///< Input Thread Update 주기(ms)

	std::list<Scene*> list_Scene; ///< SceneList입니다.

	GameCore() {}

	static GameCore& getInstance(); ///< Singleton Method

	void Init(); ///< GameCore를 초기화해줍니다.

	void RunSystem(std::vector<GameObject*>); ///< Yanity 의 생애주를 실행합니다.W

	void RunPhysX(); ///< PhysX Thread를 실행합니다.
	void RunInput(); ///< Input Thread를 실행합니다.

};