<?php
require_once('../includes/connect.php');

if (isset($_POST["task-input"])) {
    $task = $_POST["task-input"];

    if ($task == "") {
        header('Location: ../index.php');
        exit;
        
    } else {
        $sql = "INSERT INTO schedules (task) VALUES ('$task')";
        $result = mysqli_query($con, $sql);

        if ($result) {
            // echo "Task successfully added.";
            header('Location: ../index.php');
        } else {
            echo "Sorry, we encountered a problem trying to add this task.";
        }
    }
}
