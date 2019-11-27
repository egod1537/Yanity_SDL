#pragma once

#include "stdafx.h"
#include "Scene.h"

class GameObject;

///@brief Yanity�� �����ֱ⸦ �����ϴ� Core �Դϴ�.
class GameCore {

public:

	bool Power = true,
		 isActive = true; ///< Core Ȱ��ȭ ����

	float PhysX_updateMs = 6, ///< PhysX Thread Update �ֱ�(ms)
		  Input_updateMs = 1; ///< Input Thread Update �ֱ�(ms)

	std::list<Scene*> list_Scene; ///< SceneList�Դϴ�.

	GameCore() {}

	static GameCore& getInstance(); ///< Singleton Method

	void Init(); ///< GameCore�� �ʱ�ȭ���ݴϴ�.

	void RunSystem(std::vector<GameObject*>); ///< Yanity �� �����ָ� �����մϴ�.W

	void RunPhysX(); ///< PhysX Thread�� �����մϴ�.
	void RunInput(); ///< Input Thread�� �����մϴ�.

};