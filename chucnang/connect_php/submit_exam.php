<?php
session_start();
include("config/db.php");

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$user_id = $_SESSION['user_id'];

// Nhận exam_id và câu trả lời
$exam_id = intval($_POST['exam_id'] ?? 0);
if ($exam_id <= 0) {
    die("Đề thi không hợp lệ!");
}

// Lấy danh sách câu hỏi của đề
$sql = "SELECT * FROM questions WHERE exam_id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $exam_id);
$stmt->execute();
$result = $stmt->get_result();
$questions = $result->fetch_all(MYSQLI_ASSOC);
$stmt->close();

$total_questions = count($questions);
$correct_answers = 0;

// Chấm điểm
foreach ($questions as $q) {
    $qid = $q['id'];
    $user_answer = $_POST["q$qid"] ?? null; // đáp án người dùng chọn
    if ($user_answer && strtoupper($user_answer) === strtoupper($q['correct_answer'])) {
        $correct_answers++;
    }
}

// Tính điểm (thang 10)
$score = ($total_questions > 0) ? round(($correct_answers / $total_questions) * 10, 2) : 0;

// Tính thời gian làm bài (nếu bạn có lưu trong session)
$time_spent = time() - ($_SESSION['exam_start_time'] ?? time());

// Lấy tên đề thi
$sql_exam = "SELECT name FROM exams WHERE id = ?";
$stmt_exam = $conn->prepare($sql_exam);
$stmt_exam->bind_param("i", $exam_id);
$stmt_exam->execute();
$stmt_exam->bind_result($exam_name);
$stmt_exam->fetch();
$stmt_exam->close();

// Lưu kết quả vào DB
$sql_insert = "INSERT INTO exam_results (user_id, exam_id, exam_name, correct_answers, total_questions, score, time_spent, created_at)
               VALUES (?, ?, ?, ?, ?, ?, ?, NOW())";
$stmt_insert = $conn->prepare($sql_insert);
$stmt_insert->bind_param("iisiiid", $user_id, $exam_id, $exam_name, $correct_answers, $total_questions, $score, $time_spent);
$stmt_insert->execute();
$stmt_insert->close();

// Chuyển hướng sang trang kết quả
header("Location: result.php");
exit();
