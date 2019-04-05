#pragma once
#include "PanelUI.h"
#include "ImageUI.h"
#include "ButtonUI.h"
#include "ShopItem.h"

#include <list>

class Player;
class ShopMenu;

class DepotPanel : public PanelUI
{
	private:
		Player* _player;

		ImageUI* _depotFrame = nullptr;
		ImageUI* _equipmentFrame = nullptr;

		ButtonUI* _exitButton = nullptr;
		ButtonUI* _changeButton = nullptr;

		ShopItem* _firstWeapon;
		ShopItem* _secondWeapon;
		ShopItem* _meleeWeapon;

		list<ShopItem*>* _items;

		ShopItem* _selectedItem = nullptr;

		int itemsPerRow = 4, 
			itemsPerCol = 4, 
			distanceBetweenEquipmentSlots = 10;

		int itemWidth, itemHeight, itemEquipWidth, itemEquipHeight, itemSize;

	public:
		DepotPanel(Game* game);
		virtual ~DepotPanel() {};

		void inicializeCallback(ShopMenu* menu);

		void setPlayer(Player* ply) { _player = ply; }

		void setItems(list<ShopItem*>* list);
		void removeItems();

		void openDepotPanel();
		void closeDepotPanel();
		void reorderDepot();

		void changeEquipedGuns(Game* game);
		void selectItem(Game* game, ShopItem* item);
		void setDistanceWeapon(Game* game, ShopItem* item);
		void setMeleeWeapon(Game* game, ShopItem* item);

		void swapItems(ShopItem* other);
};
