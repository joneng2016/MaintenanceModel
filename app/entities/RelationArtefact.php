<?php 
 
namespace App\Entities; 
 
class RelationArtefact 
{
   	public function __construct($artefactOne,$artefactTwo)
   	{
		$this->artetactOne = $artefactOne;
		$this->artefactTwo = $artefactTwo;
	}	
	public function hasArtefactOne()
	{
		return $artefactOne;
	}
	public function hasArtefactTwo()
	{
		return $artefactTwo;
	}
}
