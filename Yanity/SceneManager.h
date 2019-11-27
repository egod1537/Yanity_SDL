#include "stdafx.h"
#include "Scene.h"

///@brief Scene�� Ȱ��ȭ, ��Ȱ��ȭ�� ����ϴ� class�Դϴ�.
class SceneManager {

public:

	///@brief Ư�� Scene�� Ȱ��ȭ��ŵ�ϴ�. �ٸ� Scene���� ��Ȱ��ȭ�� �˴ϴ�.
	///@param string : Scene Name
	static void LoadScene(std::string);

	///@brief Scene Name���� Scene�� �����ɴϴ�.
	///@param string : Scene Name
	///@return Scene�� ��ȯ�ϰ� ���� ��� nullptr�� ��ȯ�մϴ�.
	static Scene* FindScene(std::string);

};