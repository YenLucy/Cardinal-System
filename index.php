<!DOCTYPE html>
<html>
	<?php
		$CardinalVersionNumber = 0.1;
	?>

	<head>
		<title>
			Cardinal Version <?= $CardinalVersionNumber ?>
		</title>
		
		<link rel="stylesheet" href="CSS/CardinalStyles.css">

		<meta charset="UTF-8">
		<meta name="description" content="Automatic Generator for Quests, NPCs and Content">
		<meta name="keywords" content="Hexxen, Roleplay, PNP, CARDINAL, SYSTEM">
		<meta name="author" content="Yennefer Lilith Lucy Rinkleff">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>

		<?php 
			include "cardinal-questgen.php";
		 ?>

		<div class="cardinal-wrapper">

			<div class="intro">
				<h1>Cardinal-System - Version Nr. <?= $CardinalVersionNumber ?></h1>
				<p class="introtext">Das Cardinal-System ist eine Erweiterung des Pen and Paper. In dieser Grundfassung ist es auf Hexxen1733 gemünzt. Es kann Quests, NPCs, Belohnungswerte (gemessen an Stand, Ruf und Schwierigkeit der Quest) und in Kürze sogar Lore generieren, welche zur Region passt und beliebig vom GM eingespielt werden kann. Es ist als Spielleiter-Werkzeug zu betrachten, welches die Arbeit desselben stark vereinfachen soll.</p>
			</div>

			<div class="quest-outerwrapper outerwrapper">
				<h2 class="headline">Quest-Generator</h2>
				<div class="quest-innerwrapper innerwrapper">
					<form class="quest-input input">
						
						<div class="questgen-staende">
						<h3>Stände</h3>
						<select name="staende" class="select stand">
							<option value=0>Gesindel</option>
							<option value=1>Bedienstete</option>
							<option value=2>Unehrliche</option>
							<option value=3>Unreine</option>
							<option value=4>Handwerker</option>
							<option value=5>Gelehrte</option>
							<option value=6>Gehobene</option>
							<option value=7>Kriegsvolk</option>
							<option value=8>Geistliche</option>
							<option value=9>Patrizier</option>
							<option value=10>Adlige</option>
							<option value=11>Jäger</option>
						</select>
						</div>
						
						<div class="questgen-region">
						<h3>Region</h3>
						<select name="region" class="select region">
							<option value=0>Deutschland</option>
							<option value=1>Frankreich</option>
							<option value=2>Spanien</option>
							<option value=3>Niederlande</option>
							<option value=4>Ost-Europa</option>
							<option value=5>Italien</option>
							<option value=6>England</option>
						</select>
						</div>
						
						<div class="questgen-reputation">
						<h3>Ruf</h3>
						<input type="text" name="reputation" class="input-text reputation">
						<p>(---;--;-;0;+;++;+++ für gewählten Stand)</p>
						</div>
						
						<input type="submit" class="questgen-submit">
					
					</form>
					
					<div class="quest-output output">
						<?php 
							if($_GET["staende"] != NULL && $_GET["region"] != NULL && $_GET["reputation"] != NULL) cardinalquestgen($_GET["staende"],$_GET["region"],$_GET["reputation"]);
						?>
					</div>
				</div>
			</div>

			<div class="npc-outerwrapper outerwrapper">
				<h2 class="headline">NPC-Generator</h2>
				<div class="npc-innerwrapper innerwrapper">
					<form class="npc-input input">
					</form>
					<div class="npc-output output"></div>
				</div>
			</div>

			<div class="money-outerwrapper outerwrapper">
				<h2 class="headline">Geld-Generator</h2>
				<div class="money-innerwrapper innerwrapper">
					<form class="money-input input">
					</form>
					<div class="money-output output"></div>
				</div>
			</div>

			<div class="lore-outerwrapper outerwrapper">
				<h2 class="headline">Lore-Generator</h2>
				<div class="lore-innerwrapper innerwrapper">
					<form class="lore-input input">
					</form>
					<div class="lore-output output"></div>
				</div>
			</div>

			<div class="table-outerwrapper outerwrapper">
				<h2 class="headline">Table-Input</h2>
				<div class="table-innerwrapper innerwrapper">
					<form class="table-input input">
					</form>
					<div class="table-output output"></div>
				</div>
			</div>

		</div>		
	</body>
</html>