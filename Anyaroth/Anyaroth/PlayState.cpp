#include "PlayState.h"
#include "Game.h"
#include "BodyComponent.h"
#include "FollowingComponent.h"
#include "checkML.h"
#include "Coin.h"
#include "ParallaxBackGround.h"
#include "ParallaxLayer.h"

PlayState::PlayState(Game* g) : GameState(g)
{
	//Tilemap

	_colLayer = new Layer("Capa de Patrones 1", g->getTexture("tileset"), TILEMAP_PATH + "level.json", g, "Suelo");
	_colLayer->addComponent<BodyComponent>();
	_stages.push_back(_colLayer);

	//----Pools de balas

	//Pool arma b�sica
	_examplePool = new BulletPool<100>(g, g->getTexture("PistolBullet"), 100, 10);
	_stages.push_back(_examplePool);

	//cuerpo
	_player = new Player(g->getTexture("Mk"), g, this, "Player");
	_stages.push_back(_player);

	_mainCamera->fixCameraToObject(_player);

	//Enemy

	_enemy = new MeleeEnemy(_player, g, this, g->getTexture("EnemyMelee"), Vector2D(260, 60), "Enemy");
	_stages.push_back(_enemy);
  
	Coin* coin = new Coin(this, g, g->getTexture("Coin"), Vector2D(100, 75), 20);
	_stages.push_back(coin);

	auto itFR = --(_stages.end());
	coin->setItList(itFR);

	/*_enemy = new MartyrEnemy(_player, g, this, g->getTexture("Mk"), Vector2D(50, 100),"Enemy");
	_stages.push_back(_enemy);*/

	itFR = --(_stages.end());

	_enemy->setItList(itFR);
	
	//Camera BackGound
	ParallaxBackGround* a = new ParallaxBackGround(_mainCamera);
	a->addLayer(new ParallaxLayer(g->getTexture("BgZ1L1"), _mainCamera,0.5));
	a->addLayer(new ParallaxLayer(g->getTexture("BgZ1L2"), _mainCamera,1));
	a->addLayer(new ParallaxLayer(g->getTexture("BgZ1L3"), _mainCamera,1.5));
	_mainCamera->setBackGround(a);
	
}

void PlayState::KillObject(list<GameObject*>::iterator itList)
{
	//delete *itList;
	items_ToDelete.push_back(itList);
}


void PlayState::handleEvents(SDL_Event& e)
{
	GameState::handleEvents(e);
}

void PlayState::update()
{
	GameState::update();

	int i = items_ToDelete.size() - 1;
	while (i >= 0)
	{
		delete *items_ToDelete[i];
		_stages.erase(items_ToDelete[i]);
		items_ToDelete.pop_back();
		i--;
	}
}