#include "Colider.h"

void Colider::RunOnEnter(Colider* _colider)
{

	if (!isTrigger)gameobject->RunOnColiderEnter(_colider);
	else gameobject->RunOnTriggerEnter(_colider);
}
void Colider::RunOnStay(Colider* _colider)
{
	if (!isTrigger)gameobject->RunOnColiderStay(_colider);
	else gameobject->RunOnTriggerStay(_colider);
}
void Colider::RunOnExit(Colider* _colider)
{
	if (!isTrigger)gameobject->RunOnColiderExit(_colider);
	else gameobject->RunOnTriggerExit(_colider);
}