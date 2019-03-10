#include "MartyrEnemy.h"
#include "GameComponent.h"
#include "AnimatedSpriteComponent.h"
#include "Player.h"
#include "BodyComponent.h"


MartyrEnemy::MartyrEnemy(Player* player, Game* g, PlayState* play,Texture* texture, Vector2D posIni, string tag) : Enemy(player, g, play,texture, posIni, tag)
{
	_vision = 300;
	_attackRange = 25; //No se puede poner mas peque�o que la velocidad
	_attackTime = 800;
	_canDie = 1000; //Tiempo que pasa entre que el enemigo ataca y se destruye
	_life = 50;
	_damage = 80;

	_anim->addAnim(AnimatedSpriteComponent::EnemyIdle, 14, true);
	_anim->addAnim(AnimatedSpriteComponent::EnemyWalk, 5, true);
	_anim->addAnim(AnimatedSpriteComponent::EnemyAttack, 23, false);
	_anim->addAnim(AnimatedSpriteComponent::EnemyDie, 10, false);

	_anim->playAnim(AnimatedSpriteComponent::EnemyIdle);

	_body->setW(30);
	_body->setH(15);
	_body->addCricleShape(b2Vec2(0, _body->getH() + _body->getH() / 20), _body->getW() - _body->getW() / 20, ENEMIES, FLOOR | PLAYER_BULLETS | MELEE);
}

void MartyrEnemy::update()
{
	Enemy::update();
	if (!_dead && inCamera())
	{
		BodyComponent* _playerBody = _player->getComponent<BodyComponent>();

		b2Vec2 enemyPos = _body->getBody()->GetPosition(),
			playerPos = _playerBody->getBody()->GetPosition();

		double x = playerPos.x * 8 - enemyPos.x * 8,
			y = playerPos.y * 8 - enemyPos.y * 8;

		if (!_attacking && x < _vision && x > -_vision && y < _vision && y > -_vision)
		{
			if (x > 0) //Derecha
			{
				_anim->unFlip();

				if ((x > _attackRange))
				{
					_body->getBody()->SetLinearVelocity({ 20,_body->getBody()->GetLinearVelocity().y });
					_anim->playAnim(AnimatedSpriteComponent::EnemyWalk);
				}
				else if (y > _attackRange || y < -_attackRange)
				{
					_body->getBody()->SetLinearVelocity({ 0,_body->getBody()->GetLinearVelocity().y });
					_anim->playAnim(AnimatedSpriteComponent::Idle);
				}
				else
				{
					_body->getBody()->SetLinearVelocity({ 0,_body->getBody()->GetLinearVelocity().y });
					_anim->playAnim(AnimatedSpriteComponent::EnemyAttack); //Llamas a animacion de ataque
					_time = SDL_GetTicks();
					_attacking = true;
				}
			}
			else if (x < 0) //Izquierda
			{
				_anim->flip();

				if (x < -_attackRange)
				{
					_body->getBody()->SetLinearVelocity({ -20,_body->getBody()->GetLinearVelocity().y });
					_anim->playAnim(AnimatedSpriteComponent::EnemyWalk);
				}
				else if (y > _attackRange || y < -_attackRange)
				{
					_body->getBody()->SetLinearVelocity({ 0,_body->getBody()->GetLinearVelocity().y });
					_anim->playAnim(AnimatedSpriteComponent::Idle);
				}
				else
				{
					_body->getBody()->SetLinearVelocity({ 0,_body->getBody()->GetLinearVelocity().y });
					_anim->playAnim(AnimatedSpriteComponent::EnemyAttack); //Llamas a animacion de ataque
					_time = SDL_GetTicks();
					_attacking = true;
				}
			}
		}
		else if (_attacking)
		{
			if (SDL_GetTicks() > _time + _attackTime)
			{

				if ((x < _explosionRange && x > -_explosionRange) && y < _explosionRange && y > -_explosionRange)
				{
					auto body = _player->getComponent<BodyComponent>()->getBody();
					_player->subLife(_damage);

					if (x < 20 && x > -20 && y < 20 && y > -20)
						body->ApplyLinearImpulseToCenter(b2Vec2(_impulse * x * 100000, -_impulse * y * 100000), true);
					else
						body->ApplyLinearImpulseToCenter(b2Vec2(_impulse * x, _impulse * y), true);
				}
				_dead = true;
				die();
			}
		}
		else
		{
			_body->getBody()->SetLinearVelocity({ 0,_body->getBody()->GetLinearVelocity().y });
			_anim->playAnim(AnimatedSpriteComponent::Idle);
		}
	}
}