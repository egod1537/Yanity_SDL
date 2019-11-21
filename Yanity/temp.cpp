//#include <iostream>
//#include "SDL_stdafx.h"
//
//SDL_Window *window;
//SDL_Renderer *renderer;
//SDL_Event *event;
//
//SDL_Texture* loadTexture(const char* file) {
//
//	SDL_Surface *surface;
//	SDL_Texture *texture;
//
//	surface = IMG_Load(file);
//
//	if (surface == nullptr) { std::cout << file << " 파일을 로드하지 못하였습니다.\n"; return NULL; }
//
//	texture = SDL_CreateTextureFromSurface(renderer, surface);
//
//	if (texture == nullptr) { std::cout << "텍스쳐를 로드하지 못하였습니다.\n"; }
//
//	SDL_FreeSurface(surface);
//
//	return texture;
//
//}
//
//void drawRotateTexture(SDL_Texture *texture, int x, int y, float angle, SDL_RendererFlip flip) {
//
//	SDL_Rect src, dst;
//	SDL_Point center;
//
//	src.x = src.y = 0;
//
//	SDL_QueryTexture(texture, NULL, NULL, &src.w, &src.h);
//
//	dst.x = x; dst.y = y;
//	dst.w = src.w; dst.h = src.h;
//
//	center.x = src.w / 2; center.y = src.h / 2;
//
//	SDL_RenderCopyEx(renderer, texture, &src, &dst, angle, &center, flip);
//
//}
//
//void drawTexture(SDL_Texture *texture, int x, int y) {
//
//	SDL_Rect src, dst;
//
//	src.x = src.y = 0;
//
//	SDL_QueryTexture(texture, NULL, NULL, &src.w, &src.h);
//
//	dst.x = x; dst.y = y;
//	dst.w = src.w; dst.h = src.h;
//
//	SDL_RenderCopy(renderer, texture, &src, &dst);
//
//}
//
//void drawColorTexture(SDL_Texture *texture, int x, int y, int r, int g, int b) {
//
//	SDL_Rect src, dst;
//
//	src.x = src.y = 0;
//
//	SDL_QueryTexture(texture, NULL, NULL, &src.w, &src.h);
//
//	dst.x = x; dst.y = y;
//	dst.w = src.w; dst.h = src.h;
//
//	SDL_SetTextureColorMod(texture, r, g, b);
//
//	SDL_RenderCopy(renderer, texture, &src, &dst);
//
//}
//
//void drawSquare(int x1, int y1, int x2, int y2) {
//
//	SDL_SetRenderDrawColor(renderer, 255, 0, 0, 0);
//
//	SDL_Rect rect = { x1, y1, x2, y2 };
//
//	SDL_RenderDrawRect(renderer, &rect);
//
//}
//
//void drawFillSquare(int x1, int y1, int x2, int y2) {
//
//	SDL_SetRenderDrawColor(renderer, 255, 0, 0, 0);
//
//	SDL_Rect rect = { x1, y1, x2, y2 };
//
//	SDL_RenderFillRect(renderer, &rect);
//
//}
//
//void drawLine(int x1, int y1, int x2, int y2) {
//
//	SDL_SetRenderDrawColor(renderer, 255, 0, 0, 0);
//
//	SDL_Rect rect = { x1, y1, x2, y2 };
//
//	SDL_RenderDrawLine(renderer, x1, y1, x2, y2);
//
//}
//
//void drawTestEffect(int x1, int y1, int x2, int y2) {
//
//	SDL_SetRenderDrawColor(renderer, 128, 128, 128, 0);
//
//	SDL_RenderClear(renderer);
//
//	float threeOf_x = (x2 - x1) / 3,
//		threeOf_y = (y2 - y1) / 3;
//
//	SDL_SetRenderDrawColor(renderer, 255, 0, 0, 64);
//
//	SDL_Rect rt = { 0,0,100,100 };
//	SDL_Rect rt2 = { 50,50,100,100 };
//	SDL_Rect rt3 = { 100,100,100,100 };
//	SDL_Rect rt4 = { 150,150,100,100 };
//
//	SDL_SetRenderDrawBlendMode(renderer, SDL_BLENDMODE_BLEND);
//
//	SDL_RenderFillRect(renderer, &rt);
//	SDL_RenderFillRect(renderer, &rt2);
//
//	SDL_SetRenderDrawBlendMode(renderer, SDL_BLENDMODE_ADD);
//
//	SDL_RenderFillRect(renderer, &rt3);
//
//	SDL_SetRenderDrawBlendMode(renderer, SDL_BLENDMODE_MOD);
//
//	SDL_RenderFillRect(renderer, &rt4);
//
//	SDL_RenderPresent(renderer);
//
//}
//
//void Test() {
//
//	SDL_SetRenderDrawColor(renderer, 128, 128, 128, 0);
//	SDL_RenderClear(renderer);
//
//	SDL_Rect rt = { 0,0,100,100 };
//	SDL_Rect rt2 = { 50,50,100,100 };
//	SDL_Rect rt3 = { 100,100,100,100 };
//	SDL_Rect rt4 = { 150,150,100,100 };
//
//	SDL_SetRenderDrawColor(renderer, 255, 0, 0, 64);
//
//	SDL_SetRenderDrawBlendMode(renderer, SDL_BLENDMODE_BLEND);
//	SDL_RenderFillRect(renderer, &rt);
//	SDL_RenderFillRect(renderer, &rt2);
//	SDL_SetRenderDrawBlendMode(renderer, SDL_BLENDMODE_ADD);
//	SDL_RenderFillRect(renderer, &rt3);
//	SDL_SetRenderDrawBlendMode(renderer, SDL_BLENDMODE_MOD);
//	SDL_RenderFillRect(renderer, &rt4);
//	SDL_RenderPresent(renderer);
//
//}
//
////SDL_SetTextureAlphaMod() 텍스쳐의 알파값을 설정해주는 함수
////SDL_SetTextureBlendMode() 텍스쳐의 블렌딩 모드를 설정해준다.
//
//int main(int argc, char* args[]) {
//
//	SDL_Init(SDL_INIT_VIDEO);
//
//	window = SDL_CreateWindow("Test", SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED, 800, 480, 0);
//
//	renderer = SDL_CreateRenderer(window, -1, 0);
//
//	bool quit = false;
//
//	SDL_Texture *texture;
//
//	while (!quit) {
//
//		texture = loadTexture("img\\image.png");
//
//		//drawTexture(texture, 0, 0);
//
//		//drawRotateTexture(texture, 0, 0, 75, SDL_FLIP_NONE);
//
//		//drawColorTexture(texture, 200, 200, 75, 125, 85);
//
//		SDL_SetRenderDrawColor(renderer, 0, 0, 0, 0);
//
//		SDL_RenderClear(renderer);
//
//		drawTestEffect(0, 0, 0, 0);
//
//		SDL_RenderPresent(renderer);
//
//		SDL_Delay(100);
//
//	}
//
//	SDL_Quit();
//
//	return 0;
//
//}