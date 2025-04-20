-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2023 at 11:09 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam pilot`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `admin_email` varchar(55) NOT NULL,
  `username` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_email`, `username`, `password`) VALUES
(1, 'tahsin@admin.gmail.com', 'Tahsin Ahmed', '1234'),
(2, 'nabil@admin.gmail.com', 'Irfanul Haque', '12345'),
(3, 'fahim@admin.gmail.com', 'Fahim Chowdhury', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `ID` varchar(55) NOT NULL,
  `student_name` varchar(55) NOT NULL,
  `course_code` varchar(55) NOT NULL,
  `dept_name` varchar(55) NOT NULL,
  `semester` int(100) NOT NULL,
  `status` varchar(55) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`ID`, `student_name`, `course_code`, `dept_name`, `semester`, `status`, `date`) VALUES
('BFH2025006M', 'Nure Jannat', 'CSE 501', 'Software Engineering', 5, 'present', '2023-09-14'),
('BFH2025006M', 'Nure Jannat', 'CSE 502 ', 'Software Engineering', 5, 'present', '2023-09-20'),
('BKH2025002M', 'Fazilater Jahan', 'CSE 501', 'Software Engineering', 5, 'absent', '2023-09-14'),
('MUH2025001M', 'Fardin Alam Alif', 'CSE 501', 'Software Engineering', 5, 'present', '2023-09-14'),
('MUH2025001M', 'Fardin Alam Alif', 'CSE 502 ', 'Software Engineering', 5, 'absent', '2023-09-20'),
('MUH2025002M', 'Fazilater Jahan', 'CSE 502 ', 'Software Engineering', 5, 'present', '2023-09-20'),
('MUH2025003M', 'Shoriful Habib', 'CSE 501', 'Software Engineering', 5, 'present', '2023-09-14'),
('MUH2025003M', 'Shoriful Habib', 'CSE 502 ', 'Software Engineering', 5, 'absent', '2023-09-20'),
('MUH2025004M', 'Asif Mahmud', 'CSE 501', 'Software Engineering', 5, 'absent', '2023-09-14'),
('MUH2025004M', 'Asif Mahmud', 'CSE 502 ', 'Software Engineering', 5, 'present', '2023-09-20'),
('MUH2025005M', 'Robiul Islam Shanto', 'CSE 501', 'Software Engineering', 5, 'present', '2023-09-14'),
('MUH2025005M', 'Robiul Islam Shanto', 'CSE 502 ', 'Software Engineering', 5, 'absent', '2023-09-20'),
('MUH2025027M', 'Imtiaz Chowdhury', 'CSE 502 ', 'Software Engineering', 5, 'present', '2023-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(55) NOT NULL,
  `course_name` varchar(55) NOT NULL,
  `department` varchar(55) NOT NULL,
  `semester` int(100) NOT NULL,
  `session` varchar(55) NOT NULL,
  `totall_credit` int(100) NOT NULL,
  `totall_students` int(100) NOT NULL,
  `1st_examiner_id` int(100) NOT NULL,
  `2nd_examiner_id` int(100) NOT NULL,
  `3rd_examiner_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `department`, `semester`, `session`, `totall_credit`, `totall_students`, `1st_examiner_id`, `2nd_examiner_id`, `3rd_examiner_id`) VALUES
('BUS 503', 'Business Communications', 'Software Engineering', 5, '2019-2020', 3, 35, 8, 6, 7),
('CSE 501', 'Professional Ethics for Information Systems ', 'Software Engineering', 5, '2019-2020', 3, 35, 1, 3, 4),
('CSE 502 ', 'Web Technology', 'Software Engineering', 5, '2019-2020', 3, 35, 5, 2, 3),
('CSE 504', 'Data Science and Analytics DBMS II', 'Software Engineering', 5, '2019-2020', 3, 35, 9, 6, 2),
('SE 505', 'Software Project Lab II', 'Software Engineering', 5, '2019-2020', 3, 35, 2, 3, 5),
('SE 506', 'Design Pattern', 'Software Engineering', 5, '2019-2020', 3, 35, 3, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept_code` varchar(55) NOT NULL,
  `dept_name` varchar(55) NOT NULL,
  `totall_courses` int(100) NOT NULL,
  `totall_semester` int(100) NOT NULL,
  `totall_student` int(100) NOT NULL,
  `totall_credit` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_code`, `dept_name`, `totall_courses`, `totall_semester`, `totall_student`, `totall_credit`) VALUES
('BBA', 'Business Administration', 50, 8, 235, 168),
('CSE', 'Computer Science & Engineering', 50, 8, 220, 165),
('ICE', 'Information & Communication Engineering', 50, 8, 225, 165),
('SE', 'Software Engineering', 50, 8, 160, 155);

-- --------------------------------------------------------

--
-- Table structure for table `exam_controller`
--

CREATE TABLE `exam_controller` (
  `Id` int(55) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `contact` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `exam_controller`
--

INSERT INTO `exam_controller` (`Id`, `name`, `email`, `password`, `contact`) VALUES
(1, 'Tahsin Ahmed', 'tahsin@examcontroller.nstu.edu.com', '1234', 1303244508),
(2, 'Irfanul Haque', 'irfan@examcontroller.nstu.edu.com', '12345', 1303244509);

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `teacher_id` int(100) NOT NULL,
  `teacher_name` varchar(55) NOT NULL,
  `email_id` varchar(55) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `dept_name` varchar(55) NOT NULL,
  `designation` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`teacher_id`, `teacher_name`, `email_id`, `contact`, `dept_name`, `designation`, `password`) VALUES
(1, 'Iftekhar Alam Iftee', 'iftee.iit@nstu.edu.bd', '01303244504', 'Software Engineering', 'Assistant Professor', '12345'),
(2, 'Tasniya Ahmed Neela', 'tasniya.iit@nstu.edu.bd', '01303244505', 'Software Engineering', 'Assistant Professor', '12345'),
(3, 'MD. Eusha Kadir', 'eusha.iit@nstu.edu.bd', '01303244508', 'Software Engineering', 'Lecturer', '12345'),
(4, 'Md Auhidur Rahman', 'auhidur.iit@nstu.edu.bd', '01303244504', 'Software Engineering', 'Assistant Professor', '12345'),
(5, 'Rafid Mostfiz', 'rafid.iit@nstu.edu.bd', '01303244504', 'Software Engineering', 'Lecturer', '12345'),
(6, 'Dipok Chandra Das', 'dipok.iit@nstu.edu.bd', '01303244504', 'Software Engineering', 'Assistant Professor', '12345'),
(7, 'Hasan Imam', 'hasan.iit@nstu.edu.bd', '01303244509', 'Software Engineering', 'Lecturer', '12345'),
(8, 'Subarna Biswas', 'subarna.iit@nstu.edu.bd', '01303244507', 'Business Administration', 'Assistant Professor', '12345'),
(9, 'Nazmun Nahar', 'nazmun.iit@nstu.edu.bd', '01303244509', 'Software Engineering', 'Lecturer', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `sendrequest`
--

CREATE TABLE `sendrequest` (
  `department` varchar(55) NOT NULL,
  `semester` int(100) NOT NULL,
  `course_name` varchar(55) NOT NULL,
  `course_code` varchar(55) NOT NULL,
  `teacher_id` int(100) NOT NULL,
  `sqyllabus` varchar(111) NOT NULL,
  `question_pattern` varchar(111) NOT NULL,
  `deadline` date NOT NULL,
  `request_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sendrequest`
--

INSERT INTO `sendrequest` (`department`, `semester`, `course_name`, `course_code`, `teacher_id`, `sqyllabus`, `question_pattern`, `deadline`, `request_id`) VALUES
('Software Engineering', 5, 'Professional Ethics for Information Systems ', 'CSE 501', 1, '65016ada30c45_MUH2025007M(report writing).pdf', '65016ada30c56_Report_on_CCC.pdf', '2023-09-30', 2),
('Software Engineering', 5, 'Professional Ethics for Information Systems ', 'CSE 501', 1, '650177669eb0b_BDRAILWAY_TICKET2023070715352513734142.pdf', '650177669eb14_new Banner (12 Ã— 6 in).pdf', '2023-09-24', 3),
('Software Engineering', 5, 'Software Project Lab II', 'SE 505', 2, '65065aa32aad7_Final Report ExamPilot 2.pdf', '65065aa32aae4_Lab ReportWeb.pdf', '2023-09-28', 4);

-- --------------------------------------------------------

--
-- Table structure for table `send_question`
--

CREATE TABLE `send_question` (
  `course_code` varchar(55) NOT NULL,
  `course_name` varchar(55) NOT NULL,
  `semester` int(100) NOT NULL,
  `department_name` varchar(55) NOT NULL,
  `sender` varchar(55) NOT NULL,
  `recipient_teacher` int(100) NOT NULL,
  `question_file_path` varchar(255) NOT NULL,
  `encrypted_file_path` varchar(255) NOT NULL,
  `secret_key` varchar(55) NOT NULL,
  `iv` varchar(55) NOT NULL,
  `question_number` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `send_question`
--

INSERT INTO `send_question` (`course_code`, `course_name`, `semester`, `department_name`, `sender`, `recipient_teacher`, `question_file_path`, `encrypted_file_path`, `secret_key`, `iv`, `question_number`) VALUES
('CSE 501', 'Professional Ethics for Information Systems ', 5, 'Software Engineering', 'Exam Controller', 0, '6505ad0002fbd_Outliers Assignment.pdf', '', 'ò36°–=³×LEh¼»ëœSNÓ\0ªEaj@ñô¼ss†', '', 1),
('CSE 501', 'Professional Ethics for Information Systems ', 5, 'Software Engineering', 'Exam Controller', 0, '6505ae55096eb_Outliers Assignment.pdf', '', 'ñ*EÍ.?&±zø\nQbÊy)z]Ï©ŽÀ:ALûº', '', 2),
('CSE 501', 'Web Technology', 5, 'Software Engineering', 'Exam Controller', 5, '6505b75f6d332_Spl project report new.pdf', '6505b75f6d6e1_encrypted_6505b75f6d332_Spl project report new.pdf', '}œŒëÛ‹^®ñÅîñä’ßAÔB?Z4ÁÇ#É¯7X', '],ËE§-ˆâ³g¥;ö', 3),
('SE1101', 'Software Project Lab II', 5, 'Software Engineering', 'Exam Controller', 2, '6505be9d54bf2_MUH2025007M(Assignment-1).pdf', '6505be9d54dae_encrypted_6505be9d54bf2_MUH2025007M(Assignment-1).pdf', '¸3²•Cx¶FŠœ‡vÒkô§mz(+ÍöH\"K\"°á_A', '±J¼Q\"†ÚÍ*²;túõ', 4),
('CSE 501', 'Design Pattern', 5, 'Software Engineering', 'Exam Controller', 3, '6505e8aa2fccc_Exam Pilot Database Modification.txt', '6505e8aa30099_encrypted_6505e8aa2fccc_Exam Pilot Database Modification.txt', '½­\rãÝDö.ÓÒÁÂÁö=ù\02}»¢ÖÕì=€', '²÷œ¼‰Y–Aa86qÎþg$', 6),
('CSE 501', 'Data Science and Analytics DBMS II', 5, 'Software Engineering', 'Exam Controller', 9, '65060208eb452_cp.pdf', '65060208eb72e_encrypted_65060208eb452_cp.pdf', '´/ØO~3—¼™æÕ´ú£2V=,––|™;oQ;ÚÍ»', '¯oƒÚ}òÃŸ€¾Ä‹', 7);

-- --------------------------------------------------------

--
-- Table structure for table `send_question_controller`
--

CREATE TABLE `send_question_controller` (
  `course_code` varchar(55) NOT NULL,
  `course_name` varchar(55) NOT NULL,
  `semester` int(100) NOT NULL,
  `department_name` varchar(55) NOT NULL,
  `sender_teacher_name` varchar(55) NOT NULL,
  `recepient_controller_id` int(100) NOT NULL,
  `question_file_path` varchar(255) NOT NULL,
  `encrypted_file_path` varchar(255) NOT NULL,
  `secret_key` varchar(55) NOT NULL,
  `iv` varchar(55) NOT NULL,
  `request_id` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `send_question_controller`
--

INSERT INTO `send_question_controller` (`course_code`, `course_name`, `semester`, `department_name`, `sender_teacher_name`, `recepient_controller_id`, `question_file_path`, `encrypted_file_path`, `secret_key`, `iv`, `request_id`) VALUES
('CSE 501', 'Software Project Lab II', 5, 'Software Engineering', 'Tasniya Ahmed Neela', 1, '65061ca162b93_student_marksheet_30.pdf', '65061ca162fd6_encrypted_65061ca162b93_student_marksheet_30.pdf', 'ê4_¶8]ñÿÛÁX$¯M]|f†“þëf„ýƒìY˜Y', '#Ž¦Û|.¡Œ ½Ð£¾', 3);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(55) NOT NULL,
  `student_name` varchar(55) NOT NULL,
  `email_id` varchar(55) NOT NULL,
  `contact` varchar(55) NOT NULL,
  `dept_name` varchar(55) NOT NULL,
  `semester` int(11) NOT NULL,
  `session` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `student_name`, `email_id`, `contact`, `dept_name`, `semester`, `session`, `password`) VALUES
('BFH2025006M', 'Nure Jannat', 'jannat@student.nstu.edu.bd', '01303244505', 'Software Engineering', 5, '2019-2020', '1234'),
('MUH2025001M', 'Fardin Alam Alif', 'fardin@student.nstu.edu.bd', '01303244509', 'Software Engineering', 5, '2019-2020', '1234'),
('MUH2025002M', 'Fazilater Jahan', 'fazilater@student.nstu.edu.bd', '01303244509', 'Software Engineering', 5, '2019-2020', '1234'),
('MUH2025003M', 'Shoriful Habib', 'shoriful@student.nstu.edu.bd', '01303244506', 'Software Engineering', 5, '2019-2020', '1234'),
('MUH2025004M', 'Asif Mahmud', 'asif@student.nstu.edu.bd', '01303244508', 'Software Engineering', 5, '2019-2020', '1234'),
('MUH2025005M', 'Robiul Islam Shanto', 'shanto@student.nstu.edu.bd', '01303244508', 'Software Engineering', 5, '2019-2020', '1234'),
('MUH2025007M', 'Mir Mohammod Tahsin', 'tahsin@student.nstu.edu.bd', '01303244504', 'Computer Science & Engineering', 5, '2019-2020', '1234'),
('MUH2025027M', 'Imtiaz Chowdhury', 'imtiaz2515@student.nstu.edu.bd', '01631330629', 'Software Engineering', 5, '2019-2020', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `course_code` varchar(55) NOT NULL,
  `student_id` varchar(55) NOT NULL,
  `ct1_marks` int(100) NOT NULL,
  `ct2_marks` int(100) NOT NULL,
  `ct3_marks` int(100) NOT NULL,
  `attendance_marks` int(100) NOT NULL,
  `final_marks` int(100) NOT NULL,
  `totall_marks` int(100) NOT NULL,
  `grade` varchar(55) NOT NULL,
  `teacher_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`course_code`, `student_id`, `ct1_marks`, `ct2_marks`, `ct3_marks`, `attendance_marks`, `final_marks`, `totall_marks`, `grade`, `teacher_id`) VALUES
