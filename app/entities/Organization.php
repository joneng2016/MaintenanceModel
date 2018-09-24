<?php 
 
namespace App\Entities; 
 
class Organization 
{
  	public function __construct($StructuralSpecification,$DeonticSpecification,$FunctionalSpecificaton)
	{
		$this->StructuralSpecification = $StructuralSpecification;
		$this->DeonticSpecification = $DeonticSpecification;
		$this->FunctionalSpecificaton = $FunctionalSpecificaton
	} 
	public function hasStructuralSpecification()
	{
		return $this->StructuralSpecification;	
	}
	public function hasDeonticSpecification()
	{
		return $this->DeonticSpecification;
	}
	public function hasFunctionalSpecificaton()
	{
		return $this->FunctionalSpecificaton;
	}
}