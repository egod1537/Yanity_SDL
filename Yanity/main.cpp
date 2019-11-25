#include "GameEngine.h"

int main(int argc, char* args[]) {

	GameCore::getInstance().Init();

	Scene *scene1 = new Scene();

	GameObject::Builder gBuilder;

	#pragma region go1

	GameObject go1 = gBuilder
		.Init()
		.SetName("g1")
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer *sr1 = new SpriteRenderer("Player.png");

	PlayerController *pc = new PlayerController();

	BoxColider *bc1 = new BoxColider();

	Rigidbody *rg1 = new Rigidbody();

	TestColiderCheck *tcc = new TestColiderCheck();

	go1.AddComponent(rg1);
	go1.AddComponent(sr1);
	go1.AddComponent(pc);
	go1.AddComponent(bc1);
	go1.AddComponent(tcc);

	bc1->Scale = Vector2(50, 50);
	bc1->DebugMode = true;

	#pragma endregion

	#pragma region go2

	GameObject go2 = gBuilder
		.Init()
		.SetName("go2")
		.SetPosition(Vector2(100, 0))
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer *sr2 = new SpriteRenderer("Player.png");

	BoxColider *bc2 = new BoxColider();

	Rigidbody *rg2 = new Rigidbody();

	TestColiderCheck *tcc1 = new TestColiderCheck();

	go2.AddComponent(sr2);
	go2.AddComponent(bc2);
	go2.AddComponent(rg2);

	bc2->Scale = Vector2(50, 50);
	bc2->DebugMode = true;

	#pragma endregion

	#pragma region Sword

	GameObject sword = gBuilder
		.Init()
		.SetName("Sword1")
		.SetPosition(Vector2(-150, 0))
		.Build();

	SpriteRenderer *sword_s = new SpriteRenderer("sword.png");

	BoxColider *bc3 = new BoxColider();

	Rigidbody *rig3 = new Rigidbody();

	Button *btn = new Button();

	sword.AddComponent(sword_s);
	sword.AddComponent(btn);
	sword.AddComponent(bc3);
	sword.AddComponent(rig3);

	bc3->Scale = Vector2(50, 50);
	bc3->DebugMode = true;

	#pragma endregion

	#pragma region Sword

	GameObject sword1 = gBuilder
		.Init()
		.SetName("sword2")
		.SetPosition(Vector2(-150, 100))
		.Build();

	SpriteRenderer *sword_s2 = new SpriteRenderer("sword.png");

	BoxColider *bc4 = new BoxColider();

	Rigidbody *rig4 = new Rigidbody();

	Button *btn3 = new Button();

	sword1.AddComponent(sword_s2);
	sword1.AddComponent(btn3);
	sword1.AddComponent(bc4);
	sword1.AddComponent(rig4);

	bc4->Scale = Vector2(50, 50);
	bc4->DebugMode = true;

	#pragma endregion

	scene1->AddGameObject(&go1);

	scene1->AddGameObject(&sword1);
	scene1->AddGameObject(&sword);
	scene1->AddGameObject(&go2);

	scene1->Enable();

	SDL_Quit();

	return 0;

}