('CSE 502 ', 'MUH2025001M', 22, 21, 22, 5, 65, 92, 'A+', 2),
('CSE 502 ', 'MUH2025001M', 20, 20, 22, 5, 45, 71, 'A-', 5),
('CSE 502 ', 'MUH2025001M', 20, 21, 20, 5, 63, 89, 'A+', 3),
('CSE 502 ', 'MUH2025002M', 20, 21, 20, 5, 68, 94, 'A+', 5),
('CSE 502 ', 'MUH2025002M', 20, 21, 21, 5, 50, 76, 'A', 2),
('CSE 502 ', 'MUH2025003M', 18, 19, 23, 4, 55, 80, 'A+', 5),
('CSE 502 ', 'MUH2025003M', 21, 21, 22, 5, 53, 80, 'A', 2),
('SE 505', 'MUH2025001M', 20, 20, 21, 5, 65, 91, 'A+', 2),
('SE 505', 'MUH2025001M', 20, 22, 22, 4, 58, 84, 'A+', 3),
('CSE 502 ', 'MUH2025002M', 20, 21, 22, 5, 56, 83, 'A+', 2),
('SE 505', 'MUH2025002M', 20, 22, 22, 5, 55, 82, 'A+', 2),
('SE 505', 'MUH2025002M', 20, 20, 22, 5, 58, 84, 'A+', 3),
('CSE 501', 'MUH2025001M', 20, 22, 20, 5, 65, 91, 'A+', 1),
('CSE 501', 'MUH2025001M', 21, 22, 22, 5, 50, 77, 'A', 3),
('CSE 501', 'MUH2025001M', 20, 22, 21, 5, 60, 87, 'A+', 4),
('SE 506', 'MUH2025001M', 15, 16, 16, 3, 50, 69, 'B+', 3),
('SE 506', 'MUH2025001M', 20, 22, 21, 5, 56, 83, 'A+', 7),
('SE 505', 'MUH2025004M', 20, 22, 22, 5, 65, 92, 'A+', 2),
('SE 505', 'MUH2025004M', 20, 22, 23, 5, 50, 78, 'A', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`,`admin_email`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID`,`course_code`,`date`),
  ADD KEY `attendance_ibfk_1` (`course_code`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`),
  ADD KEY `1st_examiner_id` (`1st_examiner_id`),
  ADD KEY `courses_ibfk_1` (`2nd_examiner_id`),
  ADD KEY `3rd_examiner_id` (`3rd_examiner_id`),
  ADD KEY `department` (`department`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dept_name`);

