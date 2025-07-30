<?php
require_once('includes/connect.php');

$total_tasks_query = "SELECT * FROM schedules";
$total_completed_query = "SELECT * FROM schedules WHERE status = 1";

$total_tasks = mysqli_query($con, $total_tasks_query);
$total_completed = mysqli_query($con, $total_completed_query);

date_default_timezone_set('Africa/Lagos');
$today = date('Y-m-d');

$current_date = date('l, j F, Y');
$current_time = date('G:i A');

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DidIt!</title>
    <link rel="stylesheet" href="./style.css">
</head>

<body>
    <div class="container">
        <nav class="navigation">
            <div class="logo">DidIt!</div>
            <div class="user">
                <div class="account"></div>
                <small>Fairy P. <img src="./design/caret-down.svg" class="caret-down"></small>
            </div>

            <input type="search" name="search" id="search" placeholder="Search...">
        </nav>

        <main>
            <nav class="sidebar">
                <ul>
                    <li><a href=""><button><img src="./design/home.svg">Home</button></a></li>
                    <li><a href=""><button><img src="./design/account_circle.svg">My Profile</button></a></li>
                    <li><a href=""><button><img src="./design/book_ribbon.svg">Journal</button></a></li>
                    <li><a href=""><button><img src="./design/logout.svg">Logout</button></a></li>
                </ul>

                <form action="./controller/add_note.php" method="post" class="journal-form">
                    <div class="journal"><span><img src="./design/news.svg">Journal your day</span>
                        <hr>
                        <?php echo $current_date; ?>

                        <?php
                        $qu = "SELECT * FROM journal where date =  '" . $today . "' ORDER BY id DESC";
                        $retrieve = mysqli_query($con, $qu);
                        if ($retrieve->num_rows < 1) {
                            echo "<textarea name='journal-text' id='journal-text' placeholder='What are you grateful for today?'></textarea>";
                        } else {
                            $daily = $retrieve->fetch_assoc();
                            echo "<textarea name='journal-text' id='journal-text' placeholder='" . $daily['note'] . "'>" . $daily['note'] . "</textarea>";
                            echo "<input type='hidden' name='note_date' value='" . $daily['date'] . "' id='note_date'>";
                        }

                        ?>

                        <input type="submit" value="+" class="add-note" id="add-note" onclick="alert('Note saved')">
                    </div>
                </form>
            </nav>

            <div class="content-container">
                <div class="content">
                    <div class="welcome">
                        <div class="welcome-text">Hi, Fairy! <img src="./design/waving-hand-medium-light-skin-tone.svg"></div>
                        <p>Let's help you to stay updated on every of your schedules.</p>
                    </div>
                    <div class="welcome-info">
                        <?php
                        function formatDate($date)
                        {
                            $current_date = new DateTime();
                            $inputDate = new DateTime($date);

                            $diff = $current_date->diff($inputDate);
                            $days = $diff->days;

                            if ($days == 0) {
                                return "Today";
                            } elseif ($days == 1 && $inputDate < $current_date) {
                                return "Yesterday";
                            } elseif ($days == 1 && $inputDate > $current_date) {
                                return "Tomorrow";
                            } elseif ($days < 7) {
                                return $inputDate->format("l");
                            } elseif ($days < 14 && $inputDate < $current_date) {
                                return "Last week";
                            } elseif ($days < 14 && $inputDate > $current_date) {
                                return "Next week";
                            }
                        }
                        ?>

                        <?php
                        $qy = "SELECT * FROM schedules WHERE time = '$today'";
                        $completed_query = "SELECT * FROM schedules WHERE time = '$today' AND  status = 1";

                        $r = mysqli_query($con, $qy);
                        $rc = mysqli_query($con, $completed_query);

                        echo "You've got <b>" . ($r->num_rows) - ($rc->num_rows) . "</b> tasks today <br>";
                        if (($r->num_rows) == 0) {
                            echo "<small>Progress: " . 0 . "%</small>";
                        } else {
                            echo "<small>Progress: <b>" . round(($rc->num_rows) / ($r->num_rows) * 100, 0) . "%</b></small>";
                        }
                        ?>

                    </div>

                </div>

                <div class="main-content">
                    <p>Add New Tasks</p>

                    <form action="./controller/add_task.php" method="post" class="add-task-form">
                        <input type="text" name="task-input" id="task-input" placeholder="Add New Task">
                        <input type="submit" value="Add Task" id="add-task" onclick="checkString()">
                    </form>

                    <div class="task-list-container">
                        <ul class="task-list">
                            <?php
                            $query = "SELECT * FROM schedules where time = '" . $today . "' ORDER BY id DESC";
                            $res = mysqli_query($con, $query);

                            $sn = 0;
                            if ($res->num_rows > 0) {
                                while ($row = $res->fetch_assoc()) {
                                    echo "<label><li><span>" . ++$sn . "</span>";
                                    $checked = ($row['status'] == 1) ? 'checked' : '';
                                    echo "<form action='./controller/update_task_status.php' method='POST'>
                                        <input type='hidden' name='id' value='" . $row['id'] . "'>
                                        <input type='checkbox' name='status'  id='status' onclick='strikeThrough(this)' onchange='this.form.submit()' $checked>
                                        </form>";
                                    echo $row['task'];
                                    echo "<form method='POST' action='./controller/delete.php'>
                                        <input type='hidden' name='del_id' value='" . $row['id'] . "'>
                                        <button class='delbtn'><img src='./design/close.svg' alt='' /></button>
                                        <small>Completed: " . formatDate($today) . ", " . $current_time . "</small>
                                        </form>";
                                    echo "</li></label>";
                                }
                            } else {
                                $message = "You do not have any scheduled task today.";
                                echo "<li style='background-color:rgb(224, 123, 95); '>$message</li>";
                            }
                            ?>
                        </ul>
                    <a href="#task-input"><div id="bottom">Back to top <span>&#9650</span></div></a>
                    </div>
                </div>
                <footer>
                    <?php echo "<small>&copy;" . date("Y") . " @slimmy_veek</small>"; ?>
                </footer>
            </div>

            <div class="schedules">
                <div id="date-time">
                    <?php
                    // Current Date
                    echo $current_date;
                    ?>
                    <br>

                    <!-- Current Time -->
                    <?php
                    echo $current_time;
                    ?>
                </div>

                <div class="upcoming">Upcoming Tasks
                    <input type="date" name="" id="">
                </div>

                <div class="statistics first">

                    <div class="stats">
                        <div class="number"><?php echo $total_tasks->num_rows; ?></div>
                        Total Task Activity
                    </div>

                    <div class="stats">
                        <div class="number"><?php echo $total_completed->num_rows; ?></div>
                        Completed Tasks
                    </div>

                </div>

                <div class="statistics second">

                    <div class="stats">
                        <div class="number"><?php echo ($total_tasks->num_rows) - ($total_completed->num_rows); ?> </div>
                        Pending Tasks
                    </div>

                    <div class="stats">
                        <div class="number"><?php echo round(($total_completed->num_rows * 100) / ($total_tasks->num_rows)) ; ?>%</div>
                        Growth Tracker
                    </div>

                </div>

                

                <div class="checklist">
                    <p>Quick Checklist</p>
                    <input type="text" name="" id="">
                    <ol>
                        <li>List 1</li>
                    </ol>
                </div>
            </div>

        </main>



    </div>
    <script src="./script.js"></script>
</body>


</html>