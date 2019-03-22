#include "Map.h"
#include "BodyComponent.h"
#include "MeleeEnemy.h"
#include "MartyrEnemy.h"
#include "DistanceStaticEnemy.h"
#include "DistanceDynamicEnemy.h"
#include "BomberEnemy.h"
#include "SpawnerEnemy.h"
#include "StaticSpawnerEnemy.h"
#include "Coin.h"
#include "GunType_def.h"
#include <json.hpp>

using namespace nlohmann;

Map::Map(string filename, Game* game, PlayState* playstate, Texture* tileset, int coinValue) : GameObject(game), _playState(playstate), _coinValue(coinValue)
{
	_player = _playState->getPlayer();

	_layers = new GameObject(_game); addChild(_layers);
	_objects = new GameObject(_game); addChild(_objects);

	json j;
	fstream file;
	file.open(filename);
	if (file.is_open())
	{
		file >> j;
		j = j["layers"];
		for (int i = 0; i < j.size(); i++)
		{
			auto it = j[i].find("name");
			if (it != j[i].end())
			{
				if (*it == "Map" || *it == "Ground")
				{
					auto layer = new Layer(filename, *it, tileset, game, *it);
					_layers->addChild(layer);

					if(*it=="Ground")
						layer->addComponent<BodyComponent>();
				}
				else
				{
					_objectLayers.push_back(new ObjectLayer(filename, *it));
					//_objectLayers[*it] = new ObjectLayer(filename, *it);
					//_objectLayersNames.push_back(*it);
				}
			}
		}
		file.close();
	}
	else
		throw AnyarothError("No se ha encontrado el archivo introducido");

	createObjects();
}

Map::~Map()
{
	for (int i = 0; i < _objectLayers.size(); i++)
		delete _objectLayers[i];

	_objectLayers.clear();

}

void Map::createObjects()
{
	for (int i = 0; i < _objectLayers.size(); i++)
	{
		string name = _objectLayers[i]->getName();
		vector<Vector2D> pos = _objectLayers[i]->getObjectsPositions();

		for (int j = 0; j < pos.size(); j++)
		{
			if (name == "Player")
			{
				_player->setPlayerPosition(Vector2D(pos[j].getX() / M_TO_PIXEL, (pos[j].getY() - TILES_SIZE * 2) / M_TO_PIXEL));
			}
			else if (name == "Melee")
			{
				_objects->addChild(new MeleeEnemy(_player, _game, _playState, _game->getTexture("EnemyMelee"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy"));
			}
			else if (name == "Martyr")
			{
				_objects->addChild(new MartyrEnemy(_player, _game, _playState, _game->getTexture("EnemyMartyr"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy"));
			}
			else if (name == "DistanceStatic")
			{
				_objects->addChild(new DistanceStaticEnemy(_player, _game, _playState, _game->getTexture("EnemyMelee"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy", _playState->getEnemyPool()));
			}
			else if (name == "DistanceDynamic")
			{
				_objects->addChild(new DistanceDynamicEnemy(_player, _game, _playState, _game->getTexture("EnemyMelee"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy", _playState->getEnemyPool()));
			}
			else if (name == "Bomber")
			{
				_objects->addChild(new BomberEnemy(_player, _game, _playState, _game->getTexture("EnemyMartyr"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy", _playState->getExplosivePool()));
			}
			else if (name == "Spawner")
			{
				_objects->addChild(new SpawnerEnemy(_player, _game, _playState, _game->getTexture("EnemyMelee"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy"));
			}
			else if (name == "SpawnerStatic")
			{
				_objects->addChild(new StaticSpawnerEnemy(_player, _game, _playState, _game->getTexture("EnemyMelee"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE * 2), "Enemy"));
			}
			else if (name == "Coin")
			{
				_objects->addChild(new Coin(_game, _game->getTexture("Coin"), Vector2D(pos[j].getX(), pos[j].getY() - TILES_SIZE), _coinValue));
			}
		}
	}
}

void Map::restartLevel()
{
	_objects->destroyAllChildren();
	createObjects();
}

bool Map::handleEvent(const SDL_Event & event)
{
	GameObject::handleEvent(event);

	/*for (Layer* l : _layers)
		if (l->isActive())
			l->handleEvent(event);*/

	return false;
}

void Map::update(const double& deltaTime)
{
	GameObject::update(deltaTime);

	/*for (Layer* l : _layers)
		if (l->isActive())
			l->update(deltaTime);*/
}

void Map::render(Camera * c) const
{
	GameObject::render(c);

	/*for (Layer* l : _layers)
		if (l->isActive())
			l->render(c);*/
}