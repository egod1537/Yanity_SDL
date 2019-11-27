#pragma once

#include "Component.h"
#include "stdafx.h"
#include "Color.h"

///@brief ȭ�鿡 Text�� ������ִ� Component�Դϴ�.
/// Font�� �޾ƿ� Texture�� ��ȯ�� ���� Image ���·� ����մϴ�.
class Text : public Component{

private:

	std::string font_path; ///< Font Path �⺻������ ���ξ� "ttf/"�� �ٽ��ϴ�.
	std::string text = ""; ///< ����� Text

public:

	TTF_Font *font; ///< Font
	SDL_Texture *texture; ///< Font Texture

	SDL_Color ColorTint; ///< Font Color
	
	int Depth ///< Font Render �����Դϴ�.
		,Size; ///< Font�� ũ�� �Դϴ�. 10�� �����̸� �ѱ��ڴ� 1.8x2�� ũ�⸦ �����ϴ�.

	unsigned short unicode[128]; ///< Text�� unicodeȭ ��Ų ����

	///@brief Text�� �������Դϴ�.
	///@param string _path : Font File�� ��� �Դϴ�.
	///@param string _text : ���� ���� �Դϴ�.
	Text(std::string _path, std::string _text) : font_path{ _path }, 
		text{ _text }, Depth{ 0 }, Size{ 15 }, ColorTint{ Color::WHITE() }{}

	void Awake();
	void Update();

	///@brief Font�� �ٲپ� �ִ� �Լ��Դϴ�.
	///@param string : Font File�� ���
	void ChangeFont(std::string);

	///@brief ���� ����ϰ� �ִ� Text�� �����ɴϴ�.
	///@return string : Text
	std::string getText();
	///@brief Text�� �����մϴ�.
	///@param string : ������ string
	void setText(std::string);

};