<?php 
 
namespace App\Entities; 
 
class Probability 
{
   public function __construct($number)
   {
		$this->number = $number;
   } 
	public function hasNumber()
	{
		return $this->number;
	}
}
