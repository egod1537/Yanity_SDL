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

	/**
@fn GameCore& getInstance()
@brief test function
@date 2011/06/23
@author WooSeung Lee (fornamoo@gmail.com)
@param a ������ ����
@param b ������ ����
@return result�� ��� �� ���� 0�� ���� 1�� ����
@exception EACCES ���� ���� ����
@remark �� �Լ��� �׽�Ʈ�� �ռ��Դϴ�.
*/
	static GameCore& getInstance();

	void Init();

};