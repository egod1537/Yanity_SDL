#include "Component.h"
#include "lib_stdafx.h"

class Button : public Component{

public:

	OEvent<> OnClick;

	void Start();
	void Update();

};