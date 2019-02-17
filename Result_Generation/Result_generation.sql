-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 17, 2019 at 02:13 PM
-- Server version: 5.7.22-0ubuntu0.17.10.1
-- PHP Version: 7.1.17-0ubuntu0.17.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Result_generation`
--

-- --------------------------------------------------------

--
-- Table structure for table `AdminFacultyUsers`
--

CREATE TABLE `AdminFacultyUsers` (
  `ID` int(4) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `secquest_no` int(2) NOT NULL,
  `answer` varchar(25) NOT NULL,
  `contact` char(10) NOT NULL,
  `course_code` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `AssessmentTools`
--

CREATE TABLE `AssessmentTools` (
  `ass_no` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

CREATE TABLE `Class` (
  `year` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Class`
--

INSERT INTO `Class` (`year`) VALUES
('BE'),
('FY/FE'),
('SY/SE'),
('TY/TE');

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `course_code` int(2) NOT NULL,
  `course_name` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='name of cources(e.x. BSc.Computer Science, B.A.Hindi)';

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`course_code`, `course_name`) VALUES
(6, 'COMPUTER'),
(4, 'ELECTRICAL'),
(5, 'ELECTRONICS AND TELECOMMUNICATION'),
(7, 'ENGINEERING SCIENCE'),
(8, 'INFORMATION TECHNOLOGY'),
(2, 'MBA'),
(1, 'MCA ENGG'),
(3, 'MECHANICAL');

-- --------------------------------------------------------

--
-- Table structure for table `Exam`
--

