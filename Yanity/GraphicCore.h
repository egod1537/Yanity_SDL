#pragma once

#include "Vector2.h"
#include "Transform.h"

///@brief Render할 정보가 들어있는 구조체 입니다.
struct RenderBlock {

public:
	
	int depth; ///< Render 순서
	std::function<void()> render; ///< Render 함수

	RenderBlock(int _depth, std::function<void()> _render) : depth{ _depth }, render{ _render }{}

};

///@brief 화면에 Render, Draw를 관리하는 Core입니다.
class GraphicCore {

public:

	Vector2 Resoultion = Vector2(960, 540); ///< 화면의 해상도

	SDL_Window *window; ///< 현재 활성화된 창
	SDL_Renderer *renderer; ///< 창의 Renderer

	std::list<RenderBlock> RenderLine; ///< Render Process Block

	GraphicCore() {}

	static GraphicCore& getInstance(); ///< Singleton Method

	void Init(); ///< Graphic Core를 초기화합니다.

	void Render(); ///< Render를 실행합니다.
	///@brief RenderBlock을 추가합니다.
	///@param int depth : Render 순서
	///@param function<void()> : Render 함수
	void AddRender(int depth, std::function<void()> callback); 

	///@brief 화면에 Texture를 그려줍니다.
	///@param SDL_Texture* _texture : 그릴 Texture 
	///@param Vector2 _pos : 위치 | 기본값: Vector(0, 0)
	///@param float _angle : 각도 | 기본값: 0
	///@param Vector2 _scale : 크기 | 기본값: Vector2(1, 1)
	///@param Vector2 _pivot : 이미지의 중심 | 기본값: Vector2(0.5, 0.5)
	void DrawTexture(
		SDL_Texture* _texture, Vector2 _pos = Vector2(0, 0), 
		float _angle = 0, Vector2 _scale = Vector2(1, 1), Vector2 _pivot = Vector2(0.5, 0.5));
	///@brief 화면에 Tranform의 정보에 따라 Texture를 그려줍니다.
	///@param SDL_Texture* : 그릴 Texture
	///@param Transform : 위치, 각도, 크기 정보
	void DrawTexture(
		SDL_Texture*, Transform);
	
	///@brief 화면에 빈 사각형을 그려줍니다.
	///@param SDL_Color : 색깔
	///@param Vector2 : 시작 좌표
	///@param Vector2 : 끝좌표
	void DrawSquare(SDL_Color, Vector2, Vector2);
	///@brief 화면에 꽉 찬 사각형을 그려줍니다.
	///@param SDL_Color : 색깔
	///@param Vector2 : 시작 좌표
	///@param Vector2 : 끝좌표
	void DrawFillSquare(SDL_Color, Vector2, Vector2);

	///@brief 화면에 원을 그려줍니다.
	///@param SDL_Color : 색깔
	///@param Vector2 : 원의 중심 좌표
	///@param float : 원의 반지름
	void DrawSphere(SDL_Color, Vector2, float);

	///@brief 파일에서 Texture 불러오는 함수입니다.
	///@param string : Texture의 경로
	///@todo 지원되는 파일 형식
	///.bmp
	///.png
	SDL_Texture* LoadTexture(std::string);

};