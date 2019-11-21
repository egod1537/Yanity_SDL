#include "BoxColider.h"

bool BoxColider::isCollision(Vector2 _pos) {

	if (!isTrigger) return false;

	Vector2 trPos = gameobject->transform.Position;

	Vector2 trScale = gameobject->transform.Scale;

	Vector2 Size1 = Vector2(trPos.x - trScale.x / 2, trPos.y - trScale.y / 2),
		Size2 = Vector2(trPos.x + trScale.x / 2, trPos.y + trScale.y / 2);

	return (Size1.x <= _pos.x && _pos.x <= Size2.x
			|| Size1.y <= _pos.y && _pos.y <= Size2.y);

}