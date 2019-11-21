#pragma once

#include "lib_stdafx.h"
#include "Component.h"
#include "stdafx.h"
#include "Transform.h"

class Component;

class GameObject {

public:

	bool isEnable = true;

	GameObject *Parent;
	Transform transform;

	std::vector<Component*> Components;

	class Builder {

	public:

		Transform _transform;
		GameObject *_parent;

		Builder Init() { _transform = Transform(Vector2(0, 0), 0, Vector2(1, 1)); return *this; }
		Builder SetPosition(Vector2 _position) { _transform.Position = _position; return *this; }
		Builder SetRotation(float _rotation) { _transform.Rotation = _rotation; return *this; }
		Builder SetScale(Vector2 _scale) { _transform.Scale = _scale; return *this; }
		Builder SetTransform(Transform _transform) { _transform = _transform; return *this; }
		Builder SetParent(GameObject* _gameobject) { _parent = _gameobject; return *this; }

		GameObject Build() { return GameObject(*this); }

	};

	GameObject() : transform{ Transform(Vector2(0, 0), 0, Vector2(1, 1)) } {}
	GameObject(Builder _builder) 
	{

		this->transform = _builder._transform;
		this->Parent = _builder._parent;

	}

	void RunAwake();
	void RunStart();
	void RunUpdate();
	void RunDestroy();

	void RunOnEnable();

	void Enable() { isEnable = true; }
	void Disable() { isEnable = false; }

	void AddComponent(Component* _component);

	template<typename T>
	T GetComponenet() {

		int length = Components.size();

		T _comp;
		for (int i = 0; i < length; i++) {

			_comp = dynamic_cast<T>(Components[i]);

			if (_comp) return _comp;
			
		}

		return NULL;

	}

	Vector2 getLocalPosition();
	float getLocalRotation();
	Vector2 getLocalScale();

	Vector2 getPosition();
	float getRotation();
	Vector2 getScale();

};