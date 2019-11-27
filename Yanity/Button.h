#include "Component.h"
#include "lib_stdafx.h"

///@brief 버튼 클래스입니다.
class Button : public Component{

public:

	bool isPressed = false; ///< 버튼의 현재 상태

	OEvent<> OnClickDown, ///< 버튼이 눌려졌을 때 발생되는 Delegate Event
			 OnPressed,///< 버튼이 눌리고 있을 때 발생되는 Delegate Event
			 OnClickUp; ///< 버튼이 떼졌을 때 발생되는 Delegate Event

	void Start();
	void Update();

};