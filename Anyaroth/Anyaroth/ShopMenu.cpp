﻿#include "ShopMenu.h"
#include "Game.h"
#include "Player.h"

ButtonUI* ShopMenu::_shopButton = nullptr;
ButtonUI* ShopMenu::_talkButton = nullptr;
ButtonUI* ShopMenu::_depotButton = nullptr;
ButtonUI* ShopMenu::_exitButton = nullptr;
DialoguePanel* ShopMenu::_dialoguePanel = nullptr;
ShopPanel* ShopMenu::_shopPanel = nullptr;

ShopMenu::ShopMenu(Game* game) : PanelUI(game)
{
	_shopButton = new ButtonUI(game, game->getTexture("Button"), 5, 10, openShopPanel, { 0,1,2,3 });
	_talkButton = new ButtonUI(game, game->getTexture("Button"), 5, 30, startTalking, { 0,1,2,3 });
	_depotButton = new ButtonUI(game, game->getTexture("Button"), 5, 50, openDepotPanel, { 0,1,2,3 });
	_exitButton = new ButtonUI(game, game->getTexture("Button"), 5, 70, exit, { 0,1,2,3 });

	_dialoguePanel = new DialoguePanel(game, true);

	addChild(_shopButton);
	addChild(_talkButton);
	addChild(_depotButton);
	addChild(_exitButton);

	addChild(_dialoguePanel);

	_shopPanel = new ShopPanel(game);
	_shopPanel->setVisible(false);

	addChild(_shopPanel);

}

void ShopMenu::openShop()
{
	_visible = true;
	_player->setActive(false);
	open();
}

void ShopMenu::open()
{
	_dialoguePanel->startDialogue({
	_game->getTexture("DialogueFace"),
	"exampleVoice",
	"Jose Mar�a",
	{ "*Bzzt..Bip, bip..* Hey, �qu� tal?",
	"Aj�, con que programando... ya veo...",
	"�Pues sigue con eso, chaval! Deja de jugar tanto al Sekiro y ponte a estudiar de una maldita vez, escoria infrahumana (...) �Adew! *Bip*" },
	{ 0,1,2 },
	{ " ", " ", " ", " " }
		});
}

void ShopMenu::closeShop()
{
	_visible = false;
	_player->setActive(true);
	reset();
}

void ShopMenu::reset()
{
	_dialoguePanel->endDialogue();
}

void ShopMenu::ableMainMenu(Game * game)
{
	_shopButton->setVisible(true);
	_talkButton->setVisible(true);
	_depotButton->setVisible(true);
	_exitButton->setVisible(true);
}

void ShopMenu::disableMainMenu(Game * game)
{
	_shopButton->setVisible(false);
	_talkButton->setVisible(false);
	_depotButton->setVisible(false);
	_exitButton->setVisible(false);
}

void ShopMenu::openShopPanel(Game* game)
{
	disableMainMenu(game);
	_shopPanel->setVisible(true);
}

void ShopMenu::closeShopPanel(Game * game)
{
	ableMainMenu(game);
	_shopPanel->setVisible(false);
}

void ShopMenu::startTalking(Game* game)
{

}

void ShopMenu::stopTalking(Game * game)
{

}

void ShopMenu::openDepotPanel(Game* game)
{

}

void ShopMenu::closeDepotPanel(Game * game)
{

}

void ShopMenu::exit(Game* game)
{

}
