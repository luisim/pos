<?php $this->load->view("partial/header"); ?>

<script type="text/javascript">
	dialog_support.init("a.modal-dlg");
</script>
	      
<div class="jumbotron" style="max-width: 60%; margin:auto">
		<fieldset>
			<legend style="text-align: center;"><h3>Seleccione Mesa</h3></legend>
			<style>
.button {
  background-color: #4CAF50;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}
</style>

			
		</fieldset>
		
	<?php echo form_close(); ?>
	

	<?php

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ospos";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 


$sql = "SELECT name FROM ospos_dinner_tables";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) { 
		
        echo  '<a href="sales" class="button">'. $row["name"]. " " .'</a>';
	}
	
} else {
    echo "0 results";
}






?>



</form>
	
	
	
	
	
	</legend>

</div>



<?php $this->load->view("partial/footer"); ?>


