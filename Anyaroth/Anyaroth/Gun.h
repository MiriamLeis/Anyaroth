#pragma once
#include "GameComponent.h"
class Gun :
	public GameComponent
{
private:
	/*
	Clip es el tama�o del cargador,maxAmmo es la cantidad maxima de municion que puedes tener
	entre la que tienes actualmente en el cargador(ammoOnClip) y la que tienes fuera de �l(leftAmmo)
	es decir leftAmmo + ammoOnClip !> maxAmmo.
	*/
	int maxAmmo,leftAmmo;
	int clip,ammoOnClip;
	TransformComponent* playerTransform;
public:
	Gun(Texture* texture, TransformComponent* player ,int maxAmmunition, int magazine);
	virtual ~Gun();
	void update();
};

