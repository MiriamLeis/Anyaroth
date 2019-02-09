#include "Gun.h"
#include "AnimatedSpriteComponent.h"


Gun::Gun(Texture* texture, GameComponent* player, int maxAmmunition, int magazine) : GameComponent()
{
	//en principio su transform es el mismo que el del jugador;
	_playerTransform = player->getComponent<TransformComponent>();

	auto transform = addComponent<TransformComponent>(); //new TransformComponent();
	addComponent<AnimatedSpriteComponent>();
	//addRenderComponent(new SpriteComponent(transform, texture));

	_maxAmmo = maxAmmunition;
	_clip = magazine;
	_ammoOnClip = magazine;
	if (maxAmmunition > magazine * 3)
	{
		_leftAmmo = magazine * 2;
	}

}


Gun::~Gun()
{
	_playerTransform = nullptr;
}

void Gun::update()
{
	getComponent<TransformComponent>()->setPosition(_playerTransform->getPosition().getX(), _playerTransform->getPosition().getY());
}