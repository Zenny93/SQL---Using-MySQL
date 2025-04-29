<!DOCTYPE html>
<!-- Make PHP show PHP errors on the HTML page, instead of failing silently. -->
<?php ini_set('display_startup_errors',1); ?>
<?php ini_set('display_errors',1); ?>
<?php error_reporting(-1); ?>

<!--Q1: getting info from db.php    -->
<?php include 'db3.php'; ?>

<html>
	<head>
		<title>Positions</title>
	</head>
	<body>
		<h1>Positions description</h1>

<!--Q2: creating our connection object mysqli   -->
		<?php $mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_DATABASE); ?>
		<?php if (mysqli_connect_error()) {
  die('Connect Error ('.mysqli_connect_errno().') '.mysqli_connect_error());
 } ?>
			<ul>

<!-- Q3: creating an object called query and we need to prepare it first. -->
		<?php $query = $mysqli->prepare('SELECT Position_Desc FROM Positions ORDER BY  Position_Desc;')  ?>
		<?php $query->execute() ?>
		<?php $query->bind_result($Position_Desc) ?>
		
<!--Q4: counting all the recipe classes result and incrementing the counter for each result we get -->
		<?php $num_rows = 0; ?>
		<?php while($query->fetch()): ?>
		  <?php $num_rows++; ?>
		  <li><?php echo $Position_Desc; ?></li>		
		<?php endwhile ?>
		
		</ul>

<!--Q5: printing total number of recipe classes  -->
		<p>Total number of Position Descriptions: <?php echo $num_rows; ?></p>	
	
<!--Q6: closing the query and all objects  -->
	<?php $query -> close(); ?>
	<?php $mysqli->close(); ?>
	</body>
</html>