CREATE TABLE `Exam` (
  `exam_code` varchar(7) NOT NULL,
  `exam_name` varchar(20) NOT NULL,
  `pattern` varchar(4) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `academic_year` varchar(7) NOT NULL,
  `course_code` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ExternalMarks`
--

CREATE TABLE `ExternalMarks` (
  `ext_mks_id` int(7) NOT NULL,
  `stud_sub_no` int(3) NOT NULL,
  `no_of_attempt` int(1) NOT NULL,
  `obtained_mks` int(2) NOT NULL,
  `obtained_credit_points` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `FacultySubject`
--

CREATE TABLE `FacultySubject` (
  `faculty_sub_id` int(7) NOT NULL,
  `academic_year` varchar(7) NOT NULL,
  `faculty_id` int(4) NOT NULL,
  `subject_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `InternalMarks`
--

CREATE TABLE `InternalMarks` (
  `int_mks_id` int(7) NOT NULL,
  `stud_sub_no` int(3) NOT NULL,
  `no_of_attempt` int(1) NOT NULL,
  `assessment_tool_no` varchar(3) NOT NULL,
  `obtained_mks` int(2) NOT NULL,
  `obtained_credit_points` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OtherAssessmentTools`
--

CREATE TABLE `OtherAssessmentTools` (
  `other_ass_no` varchar(3) NOT NULL,
  `other_ass_name` varchar(200) NOT NULL,
  `max_mks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OtherCourseObjectives`
--

CREATE TABLE `OtherCourseObjectives` (
  `other_co_id` int(3) NOT NULL,
  `other_co_no` int(2) NOT NULL,
  `other_co_name` varchar(300) NOT NULL,
  `subject_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `OtherSubject`
--

CREATE TABLE `OtherSubject` (
  `other_sub_code` varchar(7) NOT NULL,
  `other_sub_name` varchar(20) NOT NULL,
  `class` varchar(5) NOT NULL,
  `course_code` int(2) NOT NULL,
  `max_credit_points` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PracticalAssessmentTools`
--

CREATE TABLE `PracticalAssessmentTools` (
  `practical_ass_no` varchar(3) NOT NULL,
  `practical_ass_name` varchar(100) NOT NULL,
  `max_mks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PracticalCourseObjectives`
--

CREATE TABLE `PracticalCourseObjectives` (
  `pract_co_id` int(4) NOT NULL,
  `practical_co_no` int(2) NOT NULL,
  `practical_co_name` varchar(300) NOT NULL,
  `subject_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PracticalSubject`
--

CREATE TABLE `PracticalSubject` (
  `practical_sub_code` varchar(7) NOT NULL,
  `practical_sub_name` varchar(20) NOT NULL,
  `class` varchar(5) NOT NULL,
  `course_code` int(2) NOT NULL,
  `max_credit_points` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `SecurityQuest`
--

CREATE TABLE `SecurityQuest` (
  `secquest_no` int(2) NOT NULL,
  `secquest` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='questions for security purpose';

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `prn` char(10) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `middle_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email_id` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `secquest_no` int(2) NOT NULL,
  `answer` varchar(20) NOT NULL,
  `contact` char(10) NOT NULL,
  `joining_yr` date NOT NULL,
  `sex` char(1) NOT NULL,
  `shift` char(1) NOT NULL DEFAULT '1',
  `course_code` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `StudentSubject`
--

CREATE TABLE `StudentSubject` (
  `stud_sub_no` int(3) NOT NULL,
  `prn` char(10) NOT NULL,
  `subject_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `Subject`
--

CREATE TABLE `Subject` (
  `subject_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TheoryAssessmentTools`
--

CREATE TABLE `TheoryAssessmentTools` (
  `theory_ass_no` varchar(3) NOT NULL,
  `theory_ass_name` varchar(100) NOT NULL,
  `max_mks` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TheoryCourseObjectives`
--

CREATE TABLE `TheoryCourseObjectives` (
  `theory_co_id` int(4) NOT NULL,
  `theory_co_no` int(2) NOT NULL,
  `theory_co_name` varchar(300) NOT NULL,
  `subject_code` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `TheorySubject`
--

CREATE TABLE `TheorySubject` (
  `theory_sub_code` varchar(7) NOT NULL,
  `theory_sub_name` varchar(20) NOT NULL,
  `class` varchar(5) NOT NULL,
  `course_code` int(2) NOT NULL,
  `max_credit_points` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AdminFacultyUsers`
--
ALTER TABLE `AdminFacultyUsers`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `email_id` (`email_id`),
  ADD UNIQUE KEY `contact` (`contact`),
  ADD KEY `secquest_no` (`secquest_no`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `AssessmentTools`
--
ALTER TABLE `AssessmentTools`
  ADD PRIMARY KEY (`ass_no`);

--
-- Indexes for table `Class`
--
ALTER TABLE `Class`
  ADD PRIMARY KEY (`year`);

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`course_code`),
  ADD UNIQUE KEY `coursename` (`course_name`);

--
-- Indexes for table `Exam`
--
ALTER TABLE `Exam`
  ADD PRIMARY KEY (`exam_code`),
  ADD UNIQUE KEY `exam_name` (`exam_name`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `ExternalMarks`
--
ALTER TABLE `ExternalMarks`
  ADD KEY `stud_sub_no` (`stud_sub_no`);

--
-- Indexes for table `FacultySubject`
--
ALTER TABLE `FacultySubject`
  ADD PRIMARY KEY (`faculty_sub_id`),
  ADD KEY `faculty_id` (`faculty_id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `InternalMarks`
--
ALTER TABLE `InternalMarks`
  ADD PRIMARY KEY (`int_mks_id`),
  ADD KEY `stud_sub_no` (`stud_sub_no`),
  ADD KEY `assessment_tool_no` (`assessment_tool_no`);

--
-- Indexes for table `OtherAssessmentTools`
--
ALTER TABLE `OtherAssessmentTools`
  ADD PRIMARY KEY (`other_ass_no`);

--
-- Indexes for table `OtherCourseObjectives`
--
ALTER TABLE `OtherCourseObjectives`
  ADD PRIMARY KEY (`other_co_id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `OtherSubject`
--
ALTER TABLE `OtherSubject`
  ADD PRIMARY KEY (`other_sub_code`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `class` (`class`);

--
-- Indexes for table `PracticalAssessmentTools`
--
ALTER TABLE `PracticalAssessmentTools`
  ADD PRIMARY KEY (`practical_ass_no`);

--
-- Indexes for table `PracticalCourseObjectives`
--
ALTER TABLE `PracticalCourseObjectives`
  ADD PRIMARY KEY (`pract_co_id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `PracticalSubject`
--
ALTER TABLE `PracticalSubject`
  ADD PRIMARY KEY (`practical_sub_code`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `year` (`class`);

--
-- Indexes for table `SecurityQuest`
--
ALTER TABLE `SecurityQuest`
  ADD PRIMARY KEY (`secquest_no`),
  ADD UNIQUE KEY `secquest` (`secquest`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`prn`),
  ADD UNIQUE KEY `stud_email` (`email_id`),
  ADD UNIQUE KEY `stud_contact` (`contact`),
  ADD KEY `secquest_no` (`secquest_no`),
  ADD KEY `course_code` (`course_code`);

--
-- Indexes for table `StudentSubject`
--
ALTER TABLE `StudentSubject`
  ADD PRIMARY KEY (`stud_sub_no`),
  ADD KEY `prn` (`prn`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `Subject`
--
ALTER TABLE `Subject`
  ADD PRIMARY KEY (`subject_code`);

--
-- Indexes for table `TheoryAssessmentTools`
--
ALTER TABLE `TheoryAssessmentTools`
  ADD PRIMARY KEY (`theory_ass_no`);

--
-- Indexes for table `TheoryCourseObjectives`
--
ALTER TABLE `TheoryCourseObjectives`
  ADD PRIMARY KEY (`theory_co_id`),
  ADD KEY `subject_code` (`subject_code`);

--
-- Indexes for table `TheorySubject`
--
ALTER TABLE `TheorySubject`
  ADD PRIMARY KEY (`theory_sub_code`),
  ADD KEY `course_code` (`course_code`),
  ADD KEY `TheorySubject_ibfk_2` (`class`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AdminFacultyUsers`
--
ALTER TABLE `AdminFacultyUsers`
  MODIFY `ID` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `Course`
--
ALTER TABLE `Course`
  MODIFY `course_code` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `InternalMarks`
--
ALTER TABLE `InternalMarks`
  MODIFY `int_mks_id` int(7) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `OtherCourseObjectives`
--
ALTER TABLE `OtherCourseObjectives`
  MODIFY `other_co_id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `PracticalCourseObjectives`
--
ALTER TABLE `PracticalCourseObjectives`
  MODIFY `pract_co_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `SecurityQuest`
--
ALTER TABLE `SecurityQuest`
  MODIFY `secquest_no` int(2) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `StudentSubject`
--
ALTER TABLE `StudentSubject`
  MODIFY `stud_sub_no` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `TheoryCourseObjectives`
--
ALTER TABLE `TheoryCourseObjectives`
  MODIFY `theory_co_id` int(4) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `AdminFacultyUsers`
--
ALTER TABLE `AdminFacultyUsers`
  ADD CONSTRAINT `AdminFacultyUsers_ibfk_1` FOREIGN KEY (`secquest_no`) REFERENCES `SecurityQuest` (`secquest_no`),
  ADD CONSTRAINT `AdminFacultyUsers_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `Exam`
--
ALTER TABLE `Exam`
  ADD CONSTRAINT `Exam_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ExternalMarks`
--
ALTER TABLE `ExternalMarks`
  ADD CONSTRAINT `ExternalMarks_ibfk_1` FOREIGN KEY (`stud_sub_no`) REFERENCES `StudentSubject` (`stud_sub_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `FacultySubject`
--
ALTER TABLE `FacultySubject`
  ADD CONSTRAINT `FacultySubject_ibfk_1` FOREIGN KEY (`faculty_id`) REFERENCES `AdminFacultyUsers` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FacultySubject_ibfk_2` FOREIGN KEY (`subject_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `InternalMarks`
--
ALTER TABLE `InternalMarks`
  ADD CONSTRAINT `InternalMarks_ibfk_1` FOREIGN KEY (`stud_sub_no`) REFERENCES `StudentSubject` (`stud_sub_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `InternalMarks_ibfk_2` FOREIGN KEY (`assessment_tool_no`) REFERENCES `AssessmentTools` (`ass_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `OtherAssessmentTools`
--
ALTER TABLE `OtherAssessmentTools`
  ADD CONSTRAINT `OtherAssessmentTools_ibfk_1` FOREIGN KEY (`other_ass_no`) REFERENCES `AssessmentTools` (`ass_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `OtherCourseObjectives`
--
ALTER TABLE `OtherCourseObjectives`
  ADD CONSTRAINT `OtherCourseObjectives_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `OtherSubject`
--
ALTER TABLE `OtherSubject`
  ADD CONSTRAINT `OtherSubject_ibfk_1` FOREIGN KEY (`other_sub_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OtherSubject_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `OtherSubject_ibfk_3` FOREIGN KEY (`class`) REFERENCES `Class` (`year`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PracticalAssessmentTools`
--
ALTER TABLE `PracticalAssessmentTools`
  ADD CONSTRAINT `PracticalAssessmentTools_ibfk_1` FOREIGN KEY (`practical_ass_no`) REFERENCES `AssessmentTools` (`ass_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PracticalCourseObjectives`
--
ALTER TABLE `PracticalCourseObjectives`
  ADD CONSTRAINT `PracticalCourseObjectives_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `PracticalSubject`
--
ALTER TABLE `PracticalSubject`
  ADD CONSTRAINT `PracticalSubject_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PracticalSubject_ibfk_2` FOREIGN KEY (`class`) REFERENCES `Class` (`year`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `PracticalSubject_ibfk_3` FOREIGN KEY (`practical_sub_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`secquest_no`) REFERENCES `SecurityQuest` (`secquest_no`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `StudentSubject`
--
ALTER TABLE `StudentSubject`
  ADD CONSTRAINT `StudentSubject_ibfk_1` FOREIGN KEY (`prn`) REFERENCES `Student` (`prn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `StudentSubject_ibfk_2` FOREIGN KEY (`subject_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TheoryAssessmentTools`
--
ALTER TABLE `TheoryAssessmentTools`
  ADD CONSTRAINT `TheoryAssessmentTools_ibfk_1` FOREIGN KEY (`theory_ass_no`) REFERENCES `AssessmentTools` (`ass_no`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TheoryCourseObjectives`
--
ALTER TABLE `TheoryCourseObjectives`
  ADD CONSTRAINT `TheoryCourseObjectives_ibfk_1` FOREIGN KEY (`subject_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `TheorySubject`
--
ALTER TABLE `TheorySubject`
  ADD CONSTRAINT `TheorySubject_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `Course` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TheorySubject_ibfk_2` FOREIGN KEY (`class`) REFERENCES `Class` (`year`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `TheorySubject_ibfk_3` FOREIGN KEY (`theory_sub_code`) REFERENCES `Subject` (`subject_code`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
