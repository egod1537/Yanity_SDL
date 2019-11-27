#include "stdafx.h"
#include "Lib.h"

///@brief Observer Pattern을 일반화하여 Delegate Event class 이다.
///@param T : 이벤트 발생시 함수들에게 전달할 인수
template<typename... T>
class OEvent {

public:

	std::vector<std::function<void(T...)>> EventList; ///< 이벤트 때 작동할 함수

	OEvent() {}

	///@brief 등록된 함수를 모두 호출합니다.
	///@param T args : 호출할 함수의 인자
	void notify(T... args...) {

		int end = EventList.size();

		for (int i = 0; i < end; i++) EventList.front()(args...);


	}

	///@brief 함수를 이벤트에 등록시킵니다.
	///@param function<void(T...)> : 등록할 함수
	void addEvent(std::function<void(T...)> callback) { EventList.push_back(callback); }

	///@brief 등록된 함수를 모두 제거합니다.
	void deleteAllEvent() { EventList.resize(0); }

};