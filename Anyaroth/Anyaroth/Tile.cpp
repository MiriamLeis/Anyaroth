#include "Tile.h"
#include "FrameComponent.h"
#include "TransformComponent.h"
#include "Game.h"

Tile::Tile(double x, double y, int f, int c, Texture* t)
{
	addComponent<Texture>(t);
	auto transform = addComponent<TransformComponent>();
	auto frame = addComponent<FrameComponent>();

	transform->setPosition(x* RESOLUTION, y *RESOLUTION); //el 3 ser�a el factor de resoluci�n!!
	transform->setScale(RESOLUTION);
	frame->setFilAndCol(f, c);
}
