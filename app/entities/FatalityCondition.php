<?php 
 
namespace App\Entities; 
 
class FatalityCondition 
{
   public function __construct($describeFatality)
   {
		$this->describeFatality = $describeFatality;
   } 
	public function hasFatality()
	{
		return $this->describeFatanlity;
	}
}
