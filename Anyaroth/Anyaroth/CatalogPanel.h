#pragma once
#include "PanelUI.h"
#include "ImageUI.h"
#include "ShopItem.h"
#include "ButtonUI.h"

#include <list>

class ShopMenu;

class CatalogPanel : public PanelUI
{
	private:
		ImageUI* frame = nullptr;
		ButtonUI* _exitButton = nullptr;

		//Estos items ser�n los que se muestren en la tienda
		//list<ShopItem*> _items;

	public:
		CatalogPanel(Game* game);

	/*	void openCatalog();
		void closeCatalog();*/
};

