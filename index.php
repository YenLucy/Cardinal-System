<!DOCTYPE html>
<html>
	<?php
		$CardinalVersionNumber = 0.5;
		include "system.php";
		include "MYSQL_PARAMS.php";
		include "cardinal-questgen.php";	
		include "cardinal-npcgen.php";
		include "cardinal-moneygen.php";

		$db = mysqli_connect($MYSQL_HOSTIP,$MYSQL_USER,$MYSQL_PASS,$MYSQL_DATABASE);
		if(!$db) {
		  	exit("Verbindungsfehler: ".mysqli_connect_error());
		}
	?>

	<head>
		<title>
			<?php echo lang("TITLE"); ?><?= $CardinalVersionNumber ?>
		</title>
		
		<link href="https://fonts.googleapis.com/css?family=Play|Roboto" rel="stylesheet">
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

			<div class="quest-outerwrapper outerwrapper" id="q-outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_1"); ?></h2>
				<a id="opener-quest" href="javascript:toggleOpenClose('opener-quest','trigger','q-outerwrapper');" class="opener icon-down-open open-quest"></a>

				<div id="q-innerwrapper" class="quest-innerwrapper innerwrapper">
	
					<form class="quest-input input">

						<input type="text" name="qt" value=1 class="hidden">
						
						<div class="questgen-staende generator-select">
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
					
						<div class="questgen-region generator-select">
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
						
						<div class="questgen-reputation generator-select">
						<h3><?php echo lang("M1_PART_3"); ?></h3>
						<select name="reputation" class="select reputation">
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

			<div class="npc-outerwrapper outerwrapper" id="nsc-outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_2"); ?></h2>
				<a href="javascript:toggleOpenClose('opener-npc','trigger','nsc-outerwrapper');" id="opener-npc" class="opener icon-down-open open-npc"></a>

				<div class="npc-innerwrapper innerwrapper">
					<form class="npc-input input">
						<input type="text" name="nt" value=1 class="hidden">
						<div class="npcgen-region generator-select">
							<h3><?php echo lang("M2_PART_1"); ?></h3>
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
				
						<div class="npcgen-tragicalpast generator-select">
							<h3><?php echo lang("M2_PART_2"); ?></h3>
						<select name="past" class="select past">
							<option value=1>Tragisch</option>
							<option value=0>Gewöhnlich</option>
						</select>

						</div>
						<div class="npcgen-stand generator-select">
							<h3><?php echo lang("M2_PART_3"); ?></h3>
							<select name="stand" class="select stand">
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
						<div class="npcgen-job generator-select">
							<h3><?php echo lang("M2_PART_4"); ?></h3>
							<select name="job" class="select job">
							<option value="random">random</option>
							<?php
								$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_8." ORDER BY ".$SECTION_8_PART_ID);
								$ergebnis = mysqli_fetch_all($ergebnis);
								$count = 0;
								while($ergebnis[$count] !== null) {
									echo "<option value=".$ergebnis[$count][0].">".$ergebnis[$count][1]."</option>";
									$count = $count + 1;
								}
							?>
						</select>
						</div>

						<input type="submit" class="npcgen-submit">
					</form>
					<div class="npc-output output">
						<?php 
							if($_GET["region"] != NULL && $_GET["past"] != NULL && $_GET["stand"] != NULL && $_GET["job"] != NULL) cardinalnpcgen($_GET["region"],$_GET["past"],$_GET["stand"],$_GET["job"]);
						?>
					</div>
				</div>
			</div>

			<div class="money-outerwrapper outerwrapper" id="gold-outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_3"); ?></h2>
					<a href="javascript:toggleOpenClose('opener-money','trigger','gold-outerwrapper');" id="opener-money" class="opener icon-down-open open-money"></a>

				<div class="money-innerwrapper innerwrapper">
	
					<form class="money-input input">

						<input type="text" name="mt" value=1 class="hidden">
						<div class="moneygen-geld generator-select">
							<h3><?php
							echo lang("M3_PART_1");
							?></h3>
							<input type="text" name="gulden" class="inputtype gulden">
						</div>
						<div class="moneygen-belohnung generator-select">
							<h3><?php
							echo lang("M3_PART_2");
							?></h3>
							<select name="belohnung" class="select belohnung">
								<?php
								$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_15." ORDER BY ".$SECTION_15_PART_ID);
								$ergebnis = mysqli_fetch_all($ergebnis);
								$count = 0;
								while($ergebnis[$count] !== null) {
									echo "<option value=".$ergebnis[$count][0].">".$ergebnis[$count][3]."</option>";
									$count = $count + 1;
								}
								?>
							</select>
						</div>
						<div class="moneygen-kategorie generator-select">
							<h3><?php
							echo lang("M3_PART_3");
							?></h3>
							<select name="kategorie" class="select kategorie">
								<option value="random">Random</option>
							<?php
								$ergebnis = mysqli_query($db,"SELECT * FROM ".$SECTION_14." ORDER BY ".$SECTION_14_PART_ID);
								$ergebnis = mysqli_fetch_all($ergebnis);

								$count = 0;
								while($ergebnis[$count] !== null) {
									echo "<option value=".$ergebnis[$count][0].">".$ergebnis[$count][1]."</option>";
									$count = $count + 1;
								}
							?>
							</select>
						</div>

						<input type="submit" class="moneygen-submit">
					</form>
					<div class="money-output output">
						<?php					
						if($_GET["gulden"]) {
							if($_GET["kategorie"] != NULL && $_GET["belohnung"] != NULL) cardinalmoneygen($_GET["belohnung"],$_GET["kategorie"],$_GET["gulden"]);
						}
						else {
							if($_GET["kategorie"] != NULL && $_GET["belohnung"] != NULL) cardinalmoneygen($_GET["belohnung"],$_GET["kategorie"],0);	
						}
						?>

					</div>
				</div>
			</div>

			<div class="lore-outerwrapper outerwrapper">
				<h2 class="headline"><?php echo lang("MODULE_4"); ?></h2>
				<div class="lore-innerwrapper innerwrapper">
					<form class="lore-input input">
						<h3><?php echo lang("WIP");?></h3>
					</form>
					<div class="lore-output output"></div>
				</div>
			</div>

			<div class="table-outerwrapper outerwrapper">
				<h2 class="headline">Table-Input</h2>
				<div class="table-innerwrapper innerwrapper">
					<form class="table-input input">
						<h3><?php echo lang("WIP");?></h3>
					</form>
					<div class="table-output output"></div>
				</div>
			</div>

		</div>	

		<script src="JS/cardinal.js"></script>	
		<?php
			if($_GET["qt"]!=1) $qt = 0; 
			else $qt = 1;
			if($_GET["nt"]!=1) $nt = 0; 
			else $nt = 1;
			if($_GET["mt"]!=1) $mt = 0; 
			else $mt = 1;
		?>
		<script>triggerOpener(<?=$qt?>,<?=$nt?>,<?=$mt?>)</script>
	</body>
</html>