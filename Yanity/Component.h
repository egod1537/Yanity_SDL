#pragma once

#include "stdafx.h"
#include "GameObject.h"

class GameObject;
class Colider;

///@brief Gameobject�� ����� �����ϴ� �����Դϴ�.
class Component {

public:

	GameObject* gameobject; ///< Component�� ����Ǿ��ִ� Gameobject

	bool isEnable = true; ///< Component�� Ȱ��ȭ ����

	Component() {}

	virtual void Awake() {} ///< ������Ʈ�� �ʱ�ȭ �� �� ����Ǵ� callback Method
	virtual void Start() {} ///< Component�� ������ �� ����Ǵ� Callback Method
	virtual void OnEnable() {} ///< Component�� Ȱ��ȭ �� �� ����Ǵ� Callback Method
	virtual void Update() {} ///< Component�� Frame Upadte �� �� ����Ǵ� Callback Method
	virtual void Destory() {} ///< Component�� ���ŵ� �� ����Ǵ� Callback Method

	virtual void OnColiderEnter(Colider*) {} ///< Colider Component�� �ٸ� Colider�� �������� �浹�� �������� �� ����Ǵ� Callback Method
	virtual void OnColiderStay(Colider*) {} ///< Colider Component�� �ٸ� Colider�� �������� �浹�� �����ϰ� ���� �� ����Ǵ� Callback Method
	virtual void OnColiderExit(Colider*) {} ///< Colider Component�� �ٸ� Colider�� �������� �浹�� ���� �� ����Ǵ� Callback Method

	virtual void OnTriggerEnter(Colider*) {} ///< Colider Component�� �ٸ� Colider�� �浹�� �������� �� ����Ǵ� Callback Method
	virtual void OnTriggerStay(Colider*) {} ///< Colider Component�� �ٸ� Colider�� �浹�� �����ϰ� ���� �� ����Ǵ� Callback Method
	virtual void OnTriggerExit(Colider*) {} ///< Colider Component�� �ٸ� Colider�� �浹�� ���� �� ����Ǵ� Callback Method

	void Enable() { isEnable = true; OnEnable(); } ///< Component Ȱ��ȭ �Լ�
	void Disable() { isEnable = false; }; ///< Component ��Ȱ��ȭ �Լ�

};