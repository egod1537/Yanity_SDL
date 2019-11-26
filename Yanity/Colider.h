#pragma once

#include "Component.h"
#include "Vector2.h"
#include "Lib.h"
#include "PhysX.h"
#include "Rigidbody.h"

class BoxColider;
class SphereColider;

///@brief 충돌을 감지하는 범위를 설정해주는 컴포넌트 입니다,
class Colider : public Component{

public:

	bool isTrigger = false, ///< 물리를 사용하지 않고 충돌만 처리
		 DebugMode = false; ///< 디버그 모드 활성화

	///@brief 충돌 확인 및 Colider Callback Method 실행
	virtual void Collision() {}

	///@brief Vector2 Vertex이 BoxColider에 포함되는지 확인
	///@param Vector2 : Pos 확인할 점
	///@return 포함되면 true, 이외에는 false
	virtual bool isCollision(Vector2) { return false; }
	///@brief BoxColider가 BoxColider에 포함되는지 확인
	///@param BoxColider* : 대상 BoxColider*
	///@return 포함되면 true, 이외에는 false
	virtual bool isCollision(BoxColider*) { return false; }
	///@brief SphereColider이 BoxColider에 포함되는지 확인
	///@param SphereColider* : 대상 SphereColider*
	///@return 포함되면 true, 이외에는 false
	virtual bool isCollision(SphereColider*) { return false; }

	///@brief Component의 OnColiderEnter, OnTriggerEnter 호출
	///@param Colider* : 호출할 대상의 Colider
	void RunOnEnter(Colider*);
	///@brief Component의 OnColiderStay, OnTriggerStay 호출
	///@param Colider* : 호출할 대상의 Colider
	void RunOnStay(Colider*);
	///@brief Component의 OnColiderExit, OnTriggerExit 호출
	///@param Colider* : 호출할 대상의 Colider
	void RunOnExit(Colider*);

	void Update() { Collision(); }

};