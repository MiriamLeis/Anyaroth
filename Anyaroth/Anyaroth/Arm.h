#pragma once
#include "GameComponent.h"
#include "TransformComponent.h"
#include "AnimatedSpriteComponent.h"
#include "FollowingComponent.h"
#include "checkML.h"

#define PI 3.14159265

class PlayState;
class Gun;

class Arm : public GameComponent
{
protected:
	TransformComponent* _transform = nullptr;
	GameComponent* _owner = nullptr;
	AnimatedSpriteComponent* _anim = nullptr;
	FollowingComponent* _followC = nullptr;
	Camera* _cam = nullptr;
	Gun* _currentGun = nullptr;

public:
	Arm(Texture* texture, GameComponent* owner, Game* g, PlayState* play, Vector2D offset = { 0,0 });
	virtual ~Arm();

	inline Camera* getCamera() const { return _cam; } //Necesario para el ArmController
	void setOwner(Vector2D offset, GameComponent* owner);
	void setArmSprite(Texture* armTex);

	void rotate(Vector2D target);

	void setGun(Gun* gun); //Establece el arma
	virtual void shoot();
  
	inline Gun* getCurrentGun() const { return _currentGun; }
};