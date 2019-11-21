#include "SpriteRenderer.h"

void SpriteRenderer::Update() {

	Vector2 _scale = gameobject->getScale();

	Vector2 _size = Vector2(Size.x * _scale.x, Size.y * _scale.y);

	Vector2 center = _size * 0.5f;

	SDL_SetTextureColorMod(_texture, ColorTint.r, ColorTint.g, ColorTint.b);

	SDL_SetTextureAlphaMod(_texture, ColorTint.a);

	GraphicCore::getInstance().AddRender(Depth, [=]() {

		GraphicCore::getInstance().
			DrawTexture(_texture,
						Lib::ViewPortPosToScreenPos(gameobject->getPosition() - center),
						gameobject->transform.Rotation,
						_size,
						Pivot);

	});

}

Vector2 SpriteRenderer::getTextureSize() {

	SDL_Rect src;

	SDL_QueryTexture(_texture, NULL, NULL, &src.w, &src.h);

	return Vector2(src.w, src.h);

}

void SpriteRenderer::setColorTint(int r, int g, int b, int a){

	ColorTint.r = r;
	ColorTint.g = g;
	ColorTint.b = b;
	ColorTint.a = a;

}