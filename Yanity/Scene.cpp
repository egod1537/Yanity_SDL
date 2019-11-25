#include "Scene.h"

#include "Lib.h"
#include "GameObject.h"
#include "GraphicCore.h"
#include "Input.h"
#include "PhysX.h"
#include "GameCore.h"

void Scene::Enable() {

	isActive = true;

	GameCore::getInstance().RunSystem(listGameObject);

}
void Scene::Disable() {

	isActive = false;

	Lib::Lib_ItrVector<GameObject*>(
		listGameObject,
		[](GameObject* callback)
		{
			callback->RunDestroy();
		}
	);

}

void Scene::AddGameObject(GameObject* gameobject) { listGameObject.push_back(gameobject); }