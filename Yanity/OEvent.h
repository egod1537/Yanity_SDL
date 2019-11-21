#include "stdafx.h"
#include "Lib.h"

template<typename... T>
class OEvent {

public:

	std::list<std::function<void(T...)>> EventList;

	OEvent() {}

	void notify(T... args...) {

		int end = EventList.size();

		for (int i = 0; i < end; i++) {

			EventList.front()(args...);
			EventList.pop_front();

		}

	}

	void addEvent(std::function<void(T...)> callback) { EventList.push_back(callback); }

	void deleteAllEvent() { EventList.resize(0); }

};