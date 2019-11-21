#pragma once

#include "GameCore.h"

struct RenderBlock {

public:
	
	int depth;
	std::function<void()> render;

	RenderBlock(int _depth, std::function<void()> _render) : depth{ _depth }, render{ _render }{}

};

class GraphicCore {

public:

	Vector2 Resoultion = Vector2(960, 540);

	SDL_Window *window;
	SDL_Renderer *renderer;

	std::list<RenderBlock> RenderLine;

	GraphicCore() {}

	static GraphicCore& getInstance();

	void Init();

	void Render();
	void AddRender(int depth, std::function<void()> callback);

	void DrawTexture(
		SDL_Texture* _texture, Vector2 _pos = Vector2(0, 0), 
		float _angle = 0, Vector2 _scale = Vector2(1, 1), Vector2 _pivot = Vector2(0.5, 0.5));
	void DrawTexture(
		SDL_Texture*, Transform);
	
	void DrawSquare(SDL_Color, Vector2, Vector2);
	void DrawFillSquare(SDL_Color, Vector2, Vector2);

	SDL_Texture* LoadTexture(std::string);

};