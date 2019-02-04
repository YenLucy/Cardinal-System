Cardinal-System - Dokumentation

Section 0 - Preparation
(1) You need 2 things to use Cardinal with your preferred system next to the core-data: a Database with data from your system and a gamesystem-file according to your system.

Section 1 - Installation
(1) Drop all Files and Folders in your webspace
(2) Drop your gamesystem-File in the gamesystem-Folder
(3) Typein your Mysql-Data to your database inside MYSQL.php
(4) open system.php and choose your gamesystem-File. (uncomment that line and comment all others.)

Appendix A - Gamesystem-File Structure
Saveplace: [webspace]/gamesystem/gamesystem-File.php
Structure: 
<?php
	function lang($phrase){
	    static $lang = array(
	    	'TITLE' => 'Cardinal-System ',

	    	'INTRO_HL' =>'Cardinal-System Version Nr. ',
	    	'INTRO_TEXT' => 'Das Cardinal-System ist eine Erweiterung des Pen and Paper. In dieser Grundfassung ist es auf Hexxen1733 gemünzt. Es kann Quests, NPCs, Belohnungswerte (gemessen an Stand, Ruf und Schwierigkeit der Quest) und in Kürze sogar Lore generieren, welche zur Region passt und beliebig vom GM eingespielt werden kann. Es ist als Spielleiter-Werkzeug zu betrachten, welches die Arbeit desselben stark vereinfachen soll.',

	        'MODULE_1' => 'Quest-Generator',
	        'M1_PART_1' => 'Stände',
	        'M1_PART_2' => 'Region',
	        'M1_PART_3' => 'Ruf',

	        ...
	    );
	    return $lang[$phrase];
	}
?>

Appendix B - Database Structure
Saveplace: external mysql-host
Structure: wip