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
		echo lang("M2_OUTPUT_2");
		$ergebnis = mysqli_query($db,"SELECT ".$SECTION_12_PART_1." FROM ".$SECTION_12);
		$ergebnis = mysqli_fetch_all($ergebnis);
		$count = count($ergebnis);
		$randomvalue= rand(1,$count)-1;
		echo $ergebnis[$randomvalue][0];
		echo ".";
	}













}
?>