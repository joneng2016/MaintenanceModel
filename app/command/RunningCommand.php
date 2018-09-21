<?php 

namespace App\Command;

class RunningCommand
{
	public function __construct()
	{
		$this->kernel = new Kernel;
	}
	public function createEntity()
	{

		$this->kernel->createEntityWithExtend('Artefact','Entity');
		$this->kernel->createEntityWithExtend('Object','Artefact');
		$this->kernel->createEntityWithExtend('Tool','Artefact');
		$this->kernel->createEntityWithExtend('Agent','Entity');

		$entities = [	
				  			'Entity',
				  			'Situaiton',
				  			'SpacialPosition',
							'InThatInstant',
							'RelationToolObject',
							'RelationAgentTool',
							'Condition',
							'Sanction',
							'ShortConsequence',
							'Risk',
							'FatalityCondition',
							'GroupGreen',
							'GroupRed',
							'GroupYellow',
				 			'GroupBlue',
							'GroupBlown',
							'LongConsequence',
							'ChargeGoal',
							'Probability',
							'Goal',
							'Plan',
							'Type',
							'Mission',
							'Role',
							'DeonticRelation',
							'Link',
							'Heritage',
							'Compatibility',	
							'Group',
							'Obligation',
							'Permission',
							'StructuralSpecification',
							'DeonticSpecification',
							'FunctionalSpecification',
							'Schema',
							'Organization'
				 ];

		foreach($entities as $entity)
			$this->kernel->createEntity($entity);
	}
}


