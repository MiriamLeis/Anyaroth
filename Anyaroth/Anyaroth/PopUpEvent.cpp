#include "PopUpEvent.h"
#include "GameManager.h"
#include "LevelManager.h"

void PopUpEvent::update(const double & time)
{
	if (_popUpPanel->isFinished())
		_finished = true;
}

void PopUpEvent::play()
{
	if (GameManager::getInstance()->getCurrentLevel() == LevelManager::Boss1)
	{
		_popUpPanel->addMessage({ "Notification:","You have acquired Spenta's sword and part of his power. Your health increases significantly." });
		_popUpPanel->open();
	}
}