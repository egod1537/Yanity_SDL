#pragma once

#include "Component.h"

///@brief GameObject에 물리를 적용시키는 Component입니다.
///@todo 아직 미구현한 항목들이 많다.
/// - Box Colider vs Sphere Colider 충돌 처리
/// - 반사 벡터
/// - 중력
class Rigidbody : public Component{

public:

	bool Collision = false; ///< 현재 충돌 상태

	Rigidbody() {}

	///@brief 물리를 포함한 GameObject 이동하는 함수
	///@param Vector2 : 이동할 Vector2
	void MovePosition(Vector2);

};