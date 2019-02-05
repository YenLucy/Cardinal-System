<?php


function cardinalquestgen($stand,$region,$reputation) {
	

	include "MYSQL.php";

//  Dieser Include funktioniert momentan nicht - Wird er eingebaut, wird das PHP gekillt. Warum?
//	include "system.php";

	$db = mysqli_connect($MYSQL_HOSTIP,$MYSQL_USER,$MYSQL_PASS,$MYSQL_DATABASE);
	if(!$db)
	{
	  exit("Verbindungsfehler: ".mysqli_connect_error());
	}

	mysqli_set_charset($db,'utf-8');

	//Stand
	echo "Der Stand des Klienten ist ";
	$stand = intval($stand);
	$ergebnis = mysqli_query($db,"SELECT Name FROM Stand WHERE idStand LIKE '$stand'");
	$ergebnis = mysqli_fetch_assoc($ergebnis);
	echo $ergebnis[Name];
	echo ".";

	//Region
	echo "<br><br>Die Region des Klienten ist ";
	$region = intval($region);
	$ergebnis = mysqli_query($db,"SELECT Name FROM Region WHERE idRegion LIKE '$region'");
	$ergebnis = mysqli_fetch_assoc($ergebnis);
	echo $ergebnis[Name];
	echo ".";

	//Vorname
	echo "<br><br>Der Name des Klienten ist ";
	$ergebnis = mysqli_query($db,"SELECT Name FROM Name WHERE Region LIKE '$region'");
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue = rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];
	echo " ";

	//Nachname
	$ergebnis = mysqli_query($db,"SELECT Name FROM Nachname WHERE Region LIKE '$region' AND (Stand < '$stand' OR Stand LIKE '$stand')");
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue = rand(1,$count)-1;
	echo $ergebnis[$randomvalue][0];
	echo ".";

	//Quest
	$ergebnis = mysqli_query($db,"SELECT Questlog,BelohnungGold,BelohnungRuf FROM Nebenquest WHERE Stand LIKE '$stand'");
	$ergebnis = mysqli_fetch_all($ergebnis);
	$count = count($ergebnis);
	$randomvalue = rand(1,$count)-1;
	
	echo "<br><br>Aufgabe:<br>";
	echo $ergebnis[$randomvalue][0];
	echo "<br><br>Gold-Belohnung:<br>";
	echo $ergebnis[$randomvalue][1];
	echo "<br><br>Ruf-Folgen:<br>";
	echo $ergebnis[$randomvalue][2];
}

?>