#pragma once

#include "Transform.h"

class Component;
class Colider;

///< Transform, Component�� ������ �ִ� Object�Դϴ�.
class GameObject {

public:

	bool isEnable = true; ///< Gameobject Ȱ��ȭ ����

	std::string Name; ///< Gameobject�� �̸�

	GameObject *Parent; ///< Gameobject�� �θ�
	Transform transform; ///< Gameobject�� Transform

	std::vector<Component*> Components; ///< Gameobect�� ����� Components
	
	///@brief Gameobject�� Builder 
	class Builder {

	public:

		Transform _transform; 
		GameObject *_parent;
		std::string _name;

		Builder Init() { _transform = Transform(Vector2(0, 0), 0, Vector2(1, 1)); return *this; }
		Builder SetPosition(Vector2 _position) { _transform.Position = _position; return *this; }
		Builder SetRotation(float _rotation) { _transform.Rotation = _rotation; return *this; }
		Builder SetScale(Vector2 _scale) { _transform.Scale = _scale; return *this; }
		Builder SetTransform(Transform _transform) { _transform = _transform; return *this; }
		Builder SetParent(GameObject* _gameobject) { _parent = _gameobject; return *this; }
		Builder SetName(std::string _n) { _name = _n; return *this; }

		GameObject Build() { return GameObject(*this); }

	};

	///@brief Gameobject�� ������
	GameObject() : transform{ Transform(Vector2(0, 0), 0, Vector2(1, 1)) } {}
	///@brief Gameobject Builder class ������
	GameObject(Builder _builder) 
	{

		this->transform = _builder._transform;
		this->Parent = _builder._parent;
		this->Name = _builder._name;

	}

	///@brief Component�� Awake �����մϴ�.
	void RunAwake(); 
	///@brief Component�� Start �����մϴ�.
	void RunStart();
	///@brief Component�� Upadte �����մϴ�.
	void RunUpdate();
	///@brief Component�� Destory �����մϴ�.
	void RunDestroy();

	///@brief Component�� OnEnable �����մϴ�.
	void RunOnEnable();

	///@breif Component�� OnColiderEnter �����մϴ�.
	///@param Colider* : �浹�� Colider
	void RunOnColiderEnter(Colider*);
	///@breif Component�� OnColiderStay �����մϴ�.
	///@param Colider* : �浹�� Colider
	void RunOnColiderStay(Colider*);
	///@breif Component�� OnColiderExit �����մϴ�.
	///@param Colider* : �浹�� Colider
	void RunOnColiderExit(Colider*);

	///@breif Component�� OnTriggerEnter �����մϴ�.
	///@param Colider* : �浹�� Colider
	void RunOnTriggerEnter(Colider*);
	///@breif Component�� OnTriggerStay �����մϴ�.
	///@param Colider* : �浹�� Colider
	void RunOnTriggerStay(Colider*);
	///@breif Component�� OnTriggerExit �����մϴ�.
	///@param Colider* : �浹�� Colider
	void RunOnTriggerExit(Colider*);

	void Enable() { isEnable = true; } ///< Gameobject Ȱ��ȭ
	void Disable() { isEnable = false; } ///< Gameobject ��Ȱ��ȭ

	///@brief Gameobject�� Component�� �����մϴ�.
	///@param Component* : �߰��� Component
	void AddComponent(Component*);

	///@brief Gameobjct�� ����� Component�� �����ɴϴ�.
	///@param T : ������ Component�� Ÿ��
	///@return T : ������ Component, NULL : �������� ����
	template<typename T>
	T GetComponenet() {

		int length = Components.size();

		std::string cName = std::string(typeid(T).name());
		cName = cName.substr(0, cName.find('*') - 1);

		T _comp;
		for (int i = 0; i < length; i++) {

			_comp = static_cast<T>(Components[i]);

			if ((cName == typeid(*_comp).name())) return _comp;
			
		}

		return NULL;

	}

	///@brief Gameobject�� ���� ��ǥ�� �����ɴϴ�.
	///@return Gameobject�� ���� ��ǥ
	Vector2 getLocalPosition();
	///@brief Gameobject�� ���� ��ǥ�� �����մϴ�.
	///@param Vector2 : ������ Vector2
	void setLocalPosition(Vector2);

	///@brief Gameobject�� ���� ������ �����ɴϴ�.
	///@return Gameobject�� ���� ����
	float getLocalRotation();
	///@brief Gameobject�� ���� ������ �����մϴ�.
	///@param float : ������ ����
	void setLocalRotation(float);

	///@brief Gameobject�� ���� ũ�⸦ �����ɴϴ�.
	///@return Gameobject�� ���� ũ��
	Vector2 getLocalScale();
	///@brief Gameobject�� ���� ũ�⸦ �����մϴ�.
	///@param Vector2 : ������ Vector2
	void setLocalScale(Vector2);

	///@brief Gameobject�� ȭ�� ��ǥ�� �����ɴϴ�.
	///@return Vector2 : Gameobject�� ȭ�� ��ǥ
	Vector2 getPosition();
	///@brief Gameobject�� ȭ�� ��ǥ�� �����մϴ�.
	///@param Vector2 : ������ Vector2
	void setPosition(Vector2);

	///@brief Gameobject�� ȭ�鿡���� ������ �����ɴϴ�.
	///@return float : Gameobject�� ȭ�鿡���� ����
	float getRotation();
	///@brief Gameobject�� ȭ�鿡���� ������ �����մϴ�.
	///@param float : ������ ����
	void setRotation(float);

	///@brief Gameobject�� ȭ�� ũ�⸦ �����ɴϴ�.
	///@return Vector2 : Gameobject�� ȭ�� ũ��
	Vector2 getScale();
	///@brief Gameobject�� ȭ�� ũ�⸦ �����մϴ�.
	///@param Vector2 : ������ Vector2
	void setScale(Vector2);

};