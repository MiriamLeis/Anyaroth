#include "GameState.h"
#include "Game.h"

GameState::GameState(Game* g) : _gameptr(g), _world(g->getWorld())
{
	initializeCamera();
}

GameState::~GameState()
{
	delete _mainCamera;

	if (_canvas != nullptr)
	{
		delete _canvas;
		_canvas = nullptr;
	}

	for (GameObject* o : _stages)
		delete o;
}

void GameState::render() const
{
	_mainCamera->render();

	for (GameObject* o : _stages)
		o->render(_mainCamera);

	if (_canvas != nullptr)
		_canvas->render();
}

void GameState::update(const double& deltaTime)
{
	_mainCamera->update(deltaTime);

	for (GameObject* o : _stages)
		o->update(deltaTime);

	if (_canvas != nullptr)
		_canvas->update(deltaTime);
}

bool GameState::handleEvents(SDL_Event& e)
{
	bool handled = false;
	auto it = _stages.begin();

	while (!handled && it != _stages.end())
	{
		if ((*it)->handleInput(e))
			handled = true;
		else
			it++;
	}

	if (_canvas != nullptr && !handled)
		_canvas->handleEvent(e);

	return handled;
}

Vector2D GameState::getMousePositionInWorld() const
{
	int winWidth = 0;	int winHeight = 0;
	SDL_GetWindowSize(_gameptr->getWindow(), &winWidth, &winHeight);

	//Sacamos la resolucion real que tiene el juego en la ventana
	int gameWidth; int gameHeight;
	gameWidth = GAME_RESOLUTION_X * winHeight / GAME_RESOLUTION_Y;

	if (gameWidth > winWidth)
	{
		gameHeight = GAME_RESOLUTION_Y * winWidth / GAME_RESOLUTION_X;
		gameWidth = GAME_RESOLUTION_X * gameHeight / GAME_RESOLUTION_Y;
	}
	else
		gameHeight = GAME_RESOLUTION_Y * gameWidth / GAME_RESOLUTION_X;

	//Bordes negros
	int xBorder = winWidth - gameWidth;
	int yBorder = winHeight - gameHeight;

	//Cogemos su posicion en pantalla
	int xMousePos = 0;	int yMousePos = 0;
	SDL_GetMouseState(&xMousePos, &yMousePos);

	xMousePos -= xBorder / 2;
	yMousePos -= yBorder / 2;

	xMousePos = (xMousePos * _mainCamera->getCameraSize().getX()) / gameWidth;
	yMousePos = (yMousePos * _mainCamera->getCameraSize().getY()) / gameHeight;

	//Lo convertimos en su posicion en el mundo
	xMousePos += getMainCamera()->getCameraPosition().getX();
	yMousePos += getMainCamera()->getCameraPosition().getY();

	return Vector2D(xMousePos, yMousePos);
}

Vector2D GameState::getMousePositionOnScreen() const
{
	int winWidth = 0;	int winHeight = 0;
	SDL_GetWindowSize(_gameptr->getWindow(), &winWidth, &winHeight);

	//Sacamos la resolucion real que tiene el juego en la ventana
	int gameWidth; int gameHeight;
	gameWidth = GAME_RESOLUTION_X * winHeight / GAME_RESOLUTION_Y;

	if (gameWidth > winWidth)
	{
		gameHeight = GAME_RESOLUTION_Y * winWidth / GAME_RESOLUTION_X;
		gameWidth = GAME_RESOLUTION_X * gameHeight / GAME_RESOLUTION_Y;
	}
	else
		gameHeight = GAME_RESOLUTION_Y * gameWidth / GAME_RESOLUTION_X;

	//Bordes negros
	int xBorder = winWidth - gameWidth;
	int yBorder = winHeight - gameHeight;

	//Cogemos su posicion en pantalla
	int xMousePos = 0;	int yMousePos = 0;
	SDL_GetMouseState(&xMousePos, &yMousePos);

	xMousePos -= xBorder / 2;
	yMousePos -= yBorder / 2;

	/*xMousePos = (xMousePos * _mainCamera->getCameraSize().getX()) / gameWidth;
	yMousePos = (yMousePos * _mainCamera->getCameraSize().getY()) / gameHeight;*/

	return Vector2D(xMousePos, yMousePos);
}

void GameState::initializeCamera()
{
	_mainCamera = new Camera();
	_mainCamera->setCameraPosition(0, 0);
	_mainCamera->setCameraSize(CAMERA_RESOLUTION_X, CAMERA_RESOLUTION_Y);
}