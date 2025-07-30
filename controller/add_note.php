<?php
require_once('../includes/connect.php');

if (isset($_POST["journal-text"])) {
    $note = trim($_POST["journal-text"]);

    if (!$note_date) {
        $note_date = "";
    }

    if ($note == "") {
        header('Location: ../index.php');
        exit;
    } else {
        $note_date = $_POST["note_date"];
        $qu = "SELECT * FROM journal where date =  '" . $note_date . "'";
        $retrieve = mysqli_query($con, $qu);
        if ($retrieve->num_rows > 0) {
            $note_date = $_POST['note_date'];
            $q = "UPDATE journal SET note = '$note' WHERE date = '$note_date'";
            $append = mysqli_query($con, $q);
            // echo "You note was updated successfully.";
            header('Location: ../index.php');

        } elseif ($retrieve->num_rows < 1) {
            $q = "INSERT INTO journal (note) VALUES ('$note')";
            $append = mysqli_query($con, $q);
            // echo "You note was added successfully.";
            header('Location: ../index.php');

        } else {
            echo "Sorry, we encountered a problem trying to save this note.";
        }
    }
}
