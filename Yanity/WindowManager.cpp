#include "WindowManager.h"

static WindowManager* _instance;

WindowManager& WindowManager::getInstance() {

	if (_instance == nullptr) _instance = new WindowManager();

	return *_instance;

}

void WindowManager::SetWindowName(std::string _name) {SDL_SetWindowTitle(GraphicCore::getInstance().window, _name.c_str()); }
void WindowManager::SetWindowIcon(SDL_Surface* _img) { SDL_SetWindowIcon(GraphicCore::getInstance().window, _img);}
void WindowManager::SetWindowSize(Vector2 _vec) { SDL_SetWindowSize(GraphicCore::getInstance().window, _vec.x, _vec.y); }