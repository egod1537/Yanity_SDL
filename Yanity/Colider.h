#pragma once

#include "Component.h"
#include "Vector2.h"
#include "Lib.h"
#include "PhysX.h"
#include "Rigidbody.h"

class BoxColider;
class SphereColider;

///@brief �浹�� �����ϴ� ������ �������ִ� ������Ʈ �Դϴ�,
class Colider : public Component{

public:

	bool isTrigger = false, ///< ������ ������� �ʰ� �浹�� ó��
		 DebugMode = false; ///< ����� ��� Ȱ��ȭ

	///@brief �浹 Ȯ�� �� Colider Callback Method ����
	virtual void Collision() {}

	///@brief Vector2 Vertex�� BoxColider�� ���ԵǴ��� Ȯ��
	///@param Vector2 : Pos Ȯ���� ��
	///@return ���ԵǸ� true, �̿ܿ��� false
	virtual bool isCollision(Vector2) { return false; }
	///@brief BoxColider�� BoxColider�� ���ԵǴ��� Ȯ��
	///@param BoxColider* : ��� BoxColider*
	///@return ���ԵǸ� true, �̿ܿ��� false
	virtual bool isCollision(BoxColider*) { return false; }
	///@brief SphereColider�� BoxColider�� ���ԵǴ��� Ȯ��
	///@param SphereColider* : ��� SphereColider*
	///@return ���ԵǸ� true, �̿ܿ��� false
	virtual bool isCollision(SphereColider*) { return false; }

	///@brief Component�� OnColiderEnter, OnTriggerEnter ȣ��
	///@param Colider* : ȣ���� ����� Colider
	void RunOnEnter(Colider*);
	///@brief Component�� OnColiderStay, OnTriggerStay ȣ��
	///@param Colider* : ȣ���� ����� Colider
	void RunOnStay(Colider*);
	///@brief Component�� OnColiderExit, OnTriggerExit ȣ��
	///@param Colider* : ȣ���� ����� Colider
	void RunOnExit(Colider*);

	void Update() { Collision(); }

};