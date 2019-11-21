#pragma once

#include "Vector2.h"

typedef struct Transform {

	Vector2 Position, Scale;
	float Rotation;

	Transform() : Position{ Vector2(0, 0) }, Rotation{ 0 }, Scale{ Vector2(1, 1) }{}
	Transform(Vector2 _pos, float _angle, Vector2 _scale)
		: Position{ _pos }, Rotation{ _angle }, Scale{ _scale }{}

}Transform;