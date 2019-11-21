#pragma once 

#include "stdafx.h"
#include "SDL_stdafx.h"

class Vector2 {

public:

	float x, y;

	Vector2() : x{ 0 }, y{0} {}
	Vector2(float _x, float _y) : x{ _x }, y{ _y }{}

	Vector2 operator+(const Vector2 _vec);
	Vector2 operator-(const Vector2 _vec);
	Vector2 operator*(const float _ratio);

	Vector2 operator+=(const Vector2 _vec);
	Vector2 operator-=(const Vector2 _vec);
	Vector2 operator*=(float _ratio);

	Vector2 zero() { return Vector2(0, 0); }

	SDL_Rect toRect();

	float Distance(Vector2 _vec);
	float sqrDistance(Vector2 _vec);

};