#include "GameObject.h"

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

void GameObject::AddComponent(Component* _component) {

	_component->gameobject = this;
	this->Components.push_back(_component);

}

Vector2 GameObject::getLocalPosition() { return transform.Position; }
float GameObject::getLocalRotation() { return transform.Rotation; }
Vector2 GameObject::getLocalScale() { return transform.Scale; }

Vector2 GameObject::getPosition() 
{

	if (Parent == nullptr) return getLocalPosition();

	return getLocalPosition() + Parent->transform.Position;

}
float GameObject::getRotation()
{

	if (Parent == nullptr) return getLocalRotation();

	return getLocalRotation() + Parent->transform.Rotation;

}
Vector2 GameObject::getScale()
{

	if (Parent == nullptr) return getLocalScale();

	return getLocalScale() + Parent->transform.Scale;

}