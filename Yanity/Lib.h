#pragma once

#include "stdafx.h"
#include "Vector2.h"

class Lib {

public:

	Lib() {}

	template<typename T>
	static void Lib_ItrVector(std::vector<T> _vector, std::function<void(T)> callback) {

		int end = _vector.size();

		for (int i = 0; i < end; i++) callback((_vector[i]));

	}

	static Vector2 ViewPortPosToScreenPos(Vector2);
	static Vector2 ScreenPosToViewPortPos(Vector2);

	static SDL_Rect Vector2ToRect(Vector2, Vector2);

};