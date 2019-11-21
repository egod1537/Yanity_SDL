#pragma once

#include "stdafx.h"
#include "lib_stdafx.h"
#include "SDL_stdafx.h"

#include "GameObject.h"
#include "GraphicCore.h"
#include "WindowManager.h"

#include "Vector2.h"
#include "Lib.h"
#include "PhysX.h"

class GameCore {

public:

	GameCore() {}

	/**
@fn GameCore& getInstance()
@brief test function
@date 2011/06/23
@author WooSeung Lee (fornamoo@gmail.com)
@param a 정수형 변수
@param b 문자형 변수
@return result는 결과 값 리턴 0은 실패 1은 성공
@exception EACCES 파일 접근 에러
@remark 이 함수는 테스트용 합수입니다.
*/
	static GameCore& getInstance();

	void Init();

};