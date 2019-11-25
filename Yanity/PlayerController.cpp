#include "PlayerController.h"

void PlayerController::Update() {

	Rigidbody *rig = gameobject->GetComponenet<Rigidbody*>();

	if (rig == nullptr) return;

	if (Input::getKeyDown(SDL_SCANCODE_W)) rig->MovePosition(gameobject->transform.Position + Vector2(0, -10));

	if (Input::getKeyDown(SDL_SCANCODE_A)) rig->MovePosition(gameobject->transform.Position + Vector2(-10, 0));

	if (Input::getKeyDown(SDL_SCANCODE_S)) rig->MovePosition(gameobject->transform.Position + Vector2(0, 10));

	if (Input::getKeyDown(SDL_SCANCODE_D)) rig->MovePosition(gameobject->transform.Position + Vector2(10, 0));

}