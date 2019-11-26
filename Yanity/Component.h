#pragma once

#include "stdafx.h"
#include "GameObject.h"

class GameObject;
class Colider;

///@brief Gameobject에 기능을 수행하는 단위입니다.
class Component {

public:

	GameObject* gameobject; ///< Component가 연결되어있는 Gameobject

	bool isEnable = true; ///< Component의 활성화 여부

	Component() {}

	virtual void Awake() {} ///< 오브젝트가 초기화 될 때 실행되는 callback Method
	virtual void Start() {} ///< Component가 시작할 때 실행되는 Callback Method
	virtual void OnEnable() {} ///< Component가 활성화 될 때 실행되는 Callback Method
	virtual void Update() {} ///< Component가 Frame Upadte 될 때 실행되는 Callback Method
	virtual void Destory() {} ///< Component가 제거될 때 실행되는 Callback Method

	virtual void OnColiderEnter(Colider*) {} ///< Colider Component에 다른 Colider가 물리적인 충돌을 시작했을 때 실행되는 Callback Method
	virtual void OnColiderStay(Colider*) {} ///< Colider Component에 다른 Colider가 물리적인 충돌을 진행하고 있을 때 실행되는 Callback Method
	virtual void OnColiderExit(Colider*) {} ///< Colider Component에 다른 Colider가 물리적인 충돌을 끌낼 때 실행되는 Callback Method

	virtual void OnTriggerEnter(Colider*) {} ///< Colider Component에 다른 Colider가 충돌을 시작했을 때 실행되는 Callback Method
	virtual void OnTriggerStay(Colider*) {} ///< Colider Component에 다른 Colider가 충돌을 진행하고 있을 때 실행되는 Callback Method
	virtual void OnTriggerExit(Colider*) {} ///< Colider Component에 다른 Colider가 충돌을 끌낼 때 실행되는 Callback Method

	void Enable() { isEnable = true; OnEnable(); } ///< Component 활성화 함수
	void Disable() { isEnable = false; }; ///< Component 비활성화 함수

};