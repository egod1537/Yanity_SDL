#pragma once

#include "Vector2.h"
#include "Transform.h"

///@brief Render�� ������ ����ִ� ����ü �Դϴ�.
struct RenderBlock {

public:
	
	int depth; ///< Render ����
	std::function<void()> render; ///< Render �Լ�

	RenderBlock(int _depth, std::function<void()> _render) : depth{ _depth }, render{ _render }{}

};

///@brief ȭ�鿡 Render, Draw�� �����ϴ� Core�Դϴ�.
class GraphicCore {

public:

	Vector2 Resoultion = Vector2(960, 540); ///< ȭ���� �ػ�

	SDL_Window *window; ///< ���� Ȱ��ȭ�� â
	SDL_Renderer *renderer; ///< â�� Renderer

	std::list<RenderBlock> RenderLine; ///< Render Process Block

	GraphicCore() {}

	static GraphicCore& getInstance(); ///< Singleton Method

	void Init(); ///< Graphic Core�� �ʱ�ȭ�մϴ�.

	void Render(); ///< Render�� �����մϴ�.
	///@brief RenderBlock�� �߰��մϴ�.
	///@param int depth : Render ����
	///@param function<void()> : Render �Լ�
	void AddRender(int depth, std::function<void()> callback); 

	///@brief ȭ�鿡 Texture�� �׷��ݴϴ�.
	///@param SDL_Texture* _texture : �׸� Texture 
	///@param Vector2 _pos : ��ġ | �⺻��: Vector(0, 0)
	///@param float _angle : ���� | �⺻��: 0
	///@param Vector2 _scale : ũ�� | �⺻��: Vector2(1, 1)
	///@param Vector2 _pivot : �̹����� �߽� | �⺻��: Vector2(0.5, 0.5)
	void DrawTexture(
		SDL_Texture* _texture, Vector2 _pos = Vector2(0, 0), 
		float _angle = 0, Vector2 _scale = Vector2(1, 1), Vector2 _pivot = Vector2(0.5, 0.5));
	///@brief ȭ�鿡 Tranform�� ������ ���� Texture�� �׷��ݴϴ�.
	///@param SDL_Texture* : �׸� Texture
	///@param Transform : ��ġ, ����, ũ�� ����
	void DrawTexture(
		SDL_Texture*, Transform);
	
	///@brief ȭ�鿡 �� �簢���� �׷��ݴϴ�.
	///@param SDL_Color : ����
	///@param Vector2 : ���� ��ǥ
	///@param Vector2 : ����ǥ
	void DrawSquare(SDL_Color, Vector2, Vector2);
	///@brief ȭ�鿡 �� �� �簢���� �׷��ݴϴ�.
	///@param SDL_Color : ����
	///@param Vector2 : ���� ��ǥ
	///@param Vector2 : ����ǥ
	void DrawFillSquare(SDL_Color, Vector2, Vector2);

	///@brief ȭ�鿡 ���� �׷��ݴϴ�.
	///@param SDL_Color : ����
	///@param Vector2 : ���� �߽� ��ǥ
	///@param float : ���� ������
	void DrawSphere(SDL_Color, Vector2, float);

	///@brief ���Ͽ��� Texture �ҷ����� �Լ��Դϴ�.
	///@param string : Texture�� ���
	///@todo �����Ǵ� ���� ����
	///.bmp
	///.png
	SDL_Texture* LoadTexture(std::string);

};