<?php 
 
namespace App\Entities; 
 
class StructuralSpecification 
{
	public function __construct($group)
   	{
   		$this->group = $group;
   	}
   	public function hasGroup()
   	{
   		return $this->group;
   	} 
}