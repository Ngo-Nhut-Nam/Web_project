<?php
include "<config>db.php";

$action = $_GET['action'] ?? '';

if ($action == 'add') {
    $title = $_POST['title'];
    $subject = $_POST['subject'];
    $questions = $_POST['questions'];
    $time = $_POST['time'];
    $difficulty = $_POST['difficulty'];
    $description = $_POST['description'];

    $sql = "INSERT INTO exam (title, subject, questions, time, difficulty, description) 
            VALUES ('$title', '$subject', $questions, $time, '$difficulty', '$description')";
    if ($conn->query($sql)) echo "success"; else echo "error";
}

if ($action == 'edit') {
    $id = $_POST['id'];
    $title = $_POST['title'];
    $subject = $_POST['subject'];
    $questions = $_POST['questions'];
    $time = $_POST['time_exam'];
    $difficulty = $_POST['difficulty'];
    $description = $_POST['description'];

    $sql = "UPDATE exam 
            SET title='$title', subject='$subject', questions=$questions, 
                time=$time, difficulty='$difficulty', description='$description'
            WHERE id=$id";
    if ($conn->query($sql)) echo "success"; else echo "error";
}

if ($action == 'delete') {
    $id = $_POST['id'];
    $sql = "DELETE FROM exam WHERE id=$id";
    if ($conn->query($sql)) echo "success"; else echo "error";
}

if ($action == 'list') {
    $result = $conn->query("SELECT * FROM exam ORDER BY id DESC");
    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}
?>
