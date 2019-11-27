///@mainpage Yanity Document Page
///@author wethinknewrise
///@date 2019-11-27
///@todo
/// - Gameobject 부모 자식 관계 만들기
/// - PhysX 보충
/// - doTween Component 제작

#include "GameEngine.h"

int main(int argc, char* args[]) {

	GameCore::getInstance().Init();

	Scene *scene1 = new Scene(), *scene2 = new Scene();

	scene1->name = "scene1"; scene2->name = "scene2";

	GameObject::Builder gBuilder;

	#pragma region Sword

	GameObject sword = gBuilder
		.Init()
		.SetName("Sword1")
		.SetPosition(Vector2(-150, 0))
		.Build();

	SpriteRenderer sword_s = SpriteRenderer("sword.png");

	BoxColider bc3 = BoxColider();

	Rigidbody rig3 = Rigidbody();

	Button btn = Button();

	sword.AddComponent(&sword_s);
	sword.AddComponent(&btn);
	sword.AddComponent(&bc3);
	sword.AddComponent(&rig3);

	bc3.Scale = Vector2(50, 50);
	bc3.DebugMode = true;

	#pragma endregion

	#pragma region go1

	GameObject go1 = gBuilder
		.Init()
		.SetName("g1")
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer sr1 = SpriteRenderer("Player.png");

	PlayerController pc = PlayerController();

	BoxColider bc1 = BoxColider();

	Rigidbody rg1 = Rigidbody();

	TestColiderCheck tcc = TestColiderCheck();

	go1.AddComponent(&rg1);
	go1.AddComponent(&sr1);
	go1.AddComponent(&pc);
	go1.AddComponent(&bc1);
	go1.AddComponent(&tcc);

	bc1.Scale = Vector2(50, 50);
	bc1.DebugMode = true;

	#pragma endregion

	#pragma region go2

	GameObject go2 = gBuilder
		.Init()
		.SetName("go2")
		.SetPosition(Vector2(100, 0))
		.SetScale(Vector2(3, 3))
		.Build();

	SpriteRenderer sr2 = SpriteRenderer("Player.png");

	BoxColider bc2 = BoxColider();

	Rigidbody rg2 = Rigidbody();

	TestColiderCheck tcc1 = TestColiderCheck();

	PlayerController pc2 = PlayerController();

	go2.AddComponent(&sr2);
	go2.AddComponent(&bc2);
	go2.AddComponent(&rg2);
	go2.AddComponent(&pc2);
	go2.AddComponent(&tcc1);

	bc2.Scale = Vector2(50, 50);
	bc2.DebugMode = true;

	#pragma endregion

	#pragma region Sword

	GameObject sword1 = gBuilder
		.Init()
		.SetName("sword2")
		.SetPosition(Vector2(-150, 100))
		.Build();

	SpriteRenderer sword_s2 = SpriteRenderer("sword.png");

	BoxColider bc4 = BoxColider();

	Rigidbody rig4 = Rigidbody();

	Button btn3 = Button();

	sword1.AddComponent(&sword_s2);
	sword1.AddComponent(&btn3);
	sword1.AddComponent(&bc4);
	sword1.AddComponent(&rig4);

	bc4.Scale = Vector2(50, 50);
	bc4.DebugMode = true;

	#pragma endregion

	#pragma region Label

	GameObject t = gBuilder
		.Init()
		.SetPosition(Vector2(0, 0))
		.Build();

	Text text = Text("default.ttf", "dw");

	text.Size = 10;
	text.setText("fqqdwqd");

	t.AddComponent(&text);

	#pragma endregion

	scene1->AddGameObject(&go1);
	scene1->AddGameObject(&sword1);

	scene2->AddGameObject(&go2);
	scene2->AddGameObject(&sword);
	scene2->AddGameObject(&t);

	GameCore::getInstance().list_Scene.push_back(scene1);
	GameCore::getInstance().list_Scene.push_back(scene2);

	SceneManager::LoadScene("scene1");

	while (GameCore::getInstance().Power)

	SDL_Quit();

	return 0;

}