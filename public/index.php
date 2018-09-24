<?php
	
require_once '../vendor/autoload.php';
//(new \App\Command\RunningCommand)->createEntity();

(new \App\Ontology\MaintenanceLiveLine)->running();
