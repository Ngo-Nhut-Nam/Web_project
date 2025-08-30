<?php
include("config/db.php");
session_start();

if (!isset($_SESSION['is_admin']) || $_SESSION['is_admin'] != 1) {
    exit("No permission");
}

$ids = $_POST['id'];
$questions = $_POST['question'];
$optionsA = $_POST['option_a'];
$optionsB = $_POST['option_b'];
$optionsC = $_POST['option_c'];
$optionsD = $_POST['option_d'];
$corrects = $_POST['correct_option'];

for ($i = 0; $i < count($ids); $i++) {
    $sql = "UPDATE questions SET question=?, option_a=?, option_b=?, option_c=?, option_d=?, correct_option=? WHERE id=?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("ssssssi", $questions[$i], $optionsA[$i], $optionsB[$i], $optionsC[$i], $optionsD[$i], $corrects[$i], $ids[$i]);
    $stmt->execute();
}

header("Location: exam_list.php");
