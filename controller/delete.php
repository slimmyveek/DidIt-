<?php
require_once('../includes/connect.php');

if (isset($_POST["del_id"])) {
    $id = intval($_POST["del_id"]);
    $query = "DELETE FROM schedules WHERE id = $id";
    $result = mysqli_query($con, $query);

    if ($result) {
        header ('Location: ../index.php');
        // echo "<div class='alert alert-success' role='alert'> Tricycle details deleted successfully. </div>";
    } else {
        // header ('Location: ../index.php');
        echo "<p> Sorry, you can't delete this task(s) at this time. </p>";
    }
}
