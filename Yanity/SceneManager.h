#include "stdafx.h"
#include "Scene.h"

///@brief Scene의 활성화, 비활성화를 담당하는 class입니다.
class SceneManager {

public:

	///@brief 특정 Scene을 활성화시킵니다. 다른 Scene들은 비활성화가 됩니다.
	///@param string : Scene Name
	static void LoadScene(std::string);

	///@brief Scene Name으로 Scene을 가져옵니다.
	///@param string : Scene Name
	///@return Scene을 반환하고 없는 경우 nullptr를 반환합니다.
	static Scene* FindScene(std::string);

};