#pragma once

#include "Transform.h"

class Component;
class Colider;

///< Transform, Component를 가지고 있는 Object입니다.
class GameObject {

public:

	bool isEnable = true; ///< Gameobject 활성화 여부

	std::string Name; ///< Gameobject의 이름

	GameObject *Parent; ///< Gameobject의 부모
	Transform transform; ///< Gameobject의 Transform

	std::vector<Component*> Components; ///< Gameobect와 연결된 Components
	
	///@brief Gameobject의 Builder 
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

	///@brief Gameobject의 생성자
	GameObject() : transform{ Transform(Vector2(0, 0), 0, Vector2(1, 1)) } {}
	///@brief Gameobject Builder class 생성자
	GameObject(Builder _builder) 
	{

		this->transform = _builder._transform;
		this->Parent = _builder._parent;
		this->Name = _builder._name;

	}

	///@brief Component의 Awake 실행합니다.
	void RunAwake(); 
	///@brief Component의 Start 실행합니다.
	void RunStart();
	///@brief Component의 Upadte 실행합니다.
	void RunUpdate();
	///@brief Component의 Destory 실행합니다.
	void RunDestroy();

	///@brief Component의 OnEnable 실행합니다.
	void RunOnEnable();

	///@breif Component의 OnColiderEnter 실행합니다.
	///@param Colider* : 충돌한 Colider
	void RunOnColiderEnter(Colider*);
	///@breif Component의 OnColiderStay 실행합니다.
	///@param Colider* : 충돌한 Colider
	void RunOnColiderStay(Colider*);
	///@breif Component의 OnColiderExit 실행합니다.
	///@param Colider* : 충돌한 Colider
	void RunOnColiderExit(Colider*);

	///@breif Component의 OnTriggerEnter 실행합니다.
	///@param Colider* : 충돌한 Colider
	void RunOnTriggerEnter(Colider*);
	///@breif Component의 OnTriggerStay 실행합니다.
	///@param Colider* : 충돌한 Colider
	void RunOnTriggerStay(Colider*);
	///@breif Component의 OnTriggerExit 실행합니다.
	///@param Colider* : 충돌한 Colider
	void RunOnTriggerExit(Colider*);

	void Enable() { isEnable = true; } ///< Gameobject 활성화
	void Disable() { isEnable = false; } ///< Gameobject 비활성화

	///@brief Gameobject에 Component를 연결합니다.
	///@param Component* : 추가할 Component
	void AddComponent(Component*);

	///@brief Gameobjct와 연결된 Component를 가져옵니다.
	///@param T : 가져올 Component의 타입
	///@return T : 가져온 Component, NULL : 가져오기 실패
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

	///@brief Gameobject의 고유 좌표를 가져옵니다.
	///@return Gameobject의 고유 좌표
	Vector2 getLocalPosition();
	///@brief Gameobject의 고유 좌표를 설정합니다.
	///@param Vector2 : 설정할 Vector2
	void setLocalPosition(Vector2);

	///@brief Gameobject의 고유 각도를 가져옵니다.
	///@return Gameobject의 고유 각도
	float getLocalRotation();
	///@brief Gameobject의 고유 각도를 설정합니다.
	///@param float : 설정할 각도
	void setLocalRotation(float);

	///@brief Gameobject의 고유 크기를 가져옵니다.
	///@return Gameobject의 고유 크기
	Vector2 getLocalScale();
	///@brief Gameobject의 고유 크기를 설정합니다.
	///@param Vector2 : 설정할 Vector2
	void setLocalScale(Vector2);

	///@brief Gameobject의 화면 좌표를 가져옵니다.
	///@return Vector2 : Gameobject의 화면 좌표
	Vector2 getPosition();
	///@brief Gameobject의 화면 좌표를 설정합니다.
	///@param Vector2 : 설정할 Vector2
	void setPosition(Vector2);

	///@brief Gameobject의 화면에서의 각도를 가져옵니다.
	///@return float : Gameobject의 화면에서의 각도
	float getRotation();
	///@brief Gameobject의 화면에서의 각도를 설정합니다.
	///@param float : 설정할 각도
	void setRotation(float);

	///@brief Gameobject의 화면 크기를 가져옵니다.
	///@return Vector2 : Gameobject의 화면 크기
	Vector2 getScale();
	///@brief Gameobject의 화면 크기를 설정합니다.
	///@param Vector2 : 설정할 Vector2
	void setScale(Vector2);

};