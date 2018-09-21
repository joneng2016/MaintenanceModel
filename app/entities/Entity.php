<?php 
 
namespace App\Entity; 
 
class Entity 
{
	protected $name
   public function __construct($name)
   {
		$this->name = $name;
	}	
	public function hasName()
	{
		return $this->name;
	}
}
