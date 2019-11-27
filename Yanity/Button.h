#include "Component.h"
#include "lib_stdafx.h"

///@brief ��ư Ŭ�����Դϴ�.
class Button : public Component{

public:

	bool isPressed = false; ///< ��ư�� ���� ����

	OEvent<> OnClickDown, ///< ��ư�� �������� �� �߻��Ǵ� Delegate Event
			 OnPressed,///< ��ư�� ������ ���� �� �߻��Ǵ� Delegate Event
			 OnClickUp; ///< ��ư�� ������ �� �߻��Ǵ� Delegate Event

	void Start();
	void Update();

};