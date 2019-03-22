#pragma once
#include "GameObject.h"
#include "Layer.h"
#include "ObjectLayer.h"
#include <vector>

class PlayState;
class Player;

class Map : public GameObject
{
private:
	Player* _player = nullptr;
	PlayState* _playState = nullptr;

	//vector<Layer*> _layers;
	GameObject* _layers;

	vector <ObjectLayer*> _objectLayers;
	//vector<string> _objectLayersNames;

	//list<GameObject*>* _objects;
	GameObject* _objects;

	int _coinValue;

public:
	Map(string filename, Game* game, PlayState* playstate, Texture* tileset, int coinValue);
	~Map();

	void createObjects();
	void restartLevel();

	virtual bool handleEvent(const SDL_Event& event);
	virtual void update(const double& deltaTime);
	virtual void render(Camera* c) const;
};