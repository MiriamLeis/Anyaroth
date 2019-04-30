#pragma once
#include "DistanceEnemy.h"
#include "BossPanel.h"
#include "Melee.h"

enum Fase
{
	Fase1, Fase2, Fase3, BetweenFase
};

enum State
{
	Moving, Shooting, Bombing, Meleeing, OrbAttacking,Jumping
};

class Boss : public DistanceEnemy
{
protected:
	Vector2D _bodyPos, _playerPos, _originalPos;
	int _actualFase = Fase1, _lastFase = Fase1, _actualState = Moving;

	BodyComponent* _playerBody;

	//Vida
	Life _life1, _life2, _life3;

	//Panel del HUD
	BossPanel* _bossPanel = nullptr;

	//Tiempo entre acciones
	int _doSomething = 1000, _noAction = 0;

	//Melee
	Melee* _melee = nullptr;

public:
	Boss(Game* g, Player* player, Vector2D pos, BulletPool* pool, Texture* text);
	virtual ~Boss();

	void setBossPanel(BossPanel* b);
	void drop() {}

	bool inline const isbeetweenFases() { return _actualFase==BetweenFase; }
	int inline const getLastFase() { return _lastFase; }

	virtual void update(const double& deltaTime);

	virtual void subLife(int damage);
	virtual void manageLife(Life& l, int damage);

	virtual void movement(const double& deltaTime) {}

	virtual void beginCollision(GameObject* other, b2Contact* contact);

	virtual void meleeAttack();
	bool inline const isMeleeing() { return ((_anim->getCurrentAnim() == AnimatedSpriteComponent::EnemyAttack) && !_anim->animationFinished()); }
	virtual void checkMelee();

	virtual void fase1(const double& deltaTime) {};
	virtual void fase2(const double& deltaTime) {};
	virtual void fase3(const double& deltaTime) {};
	virtual void beetwenFases(const double& deltaTime) {};
	virtual void changeFase(int fase);
};