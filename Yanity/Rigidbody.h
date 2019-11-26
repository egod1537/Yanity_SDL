#pragma once

#include "Component.h"

///@brief GameObject�� ������ �����Ű�� Component�Դϴ�.
///@todo ���� �̱����� �׸���� ����.
/// - Box Colider vs Sphere Colider �浹 ó��
/// - �ݻ� ����
/// - �߷�
class Rigidbody : public Component{

public:

	bool Collision = false; ///< ���� �浹 ����

	Rigidbody() {}

	///@brief ������ ������ GameObject �̵��ϴ� �Լ�
	///@param Vector2 : �̵��� Vector2
	void MovePosition(Vector2);

};