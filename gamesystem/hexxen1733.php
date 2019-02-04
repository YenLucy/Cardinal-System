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



?>