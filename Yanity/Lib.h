#pragma once

#include "stdafx.h"
#include "Vector2.h"

///@brief ���������� ���Ǵ� ����� ���� class �Դϴ�.
class Lib {

public:

	Lib() {}

	///@brief vector�� ��ȯ��ŵ�ϴ�.
	///@param T : vector�� Ÿ��
	///@param vector<T> : ��ȸ�� vector
	///@param function<void(T)> ��ȸ�ϸ鼭 ���ҿ� �ൿ�� �Լ�
	template<typename T>
	static void Lib_ItrVector(std::vector<T> _vector, std::function<void(T)> callback) {

		int end = _vector.size();

		for (int i = 0; i < end; i++) callback((_vector[i]));

	}

	///@brief ���� ��ǥ�� ȭ�� ��ǥ�� �ٲپ� �ش�.
	///@param Vector2 : �ٲ� Vector2
	///@return Vector : ��ȯ�� Vector2
	static Vector2 ViewPortPosToScreenPos(Vector2);
	///@brief ȭ�� ��ǥ�� ���� ��ǥ�� �ٲپ� �ش�.
	///@param Vector2 : �ٲ� Vector2
	///@return Vector : ��ȯ�� Vector2
	static Vector2 ScreenPosToViewPortPos(Vector2);

	///@brief �� Vector2�� SDL_Rect�� ��ȯ�Ѵ�.
	///@param Vector2, Vector2 : �� Vector2
	///@return Vector2 : ��ȯ�� SDL_Rect
	static SDL_Rect Vector2ToRect(Vector2, Vector2);

};