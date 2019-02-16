#pragma once



////////////////////////////////////////////////////////////////
//		La clase Shooter implementa el m�todo de disparo 
//		b�sico de las armas shoot().
//		Para hacer un nuevo tipo de disparo, hay que crear
//		una nueva clase que herede de Shooter y redefina
//		el m�todo shoot().
////////////////////////////////////////////////////////////////

class Shooter
{
public:
	Shooter();
	virtual ~Shooter();

	virtual void shoot() {};
};

