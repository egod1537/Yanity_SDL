#pragma once 

#include "stdafx.h"
#include "SDL_stdafx.h"

///@brief Vector2를 표현하는 class입니다.
class Vector2 {

public:

	float x, y;

	Vector2() : x{ 0 }, y{0} {}
	Vector2(float _x, float _y) : x{ _x }, y{ _y }{}

	Vector2 operator+(const Vector2 _vec); ///< 벡터의 덧셈
	Vector2 operator-(const Vector2 _vec); ///< 벡터의 뺄셈
	Vector2 operator*(const float _ratio); ///< 벡터의 곱셈

	Vector2 operator+=(const Vector2 _vec); ///< 벡터의 덧셈 복합대입 연산자
	Vector2 operator-=(const Vector2 _vec); ///< 벡터의 뺄셈 복합대입 연산자
	Vector2 operator*=(float _ratio); ///< 벡터의 곱셈 복합대입 연산자

	Vector2 zero() { return Vector2(0, 0); } ///< 벡터 제로
	
	///@brief 두 Vector2 간의 거리를 구합니다.
	///@param Vector2 : 다른 Vector2
	///@return float : 제곱근한 상태로 거리를 반환합니다.
	float Distance(Vector2 _vec);
	///@brief 두 Vector2 간의 거리를 구합니다. 제곱근을 하지 않습니다.
	///@param Vector2 : 다른 Vector2
	///@return float : 제곱근하지 않은 상태론 거리를 반환합니다.
	float sqrDistance(Vector2 _vec);

};