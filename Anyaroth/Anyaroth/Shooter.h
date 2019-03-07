#pragma once
#include "GameComponent.h"
#include "PoolWrapper.h"
#include "ShooterInterface.h"

//		La clase Shooter implementa el m�todo de disparo 
//		b�sico de las armas shoot().
//		Para hacer un nuevo tipo de disparo, hay que crear
//		una nueva clase que herede de Shooter y redefina
//		el m�todo shoot().

class Shooter : public ShooterInterface
{
public:
	Shooter() {}
	virtual ~Shooter() {}
	
	virtual void shoot(Vector2D bulletPosition, Vector2D bulletDir, double angle);
};