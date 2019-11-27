#pragma once 

#include "stdafx.h"
#include "SDL_stdafx.h"

///@brief Vector2�� ǥ���ϴ� class�Դϴ�.
class Vector2 {

public:

	float x, y;

	Vector2() : x{ 0 }, y{0} {}
	Vector2(float _x, float _y) : x{ _x }, y{ _y }{}

	Vector2 operator+(const Vector2 _vec); ///< ������ ����
	Vector2 operator-(const Vector2 _vec); ///< ������ ����
	Vector2 operator*(const float _ratio); ///< ������ ����

	Vector2 operator+=(const Vector2 _vec); ///< ������ ���� ���մ��� ������
	Vector2 operator-=(const Vector2 _vec); ///< ������ ���� ���մ��� ������
	Vector2 operator*=(float _ratio); ///< ������ ���� ���մ��� ������

	Vector2 zero() { return Vector2(0, 0); } ///< ���� ����
	
	///@brief �� Vector2 ���� �Ÿ��� ���մϴ�.
	///@param Vector2 : �ٸ� Vector2
	///@return float : �������� ���·� �Ÿ��� ��ȯ�մϴ�.
	float Distance(Vector2 _vec);
	///@brief �� Vector2 ���� �Ÿ��� ���մϴ�. �������� ���� �ʽ��ϴ�.
	///@param Vector2 : �ٸ� Vector2
	///@return float : ���������� ���� ���·� �Ÿ��� ��ȯ�մϴ�.
	float sqrDistance(Vector2 _vec);

};