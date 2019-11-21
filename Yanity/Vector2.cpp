#include "Vector2.h"

Vector2 Vector2::operator+(const Vector2 _vec) { return Vector2(x + _vec.x, y + _vec.y); }
Vector2 Vector2::operator-(const Vector2 _vec) { return Vector2(x - _vec.x, y - _vec.y); }
Vector2 Vector2::operator*(const float _ratio) { return Vector2(x * _ratio, y * _ratio); }

Vector2 Vector2::operator+=(Vector2 _vec) { return *this = *this + _vec; }
Vector2 Vector2::operator-=(Vector2 _vec) { return *this = *this - _vec; }
Vector2 Vector2::operator*=(float _ratio) { return *this = *this * _ratio; }

float Vector2::Distance(Vector2) { return sqrt(x * x + y * y); }
float Vector2::sqrDistance(Vector2) { return x * x + y * y; }