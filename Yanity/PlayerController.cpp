#include "PlayerController.h"

void PlayerController::Update() {

	if (PhysX::isCollision(gameobject->transform.Position)) return;

	if (Input::getKeyDown(SDLK_w))gameobject->transform.Position += Vector2(0, -10);

	if (Input::getKeyDown(SDLK_a)) gameobject->transform.Position += Vector2(-10, 0);

	if (Input::getKeyDown(SDLK_s))gameobject->transform.Position += Vector2(0, 10);

	if (Input::getKeyDown(SDLK_d))gameobject->transform.Position += Vector2(10, 0);

}