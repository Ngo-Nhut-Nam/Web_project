<?php
date_default_timezone_set('Asia/Ho_Chi_Minh');

session_start();
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

include("config/db.php");

$user_id = $_SESSION['user_id'];

// Lấy lịch sử làm bài của user
$sql = "SELECT r.*, e.title, e.subject 
        FROM results r 
        JOIN exams e ON r.exam_id = e.exam_id
        WHERE r.user_id = ?
        ORDER BY r.end_time DESC";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $user_id);
$stmt->execute();
$results = $stmt->get_result();
?>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lịch sử làm bài</title>
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/exam_list.css">
    <style>
        .results-table { width: 100%; border-collapse: collapse; margin-top: 20px; }
        .results-table th, .results-table td { border: 1px solid #ddd; padding: 8px; text-align: center; }
        .results-table th { background-color: #4CAF50; color: white; }
        .btn-view { padding: 5px 10px; background-color: #2196F3; color: white; border: none; border-radius: 4px; cursor: pointer; }
        .btn-view:hover { background-color: #0b7dda; }
    </style>
</head>
<body>
<header>
    <div class="header-container">
        <div class="logo">ThiTrựcTuyến.vn</div>
        <nav>
            <ul>
                <li><a href="main_page.php">Trang chủ</a></li>
                <li><a href="exam_list.php">Danh sách đề thi</a></li>
                <li><a href="result.php">Kết quả</a></li>
            </ul>
        </nav>
        <div class="auth-buttons">
            <a class="btn btn-profie" href="profile.php">Trang cá nhân</a>
        </div>
    </div>
</header>

<main class="page active">
    <h2>Lịch sử làm bài của bạn</h2>

    <?php if ($results && $results->num_rows > 0): ?>
        <table class="results-table">
            <tr>
                <th>STT</th>
                <th>Đề thi</th>
                <th>Môn</th>
                <th>Điểm</th>
                <th>Số câu đúng</th>
                <th>Tổng câu</th>
                <th>Thời gian làm</th>
            </tr>
            <?php $i=1; while($r = $results->fetch_assoc()): ?>
                <tr>
                    <td><?php echo $i++; ?></td>
                    <td><?php echo htmlspecialchars($r['title']); ?></td>
                    <td><?php echo htmlspecialchars($r['subject']); ?></td>
                    <td><?php echo round(($r['score']/$r['total_question'])*10, 2); ?> / 10</td>
                    <td><?php echo $r['score']; ?></td>
                    <td><?php echo $r['total_question']; ?></td>
                    <td><?php echo date("d/m/Y H:i", strtotime($r['start_time'])) . " - " . date("d/m/Y H:i", strtotime($r['end_time']));?></td>
                </tr>
            <?php endwhile; ?>
        </table>
    <?php else: ?>
        <p>Bạn chưa làm bài nào.</p>
    <?php endif; ?>
</main>

<footer>
    <p>&copy; 2025 Hệ Thống Thi Trực Tuyến. Tất cả quyền được bảo lưu.</p>
</footer>
</body>
</html>
