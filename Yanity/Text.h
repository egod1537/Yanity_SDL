#pragma once

#include "Component.h"
#include "stdafx.h"
#include "Color.h"

///@brief 화면에 Text를 출력해주는 Component입니다.
/// Font를 받아와 Texture로 변환한 다음 Image 형태로 출력합니다.
class Text : public Component{

private:

	std::string font_path; ///< Font Path 기본적으로 접두어 "ttf/"가 붙습니다.
	std::string text = ""; ///< 출력할 Text

public:

	TTF_Font *font; ///< Font
	SDL_Texture *texture; ///< Font Texture

	SDL_Color ColorTint; ///< Font Color
	
	int Depth ///< Font Render 순서입니다.
		,Size; ///< Font의 크기 입니다. 10이 기준이며 한글자당 1.8x2의 크기를 갖습니다.

	unsigned short unicode[128]; ///< Text를 unicode화 시킨 변수

	///@brief Text의 생성자입니다.
	///@param string _path : Font File의 경로 입니다.
	///@param string _text : 적을 글자 입니다.
	Text(std::string _path, std::string _text) : font_path{ _path }, 
		text{ _text }, Depth{ 0 }, Size{ 15 }, ColorTint{ Color::WHITE() }{}

	void Awake();
	void Update();

	///@brief Font를 바꾸어 주는 함수입니다.
	///@param string : Font File의 경로
	void ChangeFont(std::string);

	///@brief 현재 출력하고 있는 Text를 가져옵니다.
	///@return string : Text
	std::string getText();
	///@brief Text를 설정합니다.
	///@param string : 설정할 string
	void setText(std::string);

};