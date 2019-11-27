#include "Text.h"
#include "han2unicode.h"
#include "GraphicCore.h"

void Text::Awake() {

	ChangeFont(font_path);
}

void Text::Update() {

	GraphicCore::getInstance().AddRender(Depth, [=]() {

		GraphicCore::getInstance().DrawTexture(texture, 
				gameobject->getPosition(),
				gameobject->getRotation(),
				Vector2(text.length() * 1.8f * gameobject->getScale().x, 2 * gameobject->getScale().y) * Size);

	});

}

std::string Text::getText() { return text; }

void Text::ChangeFont(std::string _path) {

	font_path = _path;

	setText(text);

}

void Text::setText(std::string _str) 
{

	text = _str;

	han2unicode(const_cast<char*>(_str.c_str()), unicode);

	font = TTF_OpenFont(("ttf/" + font_path).c_str(), Size);

	SDL_Surface* _surface = TTF_RenderUNICODE_Blended(font, unicode, ColorTint);

	texture = &GraphicCore::getInstance().toTexture(_surface);

}