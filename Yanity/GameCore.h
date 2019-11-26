#pragma once

#include "stdafx.h"

class GameObject;

///@brief Yanity�� �����ֱ⸦ �����ϴ� Core �Դϴ�.
class GameCore {

public:

	bool isActive = false; ///< Core Ȱ��ȭ ����

	float PhysX_updateMs = 6, ///< PhysX Thread Update �ֱ�(ms)
		  Input_updateMs = 6; ///< Input Thread Update �ֱ�(ms)

	GameCore() {}

	static GameCore& getInstance(); ///< Singleton Method

	void Init(); ///< GameCore�� �ʱ�ȭ���ݴϴ�.

	void RunSystem(std::vector<GameObject*>); ///< Yanity �� �����ָ� �����մϴ�.

	void RunPhysX(); ///< PhysX Thread�� �����մϴ�.
	void RunInput(); ///< Input Thread�� �����մϴ�.

};