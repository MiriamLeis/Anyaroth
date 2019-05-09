#pragma once
#include "PoleAxe.h"


class BossPoleAxe : public PoleAxe
{
private:
	BodyComponent * _owner = nullptr;
public:
	BossPoleAxe(Game* game, GameObject* owner);
	virtual ~BossPoleAxe();

	void update(const double& deltaTime);
	//void chargeAttack();
	//void meleeAttack();
	//void thrustAttack();
};
