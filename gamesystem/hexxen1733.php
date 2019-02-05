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

        'MODULE_2' => 'NPC-Generator',

        'MODULE_3' => 'Geld-Generator',

        'MODULE_4' => 'Lore-Generator'

    );
    return $lang[$phrase];
}

$mysql_input = array(
	'SECTION_1' => 'Nachname',
	'SECTION_2' => 'Name',
	'SECTION_3' => 'Nebenquest',
	'SECTION_4' => 'Region',
	'SECTION_5' => 'Stand',
	'SECTION_1-PART_ID' => 'idNachname',
	'SECTION_1-PART_1' => 'Region',
	'SECTION_1-PART_2' => 'Name',
	'SECTION_1-PART_3' => 'Stand',
	'SECTION_2-PART_ID' => 'idName',
	'SECTION_2-PART_1' => 'Region',
	'SECTION_2-PART_2' => 'Name',
	'SECTION_3-PART_ID' => 'idNebenquest',
	'SECTION_3-PART_1' => 'Questlog',
	'SECTION_3-PART_2' => 'Stand',
	'SECTION_3-PART_3' => 'BelohnungGold',
	'SECTION_3-PART_4' => 'BelohnungRuf',
	'SECTION_4-PART_ID' => 'idRegion',
	'SECTION_4-PART_1' => 'Name',
	'SECTION_5-PART_ID' => 'idStand',
	'SECTION_5-PART_1' => 'Name'
);


?>