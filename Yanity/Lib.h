#pragma once

#include "stdafx.h"
#include "Vector2.h"

///@brief 공통적으로 사용되는 기능을 가진 class 입니다.
class Lib {

public:

	Lib() {}

	///@brief vector를 순환시킵니다.
	///@param T : vector의 타입
	///@param vector<T> : 순회할 vector
	///@param function<void(T)> 순회하면서 원소에 행동할 함수
	template<typename T>
	static void Lib_ItrVector(std::vector<T> _vector, std::function<void(T)> callback) {

		int end = _vector.size();

		for (int i = 0; i < end; i++) callback((_vector[i]));

	}

	///@brief 게임 좌표를 화면 좌표로 바꾸어 준다.
	///@param Vector2 : 바꿀 Vector2
	///@return Vector : 변환한 Vector2
	static Vector2 ViewPortPosToScreenPos(Vector2);
	///@brief 화면 좌표를 게임 좌표로 바꾸어 준다.
	///@param Vector2 : 바꿀 Vector2
	///@return Vector : 변환한 Vector2
	static Vector2 ScreenPosToViewPortPos(Vector2);

	///@brief 두 Vector2를 SDL_Rect로 변환한다.
	///@param Vector2, Vector2 : 두 Vector2
	///@return Vector2 : 변환한 SDL_Rect
	static SDL_Rect Vector2ToRect(Vector2, Vector2);

};