#include "Player.h"
#include "PlayerControllerComponent.h"
#include "TransformComponent.h"
#include "MovingComponent.h"

Player::Player(Texture* texture) : GameComponent() {
	//Siempre primero los componentes que tienen que estar SI o SI.
	addComponent<Texture>(texture);
	//Resto de componentes
			
	auto transform = addComponent<TransformComponent>();		//Como en el metodo anterior se ha creado este componente, imprime por pantalla que ya existe uno.

	auto anim = addComponent<AnimatedSpriteComponent>();		//Como depende de Transform, en su constructura crea una si no ha encontrado Transform en el objeto.

	addComponent<MovingComponent>();
	addComponent<PlayerControllerComponent>();

	anim->addAnim("Idle", 16);
	anim->addAnim("Walk", 10);

	transform->setScale(3);
	transform->setPosition(200, 200);
	transform->setAnchor(0.5, 0.5);
	//transform->setRotation(45);



}

Player::~Player() {
}

void Player::update() {
	GameComponent::update();

	//transform->setRotation(transform->getRotation() + 0.2);
}
