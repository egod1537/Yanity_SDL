#include "PlayerController.h"

void PlayerController::Update() {

	Rigidbody *rig = gameobject->GetComponenet<Rigidbody*>();

	if (rig == nullptr) return;

	if (Input::getKeyDown(SDLK_w)) rig->MovePosition(gameobject->transform.Position + Vector2(0, -10));

	if (Input::getKeyDown(SDLK_a)) rig->MovePosition(gameobject->transform.Position + Vector2(-10, 0));

	if (Input::getKeyDown(SDLK_s)) rig->MovePosition(gameobject->transform.Position + Vector2(0, 10));

	if (Input::getKeyDown(SDLK_d)) rig->MovePosition(gameobject->transform.Position + Vector2(10, 0));

}