<?php

	function cardinalmoneygen($belohnung,$kategorie,$gulden) {

		//init db
		include "MYSQL_PARAMS.php";
		$db = mysqli_connect($MYSQL_HOSTIP,$MYSQL_USER,$MYSQL_PASS,$MYSQL_DATABASE);
		if(!$db)
		{
		  exit("Verbindungsfehler: ".mysqli_connect_error());
		}
		mysqli_set_charset($db,'utf-8');

		//Rechne Belohnung in Gulden um
		if($gulden===0) {
			$belohnung = intval($belohnung);
			echo lang("M3_OUTPUT_1");
			$ergebnis = mysqli_query($db,"SELECT ".$SECTION_15_PART_1.",".$SECTION_15_PART_2." FROM ".$SECTION_15." WHERE ".$SECTION_15_PART_ID." LIKE ".$belohnung);
			$ergebnis = mysqli_fetch_assoc($ergebnis);
			echo $ergebnis[$SECTION_15_PART_1];
			echo lang("M3_OUTPUT_2");
			echo $ergebnis[$SECTION_15_PART_2];
			echo ".<br>";
			echo lang("M3_OUTPUT_3");
			echo rand($ergebnis[$SECTION_15_PART_1],$ergebnis[$SECTION_15_PART_2]);
			echo ".";
		}
		//Rechne Gulden in Items um
		else {			//Items aus bestimmter Kategorie wählen
			if($kategorie != "random") {

				//kategorie bestimmen
				$kategorie = intval($kategorie);
				$ergebnis = mysqli_query($db,"SELECT ".$SECTION_14_PART_1." FROM ".$SECTION_14." WHERE ".$SECTION_14_PART_ID." LIKE ".$kategorie);
				$ergebnis = mysqli_fetch_assoc($ergebnis);
				echo lang("M3_OUTPUT_4");
				echo $ergebnis[$SECTION_14_PART_1];
 				echo ".<br>";

 				//items wählen
 				$geld = intval($gulden);
 					//items werden aus gewählter kategorie entnommen, bis es keine gegenstände mehr in der kategorie gibt, die den Wert abdecken. Danach werden alle Kategorien durchsucht.
 					echo "Zufällige Items:<br>";
 					do {
 							$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_13." WHERE ".$SECTION_13_PART_3." LIKE ".$kategorie." AND (".$SECTION_13_PART_2." < ".$geld." OR ".$SECTION_13_PART_2." LIKE ".$geld.")");
							$ergebnis = mysqli_fetch_all($ergebnis);
							if($ergebnis[0]==NULL) break;
							$count = count($ergebnis);
							$randomvalue = rand(1,$count)-1;

							echo $ergebnis[$randomvalue][1];
							echo " - ";
							echo $ergebnis[$randomvalue][2];
							echo "<br>";
							$geld = $geld - $ergebnis[$randomvalue][2];
 					} while($geld != 0);

	 				while($geld != 0) {
	 					$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_13." WHERE ".$SECTION_13_PART_2." < ".$geld." OR ".$SECTION_13_PART_2." LIKE ".$geld);
							$ergebnis = mysqli_fetch_all($ergebnis);
							if($ergebnis[0]==NULL) break;
							$count = count($ergebnis);
							$randomvalue = rand(1,$count)-1;

							echo $ergebnis[$randomvalue][1];
							echo " - ";
							echo $ergebnis[$randomvalue][2];
							echo "<br>";
							$geld = $geld - $ergebnis[$randomvalue][2];
 					}
			}
			//Items aus allen Kategorien wählen
			else {
				$geld =	intval($gulden);
					 do {
	 					$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_13." WHERE ".$SECTION_13_PART_2." < ".$geld." OR ".$SECTION_13_PART_2." LIKE ".$geld);
							$ergebnis = mysqli_fetch_all($ergebnis);
							if($ergebnis[0]==NULL) break;
							$count = count($ergebnis);
							$randomvalue = rand(1,$count)-1;

							echo $ergebnis[$randomvalue][1];
							echo " - ";
							echo $ergebnis[$randomvalue][2];
							echo "<br>";
							$geld = $geld - $ergebnis[$randomvalue][2];
 					} while($geld != 0);

			}
		}

	}
?>