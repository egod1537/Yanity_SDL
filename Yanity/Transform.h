#pragma once

#include "Vector2.h"

///@brief Obejct에서 위치, 각도, 크기 정보를 가진 struct입니다.
typedef struct Transform {

	Vector2 Position, ///< Object의 위치
			Scale; ///< Object의 크기
	float Rotation; ///< Object의 각도

	///@brief Transform의 생성자 입니다. 인자가 비어있으면 알아서 초기화가 됩니다.
	Transform() : Position{ Vector2(0, 0) }, Rotation{ 0 }, Scale{ Vector2(1, 1) }{}
	///@brief Transform의 생성자입니다. 직접 값을 대입할 수 있습니다.
	///@param Vector2 _pos : Object의 위치
	///@param float _angle : Object의 각도
	///@param Vector2 _scale : Object의 크기
	Transform(Vector2 _pos, float _angle, Vector2 _scale)
		: Position{ _pos }, Rotation{ _angle }, Scale{ _scale }{}

}Transform;