--
-- Indexes for table `exam_controller`
--
ALTER TABLE `exam_controller`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`teacher_id`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `sendrequest`
--
ALTER TABLE `sendrequest`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `sendrequest_ibfk_1` (`department`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `send_question`
--
ALTER TABLE `send_question`
  ADD PRIMARY KEY (`question_number`),
  ADD KEY `department_name` (`department_name`);

--
-- Indexes for table `send_question_controller`
--
ALTER TABLE `send_question_controller`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `recepient_controller_id` (`recepient_controller_id`),
  ADD KEY `send_question_controller_ibfk_1` (`course_code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`),
  ADD KEY `dept_name` (`dept_name`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD KEY `course_code` (`course_code`),
  ADD KEY `student_marks_ibfk_1` (`student_id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_controller`
--
ALTER TABLE `exam_controller`
  MODIFY `Id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `teacher_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `sendrequest`
--
ALTER TABLE `sendrequest`
  MODIFY `request_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `send_question`
--
ALTER TABLE `send_question`
  MODIFY `question_number` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `send_question_controller`
--
ALTER TABLE `send_question_controller`
  MODIFY `request_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `courses_ibfk_1` FOREIGN KEY (`department`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `faculties`
--
ALTER TABLE `faculties`
  ADD CONSTRAINT `faculties_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `sendrequest`
--
ALTER TABLE `sendrequest`
  ADD CONSTRAINT `sendrequest_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `faculties` (`teacher_id`);

--
-- Constraints for table `send_question`
--
ALTER TABLE `send_question`
  ADD CONSTRAINT `send_question_ibfk_1` FOREIGN KEY (`department_name`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`dept_name`) REFERENCES `department` (`dept_name`);

--
-- Constraints for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD CONSTRAINT `student_marks_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `faculties` (`teacher_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
