<?php
require_once('../includes/connect.php');

// if (isset($_POST["status"])) {
$id = $_POST['id'];
$checked = isset($_POST['status']) ? 1 : 0;

$query = "UPDATE schedules SET status = $checked WHERE id = $id";
$result = mysqli_query($con, $query);

if ($result) {
    header('Location: ../index.php');
    // echo "<div class='alert alert-success' role='alert'> Tricycle details deleted successfully. </div>";
} else {
    // header ('Location: ../index.php');
    echo "<p> Sorry, you can't update this task status at this time. </p>";
}
// }

