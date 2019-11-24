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

	SphereColider *bc1 = new SphereColider();

	Rigidbody *rg1 = new Rigidbody();

	TestColiderCheck *tcc = new TestColiderCheck();

	go1.AddComponent(rg1);
	go1.AddComponent(sr1);
	go1.AddComponent(pc);
	go1.AddComponent(bc1);
	go1.AddComponent(tcc);

	bc1->Radius = 25;
	bc1->DebugMode = true;

	#pragma endregion

	#pragma region go2

	GameObject go2 = gBuilder
		.Init()
		.SetName("g2")
		.SetPosition(Vector2(100, 0))
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer *sr2 = new SpriteRenderer("Player.png");

	SphereColider *bc2 = new SphereColider();

	Rigidbody *rg2 = new Rigidbody();

	TestColiderCheck *tcc1 = new TestColiderCheck();

	go2.AddComponent(sr2);
	go2.AddComponent(bc2);
	go2.AddComponent(rg2);
	go2.AddComponent(tcc1);

	bc2->Radius = 25;
	bc2->DebugMode = true;

	#pragma endregion

	#pragma region Sword

	GameObject sword = gBuilder
		.Init()
		.SetParent(&go1)
		.Build();

	SpriteRenderer *sword_s = new SpriteRenderer("sword.png");

	sword_s->Size = Vector2(8, 8);

	sword.AddComponent(sword_s);

	#pragma endregion

	scene1->AddGameObject(&go1);
	scene1->AddGameObject(&go2);
	//scene1->AddGameObject(&sword);
	//scene1->AddGameObject(&bg2);
	//scene1->AddGameObject(&bg);

	scene1->Enable();

	SDL_Quit();

	return 0;

}