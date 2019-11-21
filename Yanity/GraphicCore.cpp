#include "GraphicCore.h"

static GraphicCore* _instance;

void GraphicCore::Init() {

	window = 
		SDL_CreateWindow("", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, 
						 Resoultion.x, Resoultion.y, SDL_WINDOW_SHOWN);

	renderer = SDL_CreateRenderer(window, 0, -1);

	WindowManager& wm = WindowManager::getInstance();

	wm.SetWindowName("HimSoomJJin");

}

GraphicCore& GraphicCore::getInstance() {

	if (_instance == nullptr) _instance = new GraphicCore();

	return *_instance;

}

bool sortRender(RenderBlock _rb1, RenderBlock _rb2) {return _rb1.depth < _rb2.depth;}

void GraphicCore::Render() {

	RenderLine.sort(sortRender);

	int end = RenderLine.size();

	for (int i = 0; i < end; i++) {

		RenderLine.front().render();
		RenderLine.pop_front();

	}

	SDL_RenderPresent(renderer);

}
void GraphicCore::AddRender(int depth, std::function<void()> callback) 
{

	RenderBlock rb = RenderBlock(depth, callback);

	RenderLine.push_back(rb);

}

void GraphicCore::DrawTexture(
	SDL_Texture* _texture, Vector2 _pos,
	float _angle, Vector2 _scale, Vector2 _pivot) {

	SDL_Rect src, dst;
	SDL_Point center;

	src.x = src.y = 0;

	SDL_QueryTexture(_texture, NULL, NULL, &src.w, &src.h);

	dst.x = _pos.x; dst.y = _pos.y;

	dst.w = _scale.x; dst.h = _scale.y;

	center.x = _scale.x * _pivot.x; center.y = _scale.y * _pivot.y;

	SDL_RenderCopyEx(renderer, _texture, &src, &dst, _angle, &center, SDL_FLIP_NONE);

}
void GraphicCore::DrawTexture(
	SDL_Texture* _texture, Transform transform) {

	DrawTexture(_texture, transform.Position, transform.Rotation, transform.Scale);

}

void GraphicCore::DrawSquare
(SDL_Color _color, Vector2 _pos1, Vector2 _pos2) {

	SDL_SetRenderDrawColor(renderer, _color.r, _color.g, _color.b, _color.a);

	SDL_Rect _rect = Lib::Vector2ToRect(_pos1, _pos2);

	SDL_RenderDrawRect(renderer, &_rect);

}
void GraphicCore::DrawFillSquare
(SDL_Color _color, Vector2 _pos1, Vector2 _pos2) {

	SDL_SetRenderDrawColor(renderer, _color.r, _color.g, _color.b, _color.a);

	SDL_Rect _rect = Lib::Vector2ToRect(_pos1, _pos2);

	SDL_RenderFillRect(renderer, &_rect);

}

SDL_Texture* GraphicCore::LoadTexture(std::string _path) {

	SDL_Surface* _surface;
	SDL_Texture* _texture;

	_surface = IMG_Load(_path.c_str());

	if (_surface == nullptr) { std::cout << "�̹��� ������ �����ϴ�.\n"; return NULL; }

	_texture = SDL_CreateTextureFromSurface(renderer, _surface);

	if (_texture == nullptr) { std::cout << "�ؽ��ĸ� �ε����� ���Ͽ����ϴ�."; }

	SDL_FreeSurface(_surface);

	return _texture;

}