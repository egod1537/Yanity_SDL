#pragma once

#include "Vector2.h"

///@brief Obejct���� ��ġ, ����, ũ�� ������ ���� struct�Դϴ�.
typedef struct Transform {

	Vector2 Position, ///< Object�� ��ġ
			Scale; ///< Object�� ũ��
	float Rotation; ///< Object�� ����

	///@brief Transform�� ������ �Դϴ�. ���ڰ� ��������� �˾Ƽ� �ʱ�ȭ�� �˴ϴ�.
	Transform() : Position{ Vector2(0, 0) }, Rotation{ 0 }, Scale{ Vector2(1, 1) }{}
	///@brief Transform�� �������Դϴ�. ���� ���� ������ �� �ֽ��ϴ�.
	///@param Vector2 _pos : Object�� ��ġ
	///@param float _angle : Object�� ����
	///@param Vector2 _scale : Object�� ũ��
	Transform(Vector2 _pos, float _angle, Vector2 _scale)
		: Position{ _pos }, Rotation{ _angle }, Scale{ _scale }{}

}Transform;