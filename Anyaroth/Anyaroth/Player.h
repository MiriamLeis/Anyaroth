#pragma once
#include "GameObject.h"
#include "TransformComponent.h"
#include "CustomAnimatedSpriteComponent.h"
#include "BodyComponent.h"
#include "PlayerArm.h"
#include "Gun.h"
#include "Money.h"
#include "Life.h"
#include "PlayerPanel.h"
#include "PoolWrapper.h"
//#include "BulletPool.h"
//#include "BouncingBulletPool.h"
#include "Melee.h"

class WeaponManager;
class Game;


class Player : public GameObject
{
private:
	Game* _game = nullptr;

	//Componentes
	TransformComponent* _transform = nullptr;
	CustomAnimatedSpriteComponent* _anim = nullptr;
	BodyComponent* _body = nullptr;
	Melee* _melee = nullptr;

	//Propiedades
	Life _life = Life(300);
	Money* _money = nullptr;
	PlayerPanel* _playerPanel = nullptr;

	//Hijos
	PlayerArm* _playerArm = nullptr;

	//Variable auxiliares
	double _dashCD = 1000;

	int _maxDash = 1, 
		_numDash = _maxDash,
		_dashDur = 250;

	bool _isDashing = false,
		_isReloading = false,
		_isShooting = false,
		_isMeleeing = false,
		_onDash = false,
		_dashDown = false;

	bool _changeLevel = false;

	int _floorCount = 0;

	float _timeToJump = 100.f;

	Gun* _currentGun = nullptr;
	Gun* _otherGun = nullptr;
	PoolWrapper* _playerBulletPool = nullptr;
	WeaponManager* _weaponManager = nullptr;

	inline bool dashIsAble() const { return _numDash > 0 && _isDashing; }
	void checkMovement(const Uint8* keyboard);
	void handleAnimations();

	void refreshCooldowns(const double& deltaTime);
	void refreshDashCoolDown(const double& deltaTime);
	void dashTimer(const double& deltaTime);
	void refreshGunCadence(const double& deltaTime);
	inline void setGrounded(bool grounded) { grounded ? _timeToJump = 100.f : _floorCount = grounded; }

	bool canReload();
	void checkMelee();

public:
	Player(Game* g, int xPos, int yPos);
	~Player();

	bool handleEvent(const SDL_Event& event);
	void update(const double& deltaTime);

	virtual void beginCollision(GameObject* other, b2Contact* contact);
	virtual void endCollision(GameObject* other, b2Contact* contact);

	void die();
	void revive();
	void subLife(int damage);

	void swapGun();
	inline void changeCurrentGun(Gun* gun) { _currentGun = gun; }
	inline void changeOtherGun(Gun* gun) { _otherGun = gun; }
	inline Gun* getCurrentGun() const { return _currentGun; }
	inline Gun* getOtherGun() const { return _otherGun; }

	void move(const Vector2D& dir, const double& speed);
	void dash(const Vector2D& dir);
	void dashOff();
	void jump();
	void cancelJump();

	void melee();
	void shoot();
	void reload();

	void setPlayerPanel(PlayerPanel* p);

	inline void setPlayerBulletPool(PoolWrapper* pool) { _playerBulletPool = pool; }
	inline void setPlayerPosition(Vector2D pos) { _body->getBody()->SetTransform(b2Vec2(pos.getX(), pos.getY()), 0); }

	void changeMelee(Melee* newMelee);

	inline bool changeLevel() const { return _changeLevel; }
	inline void setChangeLevel(bool change) { _changeLevel = change; }

	inline bool isGrounded() const { return _floorCount; }
	bool isDashing() const;
	bool isMeleeing() const;
	bool isReloading() const;
	bool isJumping() const;
	bool isFalling() const;
};