#pragma once
#include "PanelUI.h"
#include "ImageUI.h"
#include "ShopItem.h"
#include <list>
#include "ButtonUI.h"

class ShopPanel : public PanelUI
{
private:	


	//Estos items ser�n los que se muestren en la tienda
	//list<ShopItem*> _items;

	public:
		ShopPanel(Game* game);
		~ShopPanel();
};

