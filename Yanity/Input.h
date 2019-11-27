#pragma once

#include "SDL_stdafx.h"
#include "Vector2.h"

///@brief Input�� ���� Ŭ���� �Դϴ�.
class Input {

public:

	Input() {}

	static void Handler(); ///< Input Event�� �ǽð����� �����մϴ�

	///@brief Keyboard�� �����ִ��� Ȯ���մϴ�.
	///@param int : Ȯ���ϰ� ���� Ű�� SDL_SCANCODE ����
	///@return true ������ �ִ� | false ������ �ʰ� �ִ�.
	static bool getKeyDown(int);

	///@brief ���콺 ��Ŭ���� ������ �� Ȯ���մϴ�.
	///@return true : ���ȴ� | false : ������ �ʾҴ�.
	static bool getMouseLeftClickDown();
	///@brief ���콺 ��Ŭ���� ������ �ִ� �� Ȯ���մϴ�.
	///@return true : ������ �ִ� | false : ������ ���� �ʴ�.
	static bool getMouseLeftClick();
	///@brief ���콺 ��Ŭ���� ������ �� Ȯ���մϴ�.
	///@return true : �ô� | false : ���� �ʾҴ�.
	static bool getMouseLeftClickUp();

	///@brief ���콺 ��Ŭ���� ������ �� Ȯ���մϴ�.
	///@return true : ���ȴ� | false : ������ �ʾҴ�.
	static bool getMouseRightClickDown();
	///@brief ���콺 ��Ŭ���� ������ �ִ� �� Ȯ���մϴ�.
	///@return true : ������ �ִ� | false : ������ ���� �ʴ�.
	static bool getMouseRightClick();
	///@brief ���콺 ��Ŭ���� ������ �� Ȯ���մϴ�.
	///@return true : �ô� | false : ���� �ʾҴ�.
	static bool getMouseRightClickUp();

	///@brief ���� ���콺�� ��ġ�� �����ɴϴ�.
	///@return Vector2 : ���� ���콺 ��ġ
	static Vector2 getMousePosition();

};