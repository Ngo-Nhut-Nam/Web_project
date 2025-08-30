<?php
include("config/db.php");

$action = $_GET['action'] ?? '';

if ($action == 'add') {
    $title = $_POST['title'];
    $subject = $_POST['subject'];
    $questions = (int)$_POST['questions'];
    $time = (int)$_POST['time'];
    $difficulty = $_POST['difficulty'];
    $description = $_POST['description'];

    $sql = "INSERT INTO exams (title, subject, questions, `time`, difficulty, description) 
            VALUES (?, ?, ?, ?, ?, ?)";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssiiss", $title, $subject, $questions, $time, $difficulty, $description);
    echo $stmt->execute() ? "success" : "error";
}

if ($action == 'edit') {
    $id = (int)$_POST['id'];
    $title = $_POST['title'];
    $subject = $_POST['subject'];
    $questions = (int)$_POST['questions'];
    $time = (int)$_POST['time'];
    $difficulty = $_POST['difficulty'];
    $description = $_POST['description'];

    $sql = "UPDATE exams 
            SET title=?, subject=?, questions=?, `time`=?, difficulty=?, description=? 
            WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssiissi", $title, $subject, $questions, $time, $difficulty, $description, $id);
    echo $stmt->execute() ? "success" : "error";
}

if ($action == 'delete') {
    $id = (int)$_POST['id'];
    $sql = "DELETE FROM exams WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("i", $id);
    echo $stmt->execute() ? "success" : "error";
}

if ($action == 'list') {
    $result = $conn->query("SELECT * FROM exams ORDER BY id DESC");
    $data = [];
    while ($row = $result->fetch_assoc()) {
        $data[] = $row;
    }
    echo json_encode($data, JSON_UNESCAPED_UNICODE);
}
