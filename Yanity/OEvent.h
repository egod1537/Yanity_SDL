#include "stdafx.h"
#include "Lib.h"

///@brief Observer Pattern�� �Ϲ�ȭ�Ͽ� Delegate Event class �̴�.
///@param T : �̺�Ʈ �߻��� �Լ��鿡�� ������ �μ�
template<typename... T>
class OEvent {

public:

	std::vector<std::function<void(T...)>> EventList; ///< �̺�Ʈ �� �۵��� �Լ�

	OEvent() {}

	///@brief ��ϵ� �Լ��� ��� ȣ���մϴ�.
	///@param T args : ȣ���� �Լ��� ����
	void notify(T... args...) {

		int end = EventList.size();

		for (int i = 0; i < end; i++) EventList.front()(args...);


	}

	///@brief �Լ��� �̺�Ʈ�� ��Ͻ�ŵ�ϴ�.
	///@param function<void(T...)> : ����� �Լ�
	void addEvent(std::function<void(T...)> callback) { EventList.push_back(callback); }

	///@brief ��ϵ� �Լ��� ��� �����մϴ�.
	void deleteAllEvent() { EventList.resize(0); }

};