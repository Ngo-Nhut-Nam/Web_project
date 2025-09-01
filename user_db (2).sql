-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 01, 2025 lúc 01:31 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `user_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `quyen` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `quyen`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'editor');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bai_toan_tu_luan`
--

CREATE TABLE `bai_toan_tu_luan` (
  `ID` int(11) NOT NULL,
  `SUBJECT` varchar(100) NOT NULL,
  `QUESTION` text NOT NULL,
  `EXPLAIN_QUESTION` text NOT NULL,
  `CORRECT_OPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `bai_toan_tu_luan`
--

INSERT INTO `bai_toan_tu_luan` (`ID`, `SUBJECT`, `QUESTION`, `EXPLAIN_QUESTION`, `CORRECT_OPTION`) VALUES
(1, '0', 'Tính: 125 ÷ 5 + 36 × 2.', '125 ÷ 5 = 25; 36 × 2 = 72 ⇒ 25 + 72 = 97', '97'),
(2, '0', 'Rút gọn phân số: 84/126.', 'Chia cả tử và mẫu cho 42: 84/126 = 2/3.', '2/3'),
(3, '0', 'Giải phương trình: 2x + 7 = 19.', '2x = 19 − 7 = 12 ⇒ x = 6.', '6'),
(4, '0', 'Tìm số tự nhiên x biết: 5x − 12 = 28.', '5x = 28 + 12 = 40 ⇒ x = 8.', '8'),
(5, '0', 'Một hình chữ nhật có chiều dài 15 cm, chiều rộng bằng 2/5 chiều dài. Tính chu vi và diện tích.', 'Chiều rộng: 15 × 2/5 = 6 cm. Chu vi: 2(15 + 6) = 42 cm. Diện tích: 15 × 6 = 90 cm².', '90 cm²'),
(6, '0', 'Giải phương trình: 7x − 5 = 3x + 15.', '7x − 3x = 15 + 5 ⇒ 4x = 20 ⇒ x = 5.', '5'),
(7, '0', 'Rút gọn biểu thức: (x² − 16)/(x² − 8x + 16).', 'x² − 16 = (x − 4)(x + 4); x² − 8x + 16 = (x − 4)² ⇒ (x + 4)/(x − 4), điều kiện x ≠ 4.', '(x + 4)/(x − 4), điều kiện x ≠ 4.'),
(8, '0', 'Lớp 6A có 42 học sinh, tỉ lệ nam : nữ = 4 : 3. Hỏi số nam, số nữ?', 'x² − 16 = (x − 4)(x + 4); x² − 8x + 16 = (x − 4)² ⇒ (x + 4)/(x − 4), điều kiện x ≠ 4.', 'Nam: 4×6 = 24, Nữ: 3×6 = 18.'),
(9, '0', 'Một hình tròn có bán kính r = 10 cm. Tính chu vi và diện tích (π = 3,14).', 'Chu vi: C = 2πr = 2×3,14×10 = 62,8 cm. Diện tích: S = πr² = 3,14×100 = 314 cm².', 'C = 62,8 cm , S = 314 cm².'),
(10, '0', 'Giải hệ: { x + y = 20 ; 2x − y = 10 }', 'Cộng 2 phương trình: 3x = 30 ⇒ x = 10. Thay vào x + y = 20 ⇒ y = 10. => (x, y) = (10, 10).', '(x, y) = (10, 10).'),
(11, '0', 'Giải phương trình: 3x + 5 = 2x + 12.', '0', '3x − 2x = 12 − 5 ⇒ x = 7.'),
(12, '0', 'Giải bất phương trình: 4x − 7 > 9.', '0', '4x > 16 ⇒ x > 4.'),
(13, '0', 'Một tam giác có chiều cao 8 cm, đáy dài 12 cm. Tính diện tích.', '0', 'S = 1/2 × đáy × cao = 1/2 × 12 × 8 = 48 cm².'),
(14, '0', 'Một hình hộp chữ nhật có kích thước 4 × 5 × 6 cm. Tính thể tích.', '0', 'V = a × b × c = 4×5×6 = 120 cm³.'),
(15, '0', 'Tính giá trị A = (2x² − 8)/(x − 2) với x = 3.', '0', 'Thế x = 3: tử = 2×9 − 8 = 10; mẫu = 3 − 2 = 1 ⇒ A = 10/1 = 10.'),
(16, '0', 'Giải phương trình: (3x − 2)/(x − 1) = 4.', '0', '3x − 2 = 4x − 4 ⇒ −x + 2 = −4 ⇒ x = 2 (đk x ≠ 1).'),
(17, '0', 'Tính diện tích tam giác vuông có cạnh góc vuông 9 cm và 12 cm.', '0', 'S = 1/2 × 9 × 12 = 54 cm².'),
(18, '0', 'Mảnh vườn 30 m × 20 m, có lối đi quanh rộng 1 m. Tính diện tích lối đi.', '0', 'Kích thước ngoài: (30+2) × (20+2) = 32×22 = 704 m²; Diện tích vườn: 30×20 = 600 m² ⇒ Lối đi = 704 − 600 = 104 m².'),
(19, '0', 'Một xe máy đi từ A đến B hết 2 giờ với vận tốc 45 km/h. Tính quãng đường AB.', '0', 'S = v × t = 45 × 2 = 90 km.'),
(20, '0', 'Một hình lập phương có thể tích 512 cm³. Tính độ dài cạnh.', '0', 'a³ = 512 ⇒ a = 8 (vì 8³ = 512).');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `essay_questions`
--

CREATE TABLE `essay_questions` (
  `question_id` int(11) NOT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `question_text` text DEFAULT NULL,
  `answer` text NOT NULL,
  `question_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `essay_questions`
--

INSERT INTO `essay_questions` (`question_id`, `exam_id`, `question_text`, `answer`, `question_type`) VALUES
(7, 6, 'Viết phương trình hóa học của phản ứng giữa natri (Na) và nước (H₂O).', '2Na + 2H₂O → 2NaOH + H₂↑', 'tu_luan'),
(8, 6, 'Giải thích tại sao khí CO₂ lại làm nước vôi trong (Ca(OH)₂) bị vẩn đục.', 'CO₂ + Ca(OH)₂ → CaCO₃↓ + H₂O', 'tu_luan'),
(9, 6, 'Viết phương trình hóa học của phản ứng giữa axit HCl và Na₂CO₃.', '2HCl + Na₂CO₃ → 2NaCl + CO₂↑ + H₂O', 'tu_luan'),
(10, 6, 'Khi nhúng một thanh đồng vào dung dịch AgNO₃, hiện tượng gì xảy ra và tại sao?', 'Không có hiện tượng, vì đồng ít hoạt động hơn bạc, không thể thay thế bạc ra khỏi hợp chất.', 'tu_luan'),
(11, 6, 'Tính khối lượng NaOH cần dùng để trung hòa 100 ml dung dịch HCl 0,5M.', 'n(HCl) = 0,1 × 0,5 = 0,05 mol → m(NaOH) = 0,05 × 40 = 2 g', 'tu_luan'),
(12, 6, 'Viết phương trình hóa học của phản ứng giữa Al và dung dịch HCl.', '2Al + 6HCl → 2AlCl₃ + 3H₂↑', 'tu_luan'),
(13, 6, 'Giải thích tại sao nước cứng gây ra hiện tượng cáu cặn khi đun sôi.', 'Ca(HCO₃)₂ → CaCO₃↓ + CO₂↑ + H₂O', 'tu_luan'),
(14, 6, 'Viết phương trình hóa học khi kim loại K tác dụng với nước.', '2K + 2H₂O → 2KOH + H₂↑', 'tu_luan'),
(15, 6, 'Tính thể tích CO₂ (ở điều kiện chuẩn) thu được khi cho 5,6 g NaHCO₃ phản ứng với HCl dư.', 'n(NaHCO₃) = 5,6/84 = 0,0667 mol → n(CO₂) = 0,0667 mol → V = 0,0667 × 22,4 ≈ 1,49 lít', 'tu_luan'),
(16, 6, 'Viết phương trình hóa học của phản ứng phân hủy CaCO₃ khi nung.', 'CaCO₃ → CaO + CO₂↑', 'tu_luan');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exams`
--

CREATE TABLE `exams` (
  `exam_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `num_questions` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `difficulty` enum('easy','medium','hard') NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `exams`
--

INSERT INTO `exams` (`exam_id`, `title`, `subject`, `num_questions`, `time`, `difficulty`, `description`, `created_at`) VALUES
(1, 'thi giữa kỳ', 'math', 20, 40, '', '', '0000-00-00 00:00:00'),
(2, 'English - 20 câu', 'english', 20, 40, '', '', '0000-00-00 00:00:00'),
(3, 'Hóa - thường xuyên', 'chemistry', 20, 40, '', '', '0000-00-00 00:00:00'),
(4, 'Vật Lý - thường xuyên', 'math', 20, 40, '', '', '0000-00-00 00:00:00'),
(6, 'Hóa - giữa kỳ', 'chemistry', 10, 20, '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `question_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(255) NOT NULL,
  `option_b` varchar(255) NOT NULL,
  `option_c` varchar(255) NOT NULL,
  `option_d` varchar(255) NOT NULL,
  `correct_answer` enum('A','B','C','D') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`question_id`, `exam_id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_answer`, `created_at`) VALUES
(6, 1, '2 + 3 = ?', '4', '5', '6', '7', 'B', '2025-09-01 07:27:01'),
(7, 1, '7 – 4 = ?', '2', '3', '4', '5', 'B', '2025-09-01 07:27:01'),
(8, 1, '5 × 3 = ?', '15', '10', '8', '12', 'A', '2025-09-01 07:27:01'),
(9, 1, '12 ÷ 4 = ?', '2', '3', '4', '6', 'B', '2025-09-01 07:27:01'),
(10, 1, '9 + 6 = ?', '14', '15', '16', '17', 'B', '2025-09-01 07:27:01'),
(11, 1, '8 – 5 = ?', '2', '3', '4', '5', 'B', '2025-09-01 07:27:01'),
(12, 1, '4 × 6 = ?', '20', '24', '22', '26', 'B', '2025-09-01 07:27:01'),
(13, 1, '18 ÷ 3 = ?', '5', '6', '7', '8', 'B', '2025-09-01 07:27:01'),
(14, 1, '7 + 8 = ?', '14', '15', '16', '17', 'C', '2025-09-01 07:27:01'),
(15, 1, '15 – 9 = ?', '5', '6', '7', '8', 'B', '2025-09-01 07:27:01'),
(16, 1, '3 × 7 = ?', '20', '21', '22', '23', 'B', '2025-09-01 07:27:01'),
(17, 1, '24 ÷ 8 = ?', '2', '3', '4', '5', 'B', '2025-09-01 07:27:01'),
(18, 1, '6 + 9 = ?', '14', '15', '16', '17', 'B', '2025-09-01 07:27:01'),
(19, 1, '10 – 4 = ?', '5', '6', '7', '8', 'B', '2025-09-01 07:27:01'),
(20, 1, '5 × 5 = ?', '20', '25', '30', '35', 'B', '2025-09-01 07:27:01'),
(21, 1, '16 ÷ 4 = ?', '3', '4', '5', '6', 'B', '2025-09-01 07:27:01'),
(22, 1, '8 + 7 = ?', '14', '15', '16', '17', 'D', '2025-09-01 07:27:01'),
(23, 1, '12 – 7 = ?', '4', '5', '6', '7', 'B', '2025-09-01 07:27:01'),
(24, 1, '9 × 2 = ?', '16', '17', '18', '19', 'C', '2025-09-01 07:27:01'),
(25, 1, '20 ÷ 5 = ?', '4', '5', '6', '7', 'B', '2025-09-01 07:27:01'),
(46, 2, 'What is the plural of \"child\"?', 'childs', 'children', 'childes', 'child', 'B', '2025-09-01 09:06:46'),
(47, 2, 'Choose the correct verb: She ____ to school every day.', 'go', 'goes', 'going', 'gone', 'B', '2025-09-01 09:06:46'),
(48, 2, 'I ____ my homework yesterday.', 'do', 'did', 'does', 'done', 'B', '2025-09-01 09:06:46'),
(49, 2, 'Choose the correct article: I saw ___ cat on the roof.', 'a', 'an', 'the', 'no article', 'C', '2025-09-01 09:06:46'),
(50, 2, 'Select the correct synonym of \"happy\"', 'sad', 'angry', 'joyful', 'tired', 'C', '2025-09-01 09:06:46'),
(51, 2, 'Fill in: I have ___ apple.', 'a', 'an', 'the', 'no article', 'B', '2025-09-01 09:06:46'),
(52, 2, 'Choose the correct preposition: He is good ___ math.', 'in', 'at', 'on', 'for', 'B', '2025-09-01 09:06:46'),
(53, 2, 'What is the opposite of \"fast\"?', 'slow', 'quick', 'rapid', 'swift', 'A', '2025-09-01 09:06:46'),
(54, 2, 'Select the correct past form: They ____ to the park.', 'go', 'went', 'gone', 'going', 'B', '2025-09-01 09:06:46'),
(55, 2, 'Which word is a noun?', 'run', 'quickly', 'happiness', 'blue', 'C', '2025-09-01 09:06:46'),
(56, 2, 'Choose correct sentence: \"She can sings well.\"', 'She can sings well.', 'She can sing well.', 'She can sang well.', 'She can song well.', 'B', '2025-09-01 09:06:46'),
(57, 2, 'Fill in: I am interested ___ music.', 'in', 'on', 'at', 'for', 'A', '2025-09-01 09:06:46'),
(58, 2, 'Select the correct plural: mouse', 'mouses', 'mice', 'mouse', 'meese', 'B', '2025-09-01 09:06:46'),
(59, 2, 'Choose the correct tense: He ___ TV now.', 'watches', 'watch', 'is watching', 'watched', 'C', '2025-09-01 09:06:46'),
(60, 2, 'Opposite of \"easy\"?', 'hard', 'simple', 'light', 'small', 'A', '2025-09-01 09:06:46'),
(61, 2, 'Fill in: We ___ going to the cinema.', 'is', 'are', 'am', 'be', 'B', '2025-09-01 09:06:46'),
(62, 2, 'Choose correct: I have never ___ to London.', 'go', 'went', 'gone', 'been', 'D', '2025-09-01 09:06:46'),
(63, 2, 'What is the comparative of \"good\"?', 'better', 'best', 'gooder', 'more good', 'A', '2025-09-01 09:06:46'),
(64, 2, 'Fill in: She has two brothers ___ one sister.', 'and', 'or', 'but', 'so', 'A', '2025-09-01 09:06:46'),
(65, 2, 'Select the correct question: ___ you like pizza?', 'Do', 'Does', 'Are', 'Is', 'A', '2025-09-01 09:06:46'),
(86, 3, 'H2O is the chemical formula of?', 'Hydrogen', 'Oxygen', 'Water', 'Salt', 'C', '2025-09-01 09:14:24'),
(87, 3, 'NaCl is commonly called?', 'Sodium', 'Salt', 'Sugar', 'Baking soda', 'B', '2025-09-01 09:14:24'),
(88, 3, 'The atomic number represents?', 'Number of protons', 'Number of neutrons', 'Mass', 'Charge', 'A', '2025-09-01 09:14:24'),
(89, 3, 'Which gas do we breathe in?', 'Oxygen', 'Carbon dioxide', 'Nitrogen', 'Hydrogen', 'A', '2025-09-01 09:14:24'),
(90, 3, 'What is the symbol of Gold?', 'Au', 'Ag', 'Go', 'Gd', 'A', '2025-09-01 09:14:24'),
(91, 3, 'Acid has pH less than?', '7', '14', '0', '1', 'A', '2025-09-01 09:14:24'),
(92, 3, 'Base has pH more than?', '7', '0', '14', '1', 'A', '2025-09-01 09:14:24'),
(93, 3, 'Water freezes at?', '0°C', '100°C', '50°C', '-10°C', 'A', '2025-09-01 09:14:24'),
(94, 3, 'Common fuel is?', 'Oxygen', 'Hydrogen', 'Petrol', 'Carbon dioxide', 'C', '2025-09-01 09:14:24'),
(95, 3, 'Which element is in all organic compounds?', 'Hydrogen', 'Carbon', 'Oxygen', 'Nitrogen', 'B', '2025-09-01 09:14:24'),
(96, 3, 'HCl is?', 'Acid', 'Base', 'Salt', 'Metal', 'A', '2025-09-01 09:14:24'),
(97, 3, 'NaOH is?', 'Acid', 'Base', 'Salt', 'Metal', 'B', '2025-09-01 09:14:24'),
(98, 3, 'CO2 is?', 'Gas', 'Liquid', 'Solid', 'Plasma', 'A', '2025-09-01 09:14:24'),
(99, 3, 'Which is noble gas?', 'Oxygen', 'Neon', 'Nitrogen', 'Hydrogen', 'B', '2025-09-01 09:14:24'),
(100, 3, 'pH of neutral solution?', '7', '0', '14', '1', 'A', '2025-09-01 09:14:24'),
(101, 3, 'Which reacts with acid to form salt?', 'Metal', 'Water', 'Gas', 'Base', 'D', '2025-09-01 09:14:24'),
(102, 3, 'Oxygen gas is?', 'O2', 'O3', 'CO2', 'H2O', 'A', '2025-09-01 09:14:24'),
(103, 3, 'Sulfuric acid formula?', 'H2SO4', 'HCl', 'NaOH', 'NaCl', 'A', '2025-09-01 09:14:24'),
(104, 3, 'Which is liquid at room temp?', 'Mercury', 'Sodium', 'Calcium', 'Potassium', 'A', '2025-09-01 09:14:24'),
(105, 3, 'Which is a compound?', 'O2', 'N2', 'H2O', 'H', 'C', '2025-09-01 09:14:24'),
(106, 4, 'Unit of force is?', 'Newton', 'Joule', 'Watt', 'Pascal', 'A', '2025-09-01 09:15:27'),
(107, 4, 'Speed formula?', 's = v/t', 'v = s/t', 't = s/v', 'a = v/t', 'B', '2025-09-01 09:15:27'),
(108, 4, 'Acceleration unit?', 'm/s²', 'm/s', 'm²/s', 'kg', 'A', '2025-09-01 09:15:27'),
(109, 4, 'Weight formula?', 'W = mg', 'W = mv', 'W = m/g', 'W = m + g', 'A', '2025-09-01 09:15:27'),
(110, 4, 'Energy unit?', 'Joule', 'Newton', 'Watt', 'Pascal', 'A', '2025-09-01 09:15:27'),
(111, 4, 'Velocity formula?', 'v = s/t', 'v = t/s', 'v = s×t', 'v = s + t', 'A', '2025-09-01 09:15:27'),
(112, 4, '1 km = ? m', '100', '1000', '10', '10000', 'B', '2025-09-01 09:15:27'),
(113, 4, 'Light speed approx?', '3×10^8 m/s', '3×10^6 m/s', '3×10^5 m/s', '3×10^3 m/s', 'A', '2025-09-01 09:15:27'),
(114, 4, 'Gravity acceleration on Earth?', '9.8 m/s²', '10 m/s²', '9.8 m/s', '10 m/s', 'A', '2025-09-01 09:15:27'),
(115, 4, 'Which is scalar quantity?', 'Velocity', 'Speed', 'Force', 'Momentum', 'B', '2025-09-01 09:15:27'),
(116, 4, 'Which is vector quantity?', 'Speed', 'Distance', 'Displacement', 'Time', 'C', '2025-09-01 09:15:27'),
(117, 4, 'Ohm’s law formula?', 'V = IR', 'P = IV', 'E = mc²', 'F = ma', 'A', '2025-09-01 09:15:27'),
(118, 4, 'Unit of power?', 'Watt', 'Joule', 'Newton', 'Pascal', 'A', '2025-09-01 09:15:27'),
(119, 4, '1 N = ?', '1 kg·m/s²', '1 kg·m²/s²', '1 kg·m/s', '1 kg·m/s³', 'A', '2025-09-01 09:15:27'),
(120, 4, 'Frequency unit?', 'Hz', 'W', 'J', 'N', 'A', '2025-09-01 09:15:27'),
(121, 4, 'Wavelength formula?', 'λ = v/f', 'λ = f/v', 'λ = v×f', 'λ = v+f', 'A', '2025-09-01 09:15:27'),
(122, 4, 'Potential energy formula?', 'PE = mgh', 'KE = ½ mv²', 'F = ma', 'E = mc²', 'A', '2025-09-01 09:15:27'),
(123, 4, 'Kinetic energy formula?', 'KE = ½ mv²', 'PE = mgh', 'F = ma', 'E = mc²', 'A', '2025-09-01 09:15:27'),
(124, 4, 'Which is SI unit of mass?', 'kg', 'g', 'lb', 'N', 'A', '2025-09-01 09:15:27'),
(125, 4, 'Momentum formula?', 'p = mv', 'F = ma', 'E = mc²', 'KE = ½ mv²', 'A', '2025-09-01 09:15:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `score` float NOT NULL,
  `total_question` int(11) NOT NULL,
  `correct_answer` int(11) NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `results`
--

INSERT INTO `results` (`id`, `user_id`, `exam_id`, `score`, `total_question`, `correct_answer`, `start_time`, `end_time`) VALUES
(2, 0, 0, 3, 40, 3, '2025-08-21 14:41:07', '2025-08-21 14:56:07'),
(3, 0, 0, 1, 40, 6, '2025-08-21 14:45:02', '2025-08-21 15:00:02'),
(4, 0, 0, 10, 40, 40, '2025-08-21 14:46:07', '2025-08-21 15:01:07'),
(5, 1, 0, 0, 20, 0, '2025-08-21 15:14:25', '2025-08-21 15:14:25'),
(6, 1, 0, 0, 20, 0, '2025-08-21 15:15:02', '2025-08-21 15:15:02'),
(7, 0, 0, 0, 20, 0, '2025-08-21 15:03:19', '2025-08-21 15:18:19'),
(8, 0, 0, 0, 20, 0, '2025-08-21 15:04:55', '2025-08-21 15:19:55'),
(9, 0, 0, 1, 20, 2, '2025-08-21 15:05:50', '2025-08-21 15:20:50'),
(10, 0, 0, 0, 40, 0, '2025-08-22 06:38:33', '2025-08-22 06:53:33'),
(11, 0, 0, 0, 40, 0, '2025-08-22 10:14:14', '2025-08-22 10:29:14'),
(12, 12, 0, 0, 40, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 12, 0, 3, 40, 3, '2025-08-28 15:42:56', '2025-08-28 15:42:56'),
(21, 12, 0, 0, 20, 0, '2025-08-28 16:30:19', '2025-08-28 16:36:09'),
(22, 12, 0, 0, 20, 0, '2025-08-28 16:36:30', '2025-08-28 16:36:30'),
(23, 12, 0, 0, 20, 0, '2025-08-28 16:40:52', '2025-08-28 16:40:52'),
(24, 12, 0, 0, 20, 0, '2025-08-28 16:41:18', '2025-08-28 16:41:18'),
(25, 12, 0, 0, 20, 0, '2025-08-28 16:41:55', '2025-08-28 16:41:55'),
(26, 12, 0, 0, 20, 0, '2025-08-28 16:42:10', '2025-08-28 16:42:16'),
(27, 12, 0, 0, 20, 0, '2025-08-28 16:42:35', '2025-08-28 16:42:43'),
(28, 12, 0, 0, 20, 0, '2025-08-28 16:50:47', '2025-08-28 16:50:47'),
(29, 12, 0, 1, 20, 1, '2025-08-28 16:50:56', '2025-08-28 16:50:59'),
(31, 12, 0, 2, 20, 2, '2025-08-28 16:52:37', '2025-08-28 16:52:42'),
(32, 12, 0, 2, 20, 2, '2025-08-28 16:59:02', '2025-08-28 16:59:02'),
(34, 12, 0, 1, 20, 1, '2025-08-28 17:01:17', '2025-08-28 17:01:21'),
(35, 12, 0, 1, 20, 1, '2025-08-28 17:01:56', '2025-08-28 17:01:56'),
(36, 12, 0, 1, 20, 1, '2025-08-28 17:03:23', '2025-08-28 17:03:23'),
(37, 12, 0, 1, 20, 1, '2025-08-28 17:03:57', '2025-08-28 17:03:57'),
(38, 12, 0, 1, 20, 1, '2025-08-28 17:04:14', '2025-08-28 17:04:14'),
(39, 12, 0, 2, 20, 2, '2025-08-28 17:09:15', '2025-08-28 17:12:15'),
(40, 12, 0, 2, 20, 2, '2025-08-29 14:20:34', '2025-08-29 14:20:55'),
(41, 12, 0, 1, 40, 1, '2025-09-01 05:41:13', '2025-09-01 05:41:22'),
(42, 12, 0, 0, 40, 0, '2025-09-01 06:09:49', '2025-09-01 06:10:13'),
(43, 13, 0, 1, 40, 1, '2025-09-01 06:23:56', '2025-09-01 06:24:03'),
(44, 12, 1, 0, 21, 0, '2025-09-01 09:22:34', '2025-09-01 09:37:28'),
(45, 12, 1, 0, 21, 0, '2025-09-01 10:44:39', '2025-09-01 10:44:39'),
(46, 12, 1, 0, 21, 0, '2025-09-01 10:45:26', '2025-09-01 10:45:26'),
(47, 12, 1, 0, 21, 0, '2025-09-01 10:45:43', '2025-09-01 10:45:43'),
(48, 12, 1, 0, 21, 0, '2025-09-01 10:48:45', '2025-09-01 10:48:45'),
(49, 12, 1, 3, 21, 3, '2025-09-01 10:48:50', '2025-09-01 10:48:57'),
(50, 12, 1, 3, 21, 3, '2025-09-01 10:50:16', '2025-09-01 10:50:16'),
(51, 12, 2, 1, 20, 1, '2025-09-01 11:06:56', '2025-09-01 11:07:05'),
(52, 12, 2, 1, 20, 1, '2025-09-01 11:07:25', '2025-09-01 11:07:25'),
(53, 12, 2, 1, 20, 1, '2025-09-01 11:08:56', '2025-09-01 11:08:56'),
(54, 12, 2, 1, 20, 1, '2025-09-01 11:11:42', '2025-09-01 11:11:42'),
(55, 12, 3, 0, 20, 0, '2025-09-01 11:15:33', '2025-09-01 11:15:36'),
(56, 12, 3, 0, 20, 0, '2025-09-01 11:19:01', '2025-09-01 11:19:01'),
(57, 12, 3, 0, 20, 0, '2025-09-01 11:19:41', '2025-09-01 11:19:45'),
(58, 12, 2, 0, 20, 0, '2025-09-01 11:19:48', '2025-09-01 11:22:32'),
(59, 12, 2, 0, 20, 0, '2025-09-01 11:23:55', '2025-09-01 11:23:55'),
(60, 12, 2, 0, 20, 0, '2025-09-01 11:23:57', '2025-09-01 11:43:18'),
(61, 12, 6, 0, 10, 0, '2025-09-01 11:48:40', '2025-09-01 13:10:27'),
(62, 12, 6, 0, 10, 0, '2025-09-01 11:48:40', '2025-09-01 13:10:54'),
(63, 12, 6, 0, 10, 0, '2025-09-01 11:48:40', '2025-09-01 13:11:21'),
(64, 12, 6, 0, 10, 0, '2025-09-01 11:48:40', '2025-09-01 13:11:25'),
(65, 12, 2, 0, 20, 0, '2025-09-01 11:48:40', '2025-09-01 13:17:46'),
(66, 12, 6, 0, 10, 0, '2025-09-01 11:48:40', '2025-09-01 13:18:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `EMAIL` varchar(100) NOT NULL,
  `PHONE` varchar(15) NOT NULL,
  `REG_DATE` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_admin` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`ID`, `USERNAME`, `PASSWORD`, `EMAIL`, `PHONE`, `REG_DATE`, `is_admin`) VALUES
(1, 'thanhtroll2oo45', '$2y$10$iUTBf7zXZ/dJ2XMMUcBII.lGdD8my.MMsnWTi3qosYm9otHLfIXby', '', '', '2025-08-17 16:03:13', 1),
(5, 'khoane123', '$2y$10$RbzzAE.a.G/b6cZUZZwxTuRN2oa2cD.pokRM9LuuBgxe6K1VlH0zK', 'khoahuynhkhoah12321@gmail.com', '0827396638', '2025-08-17 16:32:53', 0),
(6, 'nam123', '$2y$10$i688gQ7/zUM7uzbFWRj4d.knjcqtfn/uoaJ85wNPpiRZ9sDsG67rO', 'namhuynh123@gmail.com', '0123456789', '2025-08-19 06:16:39', 0),
(9, 'tuitenkhoa', '$2y$10$hLO2qtqjqFUJ/jDoSc8o2.wtmFGKo.01J4q/gjCyGA.ldL7GYlYgi', 'hungnguyen180705@gmail.com', '0937248462', '2025-08-19 08:01:02', 0),
(11, 'tuitenhoang', '$2y$10$pRDB3YjfzUXTs6uN7L3TdOore5lJNRPPCyDFtHVlMNftMBJyDRbNi', 'hongtyvn@gmail.com', '099999999', '2025-08-19 08:04:35', 0),
(12, 'dsada', '$2y$10$nZSfFhZ6.TXEH/SfU4urkenOJljnUgiUvSIEVfKO.gytm9CnCVq1q', 'Tata432@gmail.com', '0147852369', '2025-08-26 08:38:53', 1),
(13, 'nnn123', '$2y$10$f0NdL4GZDdaPMjx6p4pMzOk2w.1vAmz0QjkfR3rFDxUFhAtHPjB0i', 'nnn123@gmail.com', '0159875365', '2025-09-01 04:23:44', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `result_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `is_correct` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `user_answers`
--

INSERT INTO `user_answers` (`id`, `result_id`, `question_id`, `answer`, `is_correct`) VALUES
(1, 2, 1, 'A', 1),
(2, 2, 2, 'A', 1),
(3, 2, 3, 'A', 0),
(4, 2, 4, 'A', 1),
(5, 2, 5, NULL, 0),
(6, 2, 6, NULL, 0),
(7, 2, 7, NULL, 0),
(8, 2, 8, NULL, 0),
(9, 2, 9, NULL, 0),
(10, 2, 10, NULL, 0),
(11, 2, 11, NULL, 0),
(12, 2, 12, NULL, 0),
(13, 2, 13, NULL, 0),
(14, 2, 14, NULL, 0),
(15, 2, 15, NULL, 0),
(16, 2, 16, NULL, 0),
(17, 2, 17, NULL, 0),
(18, 2, 18, NULL, 0),
(19, 2, 19, NULL, 0),
(20, 2, 20, NULL, 0),
(21, 2, 21, NULL, 0),
(22, 2, 22, NULL, 0),
(23, 2, 23, NULL, 0),
(24, 2, 24, NULL, 0),
(25, 2, 25, NULL, 0),
(26, 2, 26, NULL, 0),
(27, 2, 27, NULL, 0),
(28, 2, 28, NULL, 0),
(29, 2, 29, NULL, 0),
(30, 2, 30, NULL, 0),
(31, 2, 31, NULL, 0),
(32, 2, 32, NULL, 0),
(33, 2, 33, NULL, 0),
(34, 2, 34, NULL, 0),
(35, 2, 35, NULL, 0),
(36, 2, 36, NULL, 0),
(37, 2, 37, NULL, 0),
(38, 2, 38, NULL, 0),
(39, 2, 39, NULL, 0),
(40, 2, 40, NULL, 0),
(41, 3, 1, 'A', 1),
(42, 3, 2, 'A', 1),
(43, 3, 3, 'A', 1),
(44, 3, 4, 'A', 1),
(45, 3, 5, 'A', 1),
(46, 3, 6, 'A', 1),
(47, 3, 7, NULL, 0),
(48, 3, 8, NULL, 0),
(49, 3, 9, NULL, 0),
(50, 3, 10, NULL, 0),
(51, 3, 11, NULL, 0),
(52, 3, 12, NULL, 0),
(53, 3, 13, NULL, 0),
(54, 3, 14, NULL, 0),
(55, 3, 15, NULL, 0),
(56, 3, 16, NULL, 0),
(57, 3, 17, NULL, 0),
(58, 3, 18, NULL, 0),
(59, 3, 19, NULL, 0),
(60, 3, 20, NULL, 0),
(61, 3, 21, NULL, 0),
(62, 3, 22, NULL, 0),
(63, 3, 23, NULL, 0),
(64, 3, 24, NULL, 0),
(65, 3, 25, NULL, 0),
(66, 3, 26, NULL, 0),
(67, 3, 27, NULL, 0),
(68, 3, 28, NULL, 0),
(69, 3, 29, NULL, 0),
(70, 3, 30, NULL, 0),
(71, 3, 31, NULL, 0),
(72, 3, 32, NULL, 0),
(73, 3, 33, NULL, 0),
(74, 3, 34, NULL, 0),
(75, 3, 35, NULL, 0),
(76, 3, 36, NULL, 0),
(77, 3, 37, NULL, 0),
(78, 3, 38, NULL, 0),
(79, 3, 39, NULL, 0),
(80, 3, 40, NULL, 0),
(81, 4, 1, 'A', 1),
(82, 4, 2, 'A', 1),
(83, 4, 3, 'A', 1),
(84, 4, 4, 'A', 1),
(85, 4, 5, 'A', 1),
(86, 4, 6, 'A', 1),
(87, 4, 7, 'A', 1),
(88, 4, 8, 'A', 1),
(89, 4, 9, 'A', 1),
(90, 4, 10, 'A', 1),
(91, 4, 11, 'A', 1),
(92, 4, 12, 'A', 1),
(93, 4, 13, 'A', 1),
(94, 4, 14, 'A', 1),
(95, 4, 15, 'A', 1),
(96, 4, 16, 'A', 1),
(97, 4, 17, 'A', 1),
(98, 4, 18, 'A', 1),
(99, 4, 19, 'A', 1),
(100, 4, 20, 'A', 1),
(101, 4, 21, 'A', 1),
(102, 4, 22, 'A', 1),
(103, 4, 23, 'A', 1),
(104, 4, 24, 'A', 1),
(105, 4, 25, 'A', 1),
(106, 4, 26, 'A', 1),
(107, 4, 27, 'A', 1),
(108, 4, 28, 'A', 1),
(109, 4, 29, 'A', 1),
(110, 4, 30, 'A', 1),
(111, 4, 31, 'A', 1),
(112, 4, 32, 'A', 1),
(113, 4, 33, 'A', 1),
(114, 4, 34, 'A', 1),
(115, 4, 35, 'A', 1),
(116, 4, 36, 'A', 1),
(117, 4, 37, 'A', 1),
(118, 4, 38, 'A', 1),
(119, 4, 39, 'A', 1),
(120, 4, 40, 'A', 1),
(121, 7, 1, '', 0),
(122, 7, 2, '', 0),
(123, 7, 3, '', 0),
(124, 7, 4, '', 0),
(125, 7, 5, '', 0),
(126, 7, 6, '', 0),
(127, 7, 7, '', 0),
(128, 7, 8, '', 0),
(129, 7, 9, '', 0),
(130, 7, 10, '', 0),
(131, 7, 11, '', 0),
(132, 7, 12, '', 0),
(133, 7, 13, '', 0),
(134, 7, 14, '', 0),
(135, 7, 15, '', 0),
(136, 7, 16, '', 0),
(137, 7, 17, '', 0),
(138, 7, 18, '', 0),
(139, 7, 19, '', 0),
(140, 7, 20, '', 0),
(141, 8, 1, '', 0),
(142, 8, 2, '', 0),
(143, 8, 3, '', 0),
(144, 8, 4, '', 0),
(145, 8, 5, '', 0),
(146, 8, 6, '', 0),
(147, 8, 7, '', 0),
(148, 8, 8, '', 0),
(149, 8, 9, '', 0),
(150, 8, 10, '', 0),
(151, 8, 11, '', 0),
(152, 8, 12, '', 0),
(153, 8, 13, '', 0),
(154, 8, 14, '', 0),
(155, 8, 15, '', 0),
(156, 8, 16, '', 0),
(157, 8, 17, '', 0),
(158, 8, 18, '', 0),
(159, 8, 19, '', 0),
(160, 8, 20, '', 0),
(161, 9, 1, '125 ÷ 5 = 25; 36 × 2 = 72 ⇒ 25 + 72 = 97.', 1),
(162, 9, 2, 'Chia cả tử và mẫu cho 42: 84/126 = 2/3.', 1),
(163, 9, 3, '', 0),
(164, 9, 4, '', 0),
(165, 9, 5, '', 0),
(166, 9, 6, '', 0),
(167, 9, 7, '', 0),
(168, 9, 8, '', 0),
(169, 9, 9, '', 0),
(170, 9, 10, '', 0),
(171, 9, 11, '', 0),
(172, 9, 12, '', 0),
(173, 9, 13, '', 0),
(174, 9, 14, '', 0),
(175, 9, 15, '', 0),
(176, 9, 16, '', 0),
(177, 9, 17, '', 0),
(178, 9, 18, '', 0),
(179, 9, 19, '', 0),
(180, 9, 20, '', 0),
(181, 10, 1, NULL, 0),
(182, 10, 2, NULL, 0),
(183, 10, 3, NULL, 0),
(184, 10, 4, NULL, 0),
(185, 10, 5, NULL, 0),
(186, 10, 6, NULL, 0),
(187, 10, 7, NULL, 0),
(188, 10, 8, NULL, 0),
(189, 10, 9, NULL, 0),
(190, 10, 10, NULL, 0),
(191, 10, 11, NULL, 0),
(192, 10, 12, NULL, 0),
(193, 10, 13, NULL, 0),
(194, 10, 14, NULL, 0),
(195, 10, 15, NULL, 0),
(196, 10, 16, NULL, 0),
(197, 10, 17, NULL, 0),
(198, 10, 18, NULL, 0),
(199, 10, 19, NULL, 0),
(200, 10, 20, NULL, 0),
(201, 10, 21, NULL, 0),
(202, 10, 22, NULL, 0),
(203, 10, 23, NULL, 0),
(204, 10, 24, NULL, 0),
(205, 10, 25, NULL, 0),
(206, 10, 26, NULL, 0),
(207, 10, 27, NULL, 0),
(208, 10, 28, NULL, 0),
(209, 10, 29, NULL, 0),
(210, 10, 30, NULL, 0),
(211, 10, 31, NULL, 0),
(212, 10, 32, NULL, 0),
(213, 10, 33, NULL, 0),
(214, 10, 34, NULL, 0),
(215, 10, 35, NULL, 0),
(216, 10, 36, NULL, 0),
(217, 10, 37, NULL, 0),
(218, 10, 38, NULL, 0),
(219, 10, 39, NULL, 0),
(220, 10, 40, NULL, 0),
(221, 11, 1, NULL, 0),
(222, 11, 2, NULL, 0),
(223, 11, 3, NULL, 0),
(224, 11, 4, NULL, 0),
(225, 11, 5, NULL, 0),
(226, 11, 6, NULL, 0),
(227, 11, 7, NULL, 0),
(228, 11, 8, NULL, 0),
(229, 11, 9, NULL, 0),
(230, 11, 10, NULL, 0),
(231, 11, 11, NULL, 0),
(232, 11, 12, NULL, 0),
(233, 11, 13, NULL, 0),
(234, 11, 14, NULL, 0),
(235, 11, 15, NULL, 0),
(236, 11, 16, NULL, 0),
(237, 11, 17, NULL, 0),
(238, 11, 18, NULL, 0),
(239, 11, 19, NULL, 0),
(240, 11, 20, NULL, 0),
(241, 11, 21, NULL, 0),
(242, 11, 22, NULL, 0),
(243, 11, 23, NULL, 0),
(244, 11, 24, NULL, 0),
(245, 11, 25, NULL, 0),
(246, 11, 26, NULL, 0),
(247, 11, 27, NULL, 0),
(248, 11, 28, NULL, 0),
(249, 11, 29, NULL, 0),
(250, 11, 30, NULL, 0),
(251, 11, 31, NULL, 0),
(252, 11, 32, NULL, 0),
(253, 11, 33, NULL, 0),
(254, 11, 34, NULL, 0),
(255, 11, 35, NULL, 0),
(256, 11, 36, NULL, 0),
(257, 11, 37, NULL, 0),
(258, 11, 38, NULL, 0),
(259, 11, 39, NULL, 0),
(260, 11, 40, NULL, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `bai_toan_tu_luan`
--
ALTER TABLE `bai_toan_tu_luan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `essay_questions`
--
ALTER TABLE `essay_questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Chỉ mục cho bảng `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`exam_id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`question_id`),
  ADD KEY `fk_exams` (`exam_id`);

--
-- Chỉ mục cho bảng `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `exam_id_2` (`exam_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `EMAIL` (`EMAIL`),
  ADD UNIQUE KEY `PHONE` (`PHONE`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`);

--
-- Chỉ mục cho bảng `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_id` (`result_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `bai_toan_tu_luan`
--
ALTER TABLE `bai_toan_tu_luan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `essay_questions`
--
ALTER TABLE `essay_questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `exams`
--
ALTER TABLE `exams`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT cho bảng `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `fk_exams` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`exam_id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`result_id`) REFERENCES `results` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
