<?php


function cardinalquestgen($stand,$region,$reputation) {
	
	include "MYSQL_PARAMS.php";

	$db = mysqli_connect($MYSQL_HOSTIP,$MYSQL_USER,$MYSQL_PASS,$MYSQL_DATABASE);
	if(!$db)
	{
	  exit("Verbindungsfehler: ".mysqli_connect_error());
	}

	mysqli_set_charset($db,'utf-8');

	//Stand
	echo lang("M1_OUTPUT_1");
	$stand = intval($stand);
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_5_PART_1." FROM ".$SECTION_5." WHERE ".$SECTION_5_PART_ID." LIKE ".$stand);
	$ergebnis = mysqli_fetch_assoc($ergebnis);
	echo $ergebnis[$SECTION_5_PART_1];
	echo ".";

	//Region
	echo "<br><br>";
	echo lang("M1_OUTPUT_2");
	$region = intval($region);
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_4_PART_1." FROM ".$SECTION_4." WHERE ".$SECTION_4_PART_ID." LIKE ".$region);
	$ergebnis = mysqli_fetch_assoc($ergebnis);
	echo $ergebnis[$SECTION_4_PART_1];
	echo ".";

	//Vorname
	echo "<br><br>";
	echo lang("M1_OUTPUT_3");
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

	//Quest
	$ergebnis = mysqli_query($db,"SELECT ".$SECTION_3_PART_1.",".$SECTION_3_PART_3.",".$SECTION_3_PART_4." FROM ".$SECTION_3." WHERE ".$SECTION_3_PART_2." LIKE ".$stand);	
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue = rand(1,$count)-1;
	
	echo "<br><br>";
	echo lang("M1_OUTPUT_4");
	echo "<br>";
	echo $ergebnis[$randomvalue][0];

	echo "<br><br>";
	echo lang("M1_OUTPUT_5");
	echo "<br>";
	echo $ergebnis[$randomvalue][1];
	
	echo "<br><br>";
	echo lang("M1_OUTPUT_6");
	echo "<br>";
	echo $ergebnis[$randomvalue][2];
}

?>