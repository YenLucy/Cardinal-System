<?php

function cardinalnpcgen($region,$past,$stand,$job) {

	include "MYSQL_PARAMS.php";

	//init db
	$db = mysqli_connect($MYSQL_HOSTIP,$MYSQL_USER,$MYSQL_PASS,$MYSQL_DATABASE);
	if(!$db)
	{
	  exit("Verbindungsfehler: ".mysqli_connect_error());
	}
	mysqli_set_charset($db,'utf-8');
	
	//Vorname
	echo "<br><br>";
	echo lang("M2_OUTPUT_1");
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_2_PART_2." FROM ".$SECTION_2." WHERE ".$SECTION_2_PART_1." LIKE ".$region);	
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue = rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];
	echo " ";

	//Nachname
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_1_PART_2." FROM ".$SECTION_1." WHERE ".$SECTION_1_PART_1." LIKE ".$region." AND (".$SECTION_1_PART_3." < ".$stand." OR ".$SECTION_1_PART_3." LIKE ".$stand.")");

	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue = rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];
	echo ".";

	//Verletzungen
	if($past == 1) {
		echo "<br>";
		echo lang("M2_OUTPUT_2");
		$ergebnis = mysqli_query($db,"SELECT ".$SECTION_12_PART_1." FROM ".$SECTION_12);
		$ergebnis = mysqli_fetch_all($ergebnis);
		$count = count($ergebnis);
		$randomvalue= rand(1,$count)-1;
		echo $ergebnis[$randomvalue][0];
		echo ".";
	}

	//Region
	echo "<br>";
	echo lang("M2_OUTPUT_3");
	$region = intval($region);
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_4_PART_1." FROM ".$SECTION_4." WHERE ".$SECTION_4_PART_ID." LIKE ".$region);
	$ergebnis = mysqli_fetch_assoc($ergebnis);
	echo $ergebnis[$SECTION_4_PART_1];
	echo ".";

	//Beruf und Stand
	echo "<br>";
	echo lang("M2_OUTPUT_4");
	$stand = intval($stand);
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_5_PART_1." FROM ".$SECTION_5." WHERE ".$SECTION_5_PART_ID." LIKE ".$stand);
	$ergebnis = mysqli_fetch_assoc($ergebnis);
	echo $ergebnis[$SECTION_5_PART_1];
	echo lang("M2_OUTPUT_5");
	if($job==="random") {
		$ergebnis = mysqli_query($db,"SELECT ".$SECTION_8_PART_1." FROM ".$SECTION_8." WHERE ".$SECTION_8_PART_2." LIKE ".$stand);
		$ergebnis = mysqli_fetch_all($ergebnis);
		$count = count($ergebnis);
		$randomvalue= rand(1,$count)-1;
		echo $ergebnis[$randomvalue][0];
	}	
	else {
		$job = intval($job);
		$ergebnis = mysqli_query($db,"SELECT ".$SECTION_8_PART_1." FROM ".$SECTION_8." WHERE ".$SECTION_8_PART_ID." LIKE ".$job);
		$ergebnis = mysqli_fetch_assoc($ergebnis);
		echo $ergebnis[$SECTION_8_PART_1];
	}
	echo lang("M2_OUTPUT_6");

	//Sprechart
	echo "<br>";
	echo lang("M2_OUTPUT_7");
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_10_PART_1." FROM ".$SECTION_10." WHERE ".$SECTION_10_PART_2." < ".$stand." OR ".$SECTION_10_PART_2." LIKE ".$stand);
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue= rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];
	echo ".";	

	//Kosmetika
	echo "<br>";
	echo lang("M2_OUTPUT_8");
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_9_PART_1." FROM ".$SECTION_9);
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue= rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];

	//Statur
	echo "<br>";
	echo lang("M2_OUTPUT_9");
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_11_PART_1." FROM ".$SECTION_11);
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue= rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];

}
?>