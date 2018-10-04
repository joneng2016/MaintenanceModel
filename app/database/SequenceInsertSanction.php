<?php 
 
namespace App\DB;

class SequenceInsertSanction
{	  
	public function insert($object)
	{
		$formalize = new FormalizeQueryToCall;
		$longConsequenceId = $formalize->insertChangeGoal($object->nameConditionChangeGoal,$object->newProbability);
		$formalize->insertRisk($object->riskName);
		$shortConsequenceId = $formalize->insertShortConsequence($object->riskName,$object->fatalityCondition);
		$sanctionId = $formalize->insertSanction($shortConsequenceId,$longConsequenceId);
		$formalize->insertConditionSanction($formalize->conditionNameToThisSanction,$sanctionId);
	}
}
