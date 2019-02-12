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

        'M1_OUTPUT_1' => 'Der Stand des Klienten ist ',
        'M1_OUTPUT_2' => 'Die Region des Klienten ist ',
        'M1_OUTPUT_3' => 'Der Name des Klienten ist ',
        'M1_OUTPUT_4' => 'Aufgabe:',
        'M1_OUTPUT_5' => 'Gold-Belohnung:',
        'M1_OUTPUT_6' => 'Ruf-Belohnung:',

        'MODULE_2' => 'NPC-Generator',
        'M2_PART_1' => 'Region',
        'M2_PART_2' => 'Tragische Vergangenheit',
        'M2_PART_3' => 'Stand',
        'M2_PART_4' => 'Job',

        'M2_OUTPUT_1' => 'Der NSC heisst ',
        'M2_OUTPUT_2' => 'Der NSC hat folgende Einschränkung: ',
        'M2_OUTPUT_3' => '',
        'M2_OUTPUT_4' => '',
        'M2_OUTPUT_5' => '',
        'M2_OUTPUT_6' => '',
        

        'MODULE_3' => 'Geld-Generator',

        'MODULE_4' => 'Lore-Generator'

    );
    return $lang[$phrase];
}

?>