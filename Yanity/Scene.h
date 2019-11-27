#pragma once

#include "GameObject.h"

class GameObject;

///@brief Gameobject�� �����ϰ� �ִ� ȭ���� class�Դϴ�.
class Scene {

public:

	std::string name = ""; ///< Scene�� �̸�

	bool isActive = false; ///< Ȱ��ȭ ����

	std::vector<GameObject*> listGameObject; ///< GameobjectList�Դϴ�.

	Scene();

	void Enable(); ///< Ȱ��ȭ
	void Disable(); /// ��Ȱ��ȭ

	void AddGameObject(GameObject* gameobject); /// GameObject �߰��ϱ�

};