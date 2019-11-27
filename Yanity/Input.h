#pragma once

#include "SDL_stdafx.h"
#include "Vector2.h"

///@brief Input에 관한 클래스 입니다.
class Input {

public:

	Input() {}

	static void Handler(); ///< Input Event를 실시간으로 감시합니다

	///@brief Keyboard가 눌려있는지 확인합니다.
	///@param int : 확인하고 싶은 키를 SDL_SCANCODE 형식
	///@return true 눌리고 있다 | false 눌리지 않고 있다.
	static bool getKeyDown(int);

	///@brief 마우스 왼클릭을 눌렀는 지 확인합니다.
	///@return true : 눌렸다 | false : 눌리지 않았다.
	static bool getMouseLeftClickDown();
	///@brief 마우스 왼클릭을 눌르고 있는 지 확인합니다.
	///@return true : 누르고 있다 | false : 누르고 있지 않다.
	static bool getMouseLeftClick();
	///@brief 마우스 왼클릭을 떼었는 지 확인합니다.
	///@return true : 뗐다 | false : 떼지 않았다.
	static bool getMouseLeftClickUp();

	///@brief 마우스 우클릭을 눌렀는 지 확인합니다.
	///@return true : 눌렸다 | false : 눌리지 않았다.
	static bool getMouseRightClickDown();
	///@brief 마우스 우클릭을 눌르고 있는 지 확인합니다.
	///@return true : 누르고 있다 | false : 누르고 있지 않다.
	static bool getMouseRightClick();
	///@brief 마우스 우클릭을 떼었는 지 확인합니다.
	///@return true : 뗐다 | false : 떼지 않았다.
	static bool getMouseRightClickUp();

	///@brief 현재 마우스의 위치를 가져옵니다.
	///@return Vector2 : 현재 마우스 위치
	static Vector2 getMousePosition();

};