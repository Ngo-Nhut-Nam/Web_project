<?php
include("config/db.php");
session_start();

// Kiểm tra quyền admin
if (!isset($_SESSION['is_admin']) || $_SESSION['is_admin'] != 1) {
    header("Location: main_page.php");
    exit();
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $exam_id = $_POST['exam_id'];
    $exam_name = $_POST['exam_name'];

    // Cập nhật tên đề thi
    $sql_exam = "UPDATE exam SET exam_name = ? WHERE exam_id = ?";
    $stmt = $conn->prepare($sql_exam);
    $stmt->bind_param("si", $exam_name, $exam_id);
    $stmt->execute();

    // Cập nhật từng câu hỏi
    $question_ids = $_POST['question_id'];
    $texts = $_POST['question_text'];
    $a = $_POST['option_a'];
    $b = $_POST['option_b'];
    $c = $_POST['option_c'];
    $d = $_POST['option_d'];
    $correct = $_POST['correct_option'];

    for ($i=0; $i < count($question_ids); $i++) {
        $sql_q = "UPDATE question SET 
                    question_text = ?, option_a = ?, option_b = ?, 
                    option_c = ?, option_d = ?, correct_option = ?
                  WHERE question_id = ?";
        $stmt_q = $conn->prepare($sql_q);
        $stmt_q->bind_param("ssssssi", $texts[$i], $a[$i], $b[$i], $c[$i], $d[$i], $correct[$i], $question_ids[$i]);
        $stmt_q->execute();
    }

    header("Location: exam_list.php?success=1");
    exit();
} else {
    echo "Không hợp lệ!";
}
?>
