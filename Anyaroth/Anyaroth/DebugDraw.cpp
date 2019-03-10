#include "DebugDraw.h"
#include "Game.h"

void DebugDraw::DrawPolygon(const b2Vec2* vertices, int32 vertexCount, const b2Color& color)
{
	SDL_Rect poly;
	poly.x = vertices[0].x;
	poly.y = vertices[0].y;
	poly.w = (vertices[0].x - vertices[1].x) > 0 ? vertices[0].x - vertices[1].x : vertices[1].x - vertices[0].x;
	poly.h = (vertices[0].y - vertices[1].y) > 0 ? vertices[0].y - vertices[1].y : vertices[1].y - vertices[0].y;
	SDL_RenderFillRect(_renderer, &poly);
}

void DebugDraw::DrawSolidPolygon(const b2Vec2* vertices, int32 vertexCount, const b2Color& color)
{
	SDL_Rect poly;
	if(vertices[0].x<vertices[2].x)
	poly.x = vertices[0].x*M_TO_PIXEL-_camera->getCameraPosition().getX();
	else
		poly.x = vertices[2].x*M_TO_PIXEL-_camera->getCameraPosition().getX();
	if(vertices[0].y<vertices[2].y)
	poly.y = vertices[0].y*M_TO_PIXEL - _camera->getCameraPosition().getY();
	else
		poly.y = vertices[2].y*M_TO_PIXEL - _camera->getCameraPosition().getY();
	poly.h = abs(vertices[0].y - vertices[2].y)*M_TO_PIXEL;
	poly.w = abs(vertices[0].x - vertices[2].x)*M_TO_PIXEL;
	_texture->render(poly);
}

void DebugDraw::DrawCircle(const b2Vec2& center, float32 radius, const b2Color& color)
{
	SDL_Rect poly;
	poly.x=(center.x-radius)*M_TO_PIXEL - _camera->getCameraPosition().getX();
	poly.y = (center.y - radius)*M_TO_PIXEL - _camera->getCameraPosition().getY();
	poly.h = abs(radius*2)*M_TO_PIXEL;
	poly.w = abs(radius*2)*M_TO_PIXEL;
	_texture->render(poly);
	//bool a;
}

void DebugDraw::DrawSolidCircle(const b2Vec2& center, float32 radius, const b2Vec2& axis, const b2Color& color)
{
	SDL_Rect poly;
	poly.x = (center.x - radius)*M_TO_PIXEL - _camera->getCameraPosition().getX();
	poly.y = (center.y - radius)*M_TO_PIXEL - _camera->getCameraPosition().getY();
	poly.h = abs(radius * 2)*M_TO_PIXEL;
	poly.w = abs(radius * 2)*M_TO_PIXEL;
	_texture->render(poly);
}

void DebugDraw::DrawSegment(const b2Vec2& p1, const b2Vec2& p2, const b2Color& color)
{
	bool a;
}

void DebugDraw::DrawTransform(const b2Transform& xf)
{
	bool a;
}

void DebugDraw::DrawPoint(const b2Vec2& p, float32 size, const b2Color& color)
{
	bool a;
}

void DebugDraw::DrawString(int x, int y, const char *string, ...)
{
	bool a;
}

void DebugDraw::DrawAABB(b2AABB* aabb, const b2Color& c)
{
	SDL_Rect poly;
	poly.x = aabb->upperBound.x;
	poly.y = aabb->upperBound.y;
	poly.w = aabb->GetExtents().x * 2;
	poly.h = aabb->GetExtents().y * 2;
	SDL_RenderFillRect(_renderer, &poly);
}



