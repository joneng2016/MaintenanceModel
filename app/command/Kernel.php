<?php 

namespace App\Command;


class Kernel
{
	public function createEntity($name)
	{
		$content = "<?php \n \n namespace App\Entity; \n \n class ".$name." \n { \n \n }";
		$file = fopen(__DIR__."/../entities/".$name.".php","w");
		fwrite($file,$content);
		fclose($file);
	}
	public function createEntityWithExtend($name,$son)
	{
		$content = "<?php \n \n namespace App\Entity; \n \n class ".$name." extends ".$son." \n { \n \n }";
		$file = fopen(__DIR__."/../entities/".$name.".php","w");
		fwrite($file,$content);
		fclose($file);
	}
}


