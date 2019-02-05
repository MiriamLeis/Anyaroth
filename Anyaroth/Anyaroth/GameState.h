#pragma once

#include <list>
#include <vector>

#include "GameObject.h"

class Game;

class GameState
{
	protected:
		list <GameObject*> stages;
		Game* gameptr;

	public:
		GameState() {}
		virtual ~GameState();
		GameState(Game* g) : 
			gameptr(g) {}
		virtual void render() const;
		virtual void update();
		virtual void handleEvents(SDL_Event& e);
};

