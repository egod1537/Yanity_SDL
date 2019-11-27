#include "Scene.h"

#include "Lib.h"
#include "GameObject.h"
#include "GraphicCore.h"
#include "Input.h"
#include "PhysX.h"
#include "GameCore.h"

Scene::Scene() 
{

	GameCore::getInstance().list_Scene.push_back(this);

}

void Scene::Enable() {

	isActive = true;

	GameCore::getInstance().RunSystem(listGameObject);

}
void Scene::Disable() {

	isActive = false;
	GameCore::getInstance().isActive = false;

	Lib::Lib_ItrVector<GameObject*>(
		listGameObject,
		[](GameObject* callback)
		{
			callback->RunDestroy();
		}
	);

}

void Scene::AddGameObject(GameObject* gameobject) { listGameObject.push_back(gameobject); }