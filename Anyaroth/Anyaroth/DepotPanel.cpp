#include "DepotPanel.h"
#include "Player.h"
#include "ShopMenu.h"
#include <functional>
#include <algorithm>
#include "Game.h"

Player* DepotPanel::_player = nullptr; 
ShopItem* DepotPanel::_firstWeapon = nullptr;
ShopItem* DepotPanel::_secondWeapon = nullptr;
ShopItem* DepotPanel::_meleeWeapon = nullptr;

DepotPanel::DepotPanel(Game* game) : PanelUI(game)
{
	//----MARCOS----//

	_depotFrame = new ImageUI(game, game->getTexture("ShopPanel"), 5, 5);
	_depotFrame->setSize(_depotFrame->getW() * 2, _depotFrame->getH()); //POSIBLEMENTE PROVISIONAL
	_equipmentFrame = new ImageUI(game, game->getTexture("ShopPanel"), _depotFrame->getX() + _depotFrame->getW() + 10, 5);
	_equipmentFrame->setSize(_equipmentFrame->getW() * 0.75, _equipmentFrame->getH() * 0.75);

		//A�adir como hijo
	addChild(_depotFrame);
	addChild(_equipmentFrame);

	//----BOTON DE SALIR----//

	_exitButton = new ButtonUI(game, game->getTexture("Button"), ShopMenu::closeDepotPanel, { 0,1,2,3 });
	_exitButton->setPosition(_depotFrame->getX(), _depotFrame->getY() + _depotFrame->getH() + 2);
	_exitButton->setSize(_depotFrame->getW(), _exitButton->getH() + 4); //POSIBLEMENTE PROVISIONAL

		//A�adir como hijo
	addChild(_exitButton);

	//----EQUIPAMIENTO----//

		//Crear celdas
	int distanceBetweenSlots = 10;
	int itemWidth = (_equipmentFrame->getW() / 2) - (distanceBetweenSlots + distanceBetweenSlots / 2);
	int itemHeight = itemWidth;

	_firstWeapon = new ShopItem(game, game->getTexture("InfoIcon"));
	_firstWeapon->setSize(itemWidth, itemHeight); //POSIBLEMENTE PROVISIONAL
	_firstWeapon->setPosition(_equipmentFrame->getX() + distanceBetweenSlots,
							_equipmentFrame->getY() + _equipmentFrame->getH() / 4 + distanceBetweenSlots * 0.5);

	_secondWeapon = new ShopItem(game, game->getTexture("Dash"));
	_secondWeapon->setSize(itemWidth, itemHeight); //POSIBLEMENTE PROVISIONAL
	_secondWeapon->setPosition(_firstWeapon->getX() + _firstWeapon->getW() + distanceBetweenSlots, 
							_firstWeapon->getY());

	_meleeWeapon = new ShopItem(game, game->getTexture("InfoIcon"));
	_meleeWeapon->setSize(itemWidth, itemHeight); //POSIBLEMENTE PROVISIONAL
	_meleeWeapon->setPosition(_equipmentFrame->getX() + _equipmentFrame->getW() / 2 - itemWidth / 2, 
								_firstWeapon->getY() + _firstWeapon->getH() + distanceBetweenSlots);

		//Callbacks
	_firstWeapon->onDown([this](Game* game) { setDistanceWeapon(game); });
	_secondWeapon->onDown([this](Game* game) { setDistanceWeapon(game); });
	_meleeWeapon->onDown([this](Game* game) { setMeleeWeapon(game); });

		//A�adir como hijo
	addChild(_firstWeapon);
	addChild(_secondWeapon);
	addChild(_meleeWeapon);

	//----BOTON DE CAMBIO DE EQUIPAMIENTO----//

	_changeButton = new ButtonUI(game, game->getTexture("Button"), [this](Game* game) {changeEquipedGuns(game); }, { 0,1,2,3 });
	_changeButton->setSize(itemWidth * 0.75, itemHeight / 2); //POSIBLEMENTE PROVISIONAL
	_changeButton->setPosition(_equipmentFrame->getX() + _equipmentFrame->getW() / 2 - _changeButton->getW() / 2,
								_firstWeapon->getY() - _changeButton->getH() - distanceBetweenSlots * 0.25);

		//A�adir como hijo
	addChild(_changeButton);

	//----ALMACEN----//
}

DepotPanel::~DepotPanel()
{
	for (auto item : _items)
		removeChild(item);
}

void DepotPanel::changeEquipedGuns(Game* game)
{
	_player->swapGun();

	auto firstWeaponInfo = _firstWeapon->getItemInfo();
	auto firstWeaponImage = _firstWeapon->getItemImage();

	_firstWeapon->setItemInfo(_secondWeapon->getItemInfo());
	_firstWeapon->setItemImage(_secondWeapon->getItemImage());

	_secondWeapon->setItemInfo(firstWeaponInfo);
	_secondWeapon->setItemImage(firstWeaponImage);
}

void DepotPanel::selectDistanceWeapon(Game* game)
{
	
}

void DepotPanel::setDistanceWeapon(Game* game)
{
	if (_selectedItem != nullptr)
		cout << "cambio arma";
}


void DepotPanel::selectMeleeWeapon(Game* game)
{

}

void DepotPanel::setMeleeWeapon(Game* game)
{
	if (_selectedItem != nullptr)
		cout << "cambio melee";
}

void DepotPanel::setItems(list<ShopItem*>& list)
{
	//Esto se cambiara dependiendo de X factores. 
	//De momento es una copia modificada del de CatalogPanel (para tener algo con lo que trabajar)
	_items = list;
	
	int margin = 20; // PROBABLEMENTE PROVISIONAL TAMBIEN
	itemWidth = (_depotFrame->getW() - margin) / itemsPerRow;
	itemHeight = (_depotFrame->getH() - margin) / itemsPerCol;

	itemHeight < itemWidth ? itemSize = itemHeight : itemSize = itemWidth;

	for (auto it : _items)
	{
		it->onDown([this, it](Game* game) {	selectItem(game, it); });
		it->setSize(itemSize, itemSize);
		it->setVisible(false);

		addChild(it);
	}
	reorderDepot();
}

void DepotPanel::selectItem(Game * game, ShopItem* item)
{
	_selectedItem = item;
}

void DepotPanel::reorderDepot()
{
	int xOffset = (_depotFrame->getW() - itemSize * itemsPerRow) / (itemsPerRow + 1);
	int yOffset = (_depotFrame->getH() - itemSize * itemsPerCol) / (itemsPerCol + 1);

	ShopItem* primItem = nullptr;

	auto it = _items.begin();
	int fil = 0;
	while (fil < itemsPerCol && it != _items.end())
	{
		int col = 0;
		while (it != _items.end() && col < itemsPerRow)
		{
			auto item = *it;
			auto info = item->getItemInfo();

			if (info._sell && !info._equiped)
			{
				item->setVisible(true);
				if (primItem == nullptr)
				{
					item->setPosition(_depotFrame->getX() + xOffset, _depotFrame->getY() + yOffset);
					primItem = item;
				}
				else
					item->setPosition(primItem->getX() + (primItem->getW() + xOffset) * col, primItem->getY() + (primItem->getH() + yOffset) * fil);

				col++;
			}
			it++;
		}
		fil++;
	}
}