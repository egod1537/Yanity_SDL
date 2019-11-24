#include "Lib.h"

Vector2 Lib::ScreenPosToViewPortPos(Vector2 _pos) {

	return _pos - Vector2(480, 270);

}

Vector2 Lib::ViewPortPosToScreenPos(Vector2 _pos) {

	return _pos + Vector2(480, 270);

}

SDL_Rect Lib::Vector2ToRect(Vector2 _vec1, Vector2 _vec2) {

	SDL_Rect _rect;

	_rect.x = _vec1.x; _rect.y = _vec1.y;

	_rect.w = _vec2.x - _vec1.x; _rect.h = _vec2.y - _vec1.y;

	return _rect;

}