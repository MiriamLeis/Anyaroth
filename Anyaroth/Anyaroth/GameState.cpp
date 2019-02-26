#include "GameState.h"
#include "Game.h"

GameState::~GameState()
{
	for (GameObject* o : _stages)
		delete o;
}
void GameState::render() const
{
	_mainCamera->render();
	for (GameObject* o : _stages)
		o->render(_mainCamera);
}

void GameState::update()
{
	_mainCamera->update();
	for (GameObject* o : _stages)
		o->update();
}

void GameState::handleEvents(SDL_Event& e)
{
	for (GameObject* o : _stages)
		o->handleInput(e);
}

void GameState::initializeCamera()
{
	_mainCamera = new Camera();
	_mainCamera->setCameraPosition(0, 0);
	_mainCamera->setCameraSize(GAME_RESOLUTION_X, GAME_RESOLUTION_Y);
}
