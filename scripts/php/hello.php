#!/usr/local/bin/php

<?php

echo "Priom comrade.\nWelcome to the war.\n";

if($_GET["mode"] !== null){
	$input = $_GET["mode"];

	if($input === "Paulo")
  		echo "Faaaaaaaaaaaaaaaaaathheeeeeeeeeeeeeeer!\n";
	else if($input === "Bacalhau")
		print_bacalhau();
	else
  		echo "You are not my father.\n";
}else
 echo "No arguments.";

function print_bacalhau(){
	echo "BACALHAU?!?!?" ."\n";
	usleep(2000);
	print_bacalhau();
}
?>
