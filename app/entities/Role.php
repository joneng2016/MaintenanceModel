<?php 
 
namespace App\Entities; 
 
class Role 
{
    public function __construct($description)
    {
  		$this->description = $description;
    } 
	public function hasDescription()
	{
		return $this->description;
	}
}

