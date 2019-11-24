#include "Component.h"
#include "GraphicCore.h"

class SpriteRenderer : public Component {

public:

	std::string img_path;

	SDL_Texture* _texture;

	Vector2 Size, Pivot;
	SDL_Color ColorTint;

	int Depth;

	SpriteRenderer(std::string _img_path) : 
		Pivot{Vector2(0.5, 0.5)}, img_path {_img_path},
		Depth { 0 }
		{

		ColorTint.r = ColorTint.g = ColorTint.b = ColorTint.a = 255;

		_texture = GraphicCore::getInstance().LoadTexture("img/" + img_path);

		SDL_Rect src;

		SDL_QueryTexture(_texture, NULL, NULL, &src.w, &src.h);

		Size = Vector2(src.w, src.h);

	}

	void Update();

	Vector2 getTextureSize();
	void setColorTint(int r = 255, int g = 255, int b = 255, int a = 255);

};