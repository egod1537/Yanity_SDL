#include "GameEngine.h"

int main(int argc, char* args[]) {

	GameCore::getInstance().Init();

	Scene *scene1 = new Scene();

	GameObject::Builder gBuilder;

	#pragma region Bg

	GameObject bg = gBuilder
		.Init()
		.Build();

	SpriteRenderer *sr2 = new SpriteRenderer("Dungeon/Dungeon1.png");

	sr2->Size = Vector2(960, 540);

	sr2->Depth = -1;

	bg.AddComponent(sr2);

	SpriteRenderer *temp = bg.GetComponenet<SpriteRenderer*>();

	std::cout << temp->Depth << "\n";

	#pragma endregion

	#pragma region go1

	GameObject go1 = gBuilder
		.Init()
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer *sr1 = new SpriteRenderer("Player.png");

	PlayerController *pc = new PlayerController();

	BoxColider *bc1 = new BoxColider();

	go1.AddComponent(sr1);
	go1.AddComponent(pc);
	go1.AddComponent(bc1);

	#pragma endregion

	#pragma region go1

	GameObject go4 = gBuilder
		.Init()
		.SetPosition(Vector2(100, 0))
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer *sr4 = new SpriteRenderer("Player.png");

	BoxColider *bc4 = new BoxColider();

	go4.AddComponent(sr4);
	go4.AddComponent(bc4);

	#pragma endregion

	#pragma region bg2

	GameObject bg2 = gBuilder
		.Init()
		.Build();

	SpriteRenderer *sr3 = new SpriteRenderer("Dungeon/Dungeon1_Side.png");

	sr3->Size = Vector2(960, 540);

	bg2.AddComponent(sr3);

	#pragma endregions

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
	scene1->AddGameObject(&go4);
	scene1->AddGameObject(&sword);
	scene1->AddGameObject(&bg2);
	scene1->AddGameObject(&bg);

	scene1->Enable();

	SDL_Quit();

	return 0;

}