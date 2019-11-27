#include "Component.h"
#include "GraphicCore.h"

///@brief 화면에 Sprite를 출력해주는 Component입니다.
class SpriteRenderer : public Component {

public:

	std::string img_path;///< Sprite의 파일 경로 입니다. 기본적으로 "img/"를 가르킵니다.

	SDL_Texture* _texture;

	Vector2 Size, ///< Sprite의 본래 이미지 크기
			Pivot; ///< Sprite의 Pivot
	SDL_Color ColorTint; ///< Sprite에 덧 씌우는 Color Filter

	int Depth; ///< Sprite Render 순서 낮을 수록 먼저 Render 됩니다.

	///@brief SpriteRenderer 생성자
	///@param string _img_path : Sprite 파일 경로
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

	Vector2 getTextureSize(); ///< Sprite의 본래 이미지 크기를 가져옵니다.
	void setColorTint(int r = 255, int g = 255, int b = 255, int a = 255); ///< Sprite의 Color Tint를 설정합니다.

};