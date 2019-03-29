#pragma once
#include "PanelUI.h"
#include "ImageUI.h"
#include "ShopItem.h"
#include "ButtonUI.h"

#include <list>

class ShopPanel : public PanelUI
{
private:	
	ImageUI * _backGround = nullptr;
	ButtonUI* _exitButton = nullptr;

	//Estos items ser�n los que se muestren en la tienda
	//list<ShopItem*> _items;

	public:
		ShopPanel(Game* game);
		~ShopPanel();
};

