<?php 
 
namespace App\Entity; 
 
class Permission 
{
   public function __construct($deonticRelation)
   {
		$this->deonticRelation = $deonticRelation;
   } 
	public function hasDeonticRelation()
	{
		return $this->deonticRelation;
	}
}
