#include "PlayStateHUD.h"
#include "Game.h"


PlayStateHUD::PlayStateHUD(Game * g)
{
	//Panel del jugador
	_playerPanel = new PlayerPanel(g);
	//Panel del Boss

	//A�adir a elementos
	addUIElement(_playerPanel);

}

