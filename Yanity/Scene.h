#pragma once

#include "GameObject.h"

class GameObject;

///@brief Gameobject를 포괄하고 있는 화면의 class입니다.
class Scene {

public:

	std::string name = ""; ///< Scene의 이름

	bool isActive = false; ///< 활성화 여부

	std::vector<GameObject*> listGameObject; ///< GameobjectList입니다.

	Scene();

	void Enable(); ///< 활성화
	void Disable(); /// 비활성화

	void AddGameObject(GameObject* gameobject); /// GameObject 추가하기

};