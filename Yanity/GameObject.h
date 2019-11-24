#pragma once

#include "Transform.h"

class Component;
class Colider;

class GameObject {

public:

	bool isEnable = true;

	std::string Name;

	GameObject *Parent;
	Transform transform;

	std::vector<Component*> Components;

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

	GameObject() : transform{ Transform(Vector2(0, 0), 0, Vector2(1, 1)) } {}
	GameObject(Builder _builder) 
	{

		this->transform = _builder._transform;
		this->Parent = _builder._parent;
		this->Name = _builder._name;

	}

	void RunAwake();
	void RunStart();
	void RunUpdate();
	void RunDestroy();

	void RunOnEnable();

	void RunOnColiderEnter(Colider*);
	void RunOnColiderStay(Colider*);
	void RunOnColiderExit(Colider*);

	void RunOnTriggerEnter(Colider*);
	void RunOnTriggerStay(Colider*);
	void RunOnTriggerExit(Colider*);

	void Enable() { isEnable = true; }
	void Disable() { isEnable = false; }

	void AddComponent(Component* _component);

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

	Vector2 getLocalPosition();
	void setLocalPosition(Vector2);

	float getLocalRotation();
	void setLocalRotation(float);

	Vector2 getLocalScale();
	void setLocalScale(Vector2);

	Vector2 getPosition();
	void setPosition(Vector2);

	float getRotation();
	void setRotation(float);

	Vector2 getScale();
	void setScale(Vector2);

};