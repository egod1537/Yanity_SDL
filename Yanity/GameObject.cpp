#include "GameObject.h"

#include "Lib.h"
#include "Component.h"

void GameObject::RunAwake() 
{

	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
		{
			if(isEnable) if(_comp->isEnable) _comp->Awake();
		});

	GameObject::RunOnEnable();

}
void GameObject::RunStart() 
{ 
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp) 
		{
			if (isEnable)if (_comp->isEnable)_comp->Start();
		});
}
void GameObject::RunUpdate() 
{

	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
		{
			if (isEnable)if (_comp->isEnable)_comp->Update();
		});

}
void GameObject::RunDestroy() 
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
		{
			if (isEnable)if (_comp->isEnable)_comp->Destory();
		});
}

void GameObject::RunOnEnable()
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[](Component* _comp)
		{
			if (_comp->isEnable)_comp->OnEnable();
		});
}

void GameObject::RunOnColiderEnter(Colider* other)
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
	{
		if (isEnable)if (_comp->isEnable)_comp->OnColiderEnter(other);
	});
}
void GameObject::RunOnColiderStay(Colider* other)
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
	{
		if (isEnable)if (_comp->isEnable)_comp->OnColiderStay(other);
	});
}
void GameObject::RunOnColiderExit(Colider* other)
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
	{
		if (isEnable)if (_comp->isEnable)_comp->OnColiderExit(other);
	});
}

void GameObject::RunOnTriggerEnter(Colider* other)
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
	{
		if (isEnable)if (_comp->isEnable)_comp->OnTriggerEnter(other);
	});
}
void GameObject::RunOnTriggerStay(Colider* other)
{
	Lib::Lib_ItrVector<Component*>(
	Components,
	[=](Component* _comp)
	{
		if (isEnable)if (_comp->isEnable)_comp->OnTriggerStay(other);
	}
	);
}
void GameObject::RunOnTriggerExit(Colider* other)
{
	Lib::Lib_ItrVector<Component*>(
		Components,
		[=](Component* _comp)
	{
		if (isEnable)if (_comp->isEnable)_comp->OnTriggerExit(other);
	});
}

void GameObject::AddComponent(Component* _component) {

	_component->gameobject = this;
	this->Components.push_back(_component);

}

Vector2 GameObject::getLocalPosition() { return transform.Position; }
void GameObject::setLocalPosition(Vector2 _pos) { transform.Position = _pos; }

float GameObject::getLocalRotation() { return transform.Rotation; }
void GameObject::setLocalRotation(float _rotate) { transform.Rotation = _rotate; }

Vector2 GameObject::getLocalScale() { return transform.Scale; }
void GameObject::setLocalScale(Vector2 _scale) { transform.Scale = _scale; }

Vector2 GameObject::getPosition() 
{

	if (Parent == nullptr) return getLocalPosition();

	return getLocalPosition() + Parent->transform.Position;

}
void GameObject::setPosition(Vector2 _pos)
{

	if (Parent == nullptr) { setLocalPosition(_pos); return; }

	setLocalPosition(getLocalPosition() + Parent->transform.Position);

}

float GameObject::getRotation()
{

	if (Parent == nullptr) return getLocalRotation();

	return getLocalRotation() + Parent->transform.Rotation;

}
void GameObject::setRotation(float _rotate)
{

	if (Parent == nullptr) { setLocalRotation(_rotate); return; }

	setLocalRotation(getLocalRotation() + Parent->transform.Rotation);

}

Vector2 GameObject::getScale()
{

	if (Parent == nullptr) return getLocalScale();

	return getLocalScale() + Parent->transform.Scale;

}
void GameObject::setScale(Vector2 _scale)
{

	if (Parent == nullptr) { setLocalScale(_scale); return; }

	setLocalScale(getLocalScale() + Parent->transform.Scale);

}