<?php 
 
namespace App\Entity; 
 
class InThatInstant 
{
	private $entity;
	private $situation = null;
	private $position_x = null;
	private $position_y = null;
	private $position_z = null;
   public function __construct(Entity $entity)
   {
		$this->entity = $entity;
   } 
	public function loadSituation($situation)
	{
		$this->situaiton = $situation;
	}
	public function loadPositionX($position_x = null, $position_y = null, $position_z = null)
	{
		$this->position_x = $position_x;
		$this->position_y = $position_y;
		$this->position_z = $position_z;
	}
	public function hasPositionX()
	{
		return $this->position_x;
	}
	public function hasPositionY()
	{
		return $this->position_y;
	}
	public function hasPositionZ()
	{
		return $this->position_z;
	}
	public function hasEntity()
	{
		return $this->entity;
	}
}
