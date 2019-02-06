<!DOCTYPE html>
<html>
	<?php
		$CardinalVersionNumber = 0.2;
		include "system.php";
		include "MYSQL_PARAMS.php";
		include "cardinal-questgen.php";	
		// include "cardinal-npcgen.php";

		$db = mysqli_connect($MYSQL_HOSTIP,$MYSQL_USER,$MYSQL_PASS,$MYSQL_DATABASE);
		if(!$db) {
		  	exit("Verbindungsfehler: ".mysqli_connect_error());
		}
	?>

	<head>
		<title>
			<?php echo lang("TITLE"); ?><?= $CardinalVersionNumber ?>
		</title>
		
		<link rel="stylesheet" href="CSS/CardinalStyles.css">

		<meta charset="UTF-8">
		<meta name="description" content="Automatic Generator for Quests, NPCs and Content">
		<meta name="keywords" content="Hexxen, Roleplay, PNP, CARDINAL, SYSTEM">
		<meta name="author" content="Yennefer Lilith Lucy Rinkleff">
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	</head>
	<body>
		<div class="cardinal-wrapper">
			<div class="intro">
				<h1><?php echo lang("INTRO_HL"); ?><?= $CardinalVersionNumber ?></h1>
				<p class="introtext"><?php echo lang("INTRO_TEXT"); ?></p>
			</div>

			<div class="quest-outerwrapper outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_1"); ?></h2>
				<div class="quest-innerwrapper innerwrapper">
					<form class="quest-input input">
						
						<div class="questgen-staende">
						<h3><?php echo lang("M1_PART_1"); ?></h3>
						<select name="staende" class="select stand">
							<?php
								$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_5." ORDER BY ".$SECTION_5_PART_ID);
								$ergebnis = mysqli_fetch_all($ergebnis);
								$count = 0;
								while($ergebnis[$count] !== null) {
									echo "<option value=".$ergebnis[$count][0].">".$ergebnis[$count][1]."</option>";
									$count = $count + 1;
								}
							?>
						</select>
						</div>
					
						<div class="questgen-region">
						<h3><?php echo lang("M1_PART_2"); ?></h3>
						<select name="region" class="select region">
							<?php
								$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_4." ORDER BY ".$SECTION_4_PART_ID);
								$ergebnis = mysqli_fetch_all($ergebnis);
								$count = 0;
								while($ergebnis[$count] !== null) {
									echo "<option value=".$ergebnis[$count][0].">".$ergebnis[$count][1]."</option>";
									$count = $count + 1;
								}
							?>
						</select>
						</div>
						
						<div class="questgen-reputation">
						<h3><?php echo lang("M1_PART_3"); ?></h3>
						<select name="reputation" class="input-text reputation">
							<option value="---">---</option>
							<option value="--">--</option>
							<option value="-">-</option>
							<option value="O">O</option>
							<option value="+">+</option>
							<option value="++">++</option>
							<option value="+++">+++</option>
						</select>
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
				<h2 class="headline"><?php echo lang("MODULE_2"); ?></h2>
				<div class="npc-innerwrapper innerwrapper">
					<form class="npc-input input">
						<div class="npcgen-region">
							

						</div>
						<div class="npcgen-tragicalpast">
							

						</div>
						<div class="npcgen-stand">
							

						</div>
						<div class="npcgen-job">
							

						</div>
					</form>
					<div class="npc-output output"></div>
				</div>
			</div>

			<div class="money-outerwrapper outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_3"); ?></h2>
				<div class="money-innerwrapper innerwrapper">
					<form class="money-input input">
					</form>
					<div class="money-output output"></div>
				</div>
			</div>

			<div class="lore-outerwrapper outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_4"); ?></h2>
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