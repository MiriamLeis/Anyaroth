#pragma once

#include "GameComponent.h"
#include "TransformComponent.h"
#include "AnimatedSpriteComponent.h"
#include "BodyComponent.h"

class Interactable : public GameComponent
{
protected:
	//Componentes
	TransformComponent* _transform = nullptr;
	AnimatedSpriteComponent* _anim = nullptr;
	BodyComponent* _body = nullptr;

	bool _canInteract = false;
	GameComponent* _interactIndicator = nullptr;

	
public:
	Interactable(Game* g, double xPos, double yPos);
	virtual ~Interactable();

	virtual void update(double time);
	virtual bool handleInput(const SDL_Event& event);

	virtual void interact() {};

	void beginCollision(GameComponent * other, b2Contact* contact);
	void endCollision(GameComponent * other, b2Contact* contact);
};
