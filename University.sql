-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 27, 2023 at 04:30 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `University`
--
CREATE DATABASE IF NOT EXISTS `University` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `University`;

-- --------------------------------------------------------

--
-- Table structure for table `Course`
--

CREATE TABLE `Course` (
  `CourseID` varchar(4) NOT NULL,
  `CourseTitle` varchar(35) NOT NULL,
  `Duration` int(11) NOT NULL,
  `StaffID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Course`
--

INSERT INTO `Course` (`CourseID`, `CourseTitle`, `Duration`, `StaffID`) VALUES
('C001', 'IT - Information Technologies', 4, 'S001'),
('C002', 'Software Engineering', 4, 'S005'),
('C003', 'Filming', 3, 'S010'),
('C004', 'Nursing', 3, 'S004'),
('C005', 'Education', 3, 'S008'),
('C006', 'Artificial Intelligence', 4, 'S001'),
('C007', 'Law', 4, 'S002'),
('C008', 'History With Spanish', 3, 'S003'),
('C009', 'Business', 3, 'S007'),
('C010', 'Accounting', 3, 'S007');

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `DeptID` varchar(4) NOT NULL,
  `DeptName` varchar(50) NOT NULL,
  `PhoneNo` varchar(15) NOT NULL,
  `FaxNo` varchar(15) DEFAULT NULL,
  `Location` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Department`
--

INSERT INTO `Department` (`DeptID`, `DeptName`, `PhoneNo`, `FaxNo`, `Location`) VALUES
('D001', 'Computing, Engineering and Intelligent Systems', '07735906123', '555-123-4567', 'MS'),
('D002', 'Business School', '07571283612', '555-829-3727', 'MS'),
('D003', 'Biomedical Science', '07731203617', '555-926-2916', 'MD'),
('D004', 'Modern Languages', '07729172517', '555-192-9163', 'MS'),
('D005', 'School Of Law', '07719261426', '555-193-2816', 'MD'),
('D006', 'Education', '07715629371', '555-293-9174', 'MU'),
('D007', 'Communication and Media', '07719283617', '555-192-0174', 'MU'),
('D008', 'Architecture and Built Environment', '07731829365', '555-039-7354', 'MS'),
('D009', 'Arts', '07736283716', '555-029-0199', 'MS'),
('D010', 'School of Nursing', '07719283712', '555-019-0293', 'MS');

-- --------------------------------------------------------

--
-- Table structure for table `Mentorship`
--

CREATE TABLE `Mentorship` (
  `MentorID` varchar(4) NOT NULL,
  `StaffID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Mentorship`
--

INSERT INTO `Mentorship` (`MentorID`, `StaffID`) VALUES
('S005', 'S006'),
('S005', 'S008'),
('S005', 'S009'),
('S005', 'S010'),
('S005', 'S011'),
('S007', 'S001'),
('S007', 'S002'),
('S007', 'S003'),
('S007', 'S004'),
('S007', 'S012');

-- --------------------------------------------------------

--
-- Table structure for table `Module`
--

CREATE TABLE `Module` (
  `ModuleID` varchar(4) NOT NULL,
  `ModuleTitle` varchar(35) NOT NULL,
  `StartDate` date NOT NULL,
  `EndDate` date NOT NULL,
  `AssessmentScheme` varchar(60) NOT NULL,
  `Textbooks` varchar(100) DEFAULT NULL,
  `CourseID` varchar(4) NOT NULL,
  `StaffID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Module`
--

INSERT INTO `Module` (`ModuleID`, `ModuleTitle`, `StartDate`, `EndDate`, `AssessmentScheme`, `Textbooks`, `CourseID`, `StaffID`) VALUES
('M001', 'Software Development', '2023-01-21', '2024-01-28', '100% Coursework', 'Available On Library Website', 'C002', 'S001'),
('M002', 'Mathematics', '2023-01-21', '2024-01-28', '40% Coursework, 60% Exam', 'Available On Library Website', 'C001', 'S005'),
('M003', 'Database Systems', '2023-01-21', '2024-01-28', '100% Coursework', 'Available On Library Website', 'C001', 'S005'),
('M004', 'Criminal Law', '2023-01-21', '2024-01-28', '40% Coursework, 60% Exam', 'Available On Library Website', 'C007', 'S002'),
('M005', 'Business Ethics', '2023-01-21', '2024-01-28', '100% Coursework', 'Available On Library Website', 'C009', 'S007'),
('M006', 'Marketing Management', '2023-01-21', '2024-01-28', '40% Exam, 60% Coursework', 'Available On Library Website', 'C009', 'S007'),
('M007', 'Curriculum Design', '2023-01-21', '2024-01-28', '100% Coursework', 'Available On Library Website', 'C005', 'S008'),
('M008', 'Operating Systems', '2024-01-29', '2024-01-08', '75% Coursework, 25% Exam', 'Available On Library Website', 'C001', 'S005'),
('M009', 'International Law', '2024-01-29', '2024-01-08', '20% Coursework, 80% Exam', 'Available On Library Website', 'C007', 'S002'),
('M010', 'Teaching Strategies', '2024-01-29', '2024-01-08', '100% Coursework', 'Available On Library Website', 'C005', 'S008');

-- --------------------------------------------------------

--
-- Table structure for table `Results`
--

CREATE TABLE `Results` (
  `StudentID` varchar(4) NOT NULL,
  `ModuleID` varchar(4) NOT NULL,
  `Pass_Fail` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Results`
--

INSERT INTO `Results` (`StudentID`, `ModuleID`, `Pass_Fail`) VALUES
('B001', 'M002', 'Pass'),
('B002', 'M004', 'Pass'),
('B003', 'M003', 'Fail'),
('B004', 'M003', 'Pass'),
('B004', 'M008', 'Pass'),
('B005', 'M004', 'Pass'),
('B006', 'M006', 'Fail'),
('B008', 'M003', 'Pass'),
('B009', 'M009', 'Pass'),
('B010', 'M006', 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `Staff`
--

CREATE TABLE `Staff` (
  `StaffID` varchar(4) NOT NULL,
  `FirstName` varchar(15) NOT NULL,
  `Surname` varchar(15) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `NationalInsuranceNO` varchar(15) NOT NULL,
  `OfficeNum` varchar(10) DEFAULT NULL,
  `Sex` char(1) NOT NULL,
  `Salary` decimal(10,0) DEFAULT NULL,
  `Post` varchar(25) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Qualifications` varchar(80) NOT NULL,
  `DeptID` varchar(4) NOT NULL
) ;

--
-- Dumping data for table `Staff`
--

INSERT INTO `Staff` (`StaffID`, `FirstName`, `Surname`, `Address`, `NationalInsuranceNO`, `OfficeNum`, `Sex`, `Salary`, `Post`, `Email`, `Qualifications`, `DeptID`) VALUES
('S001', 'David', 'Anderson', '14 Castlewood Park, Belfast, BT8 6JW', 'AL102957D', '291', 'M', '40000', 'Lecturer', 'D.Anderson12@Ulster.ac.uk', 'Computer Science Degree and PHD in Data Science', 'D001'),
('S002', 'Ronan', 'Murphy', '6 Hill Street, Derry, BT48 6HB', 'AO105392L', '205', 'M', '38000', 'Lecturer', 'R.Murphy24@ulster.ac.uk', ' Degree in Law', 'D005'),
('S003', 'Niamh', 'Quinn', '22 Bridge Street, Lisburn, BT27 4TS', 'PU037264A', '402', 'F', '41000', 'Lecturer', 'N.Quinn39@ulster.ac.uk', 'Degree in History with Spanish and a PHD', 'D004'),
('S004', 'Orla', 'McDaid', '57 Church Road, Newtownabbey, BT36 7LQ', 'EL837162Q', '293', 'F', '37823', 'Lecturer', 'O.Mcdaid63@ulster.ac.uk', 'Degree in Nursing and PHD in Chemistry', 'D003'),
('S005', 'Conor', 'Moore', '33 Hillview Avenue, Bangor, BT20 3DP', 'QL019590E', '203', 'M', '45000', 'Course Director', 'C.Moore04@ulster.ac.uk', 'Degree in Software Engineering and PHD in AI', 'D001'),
('S006', 'Luke', 'Coyle', '9 Green Road, Antrim, BT41 4NE', 'OP182747W', '201', 'M', '50000', 'Course Director', 'L.Coyle92@ulster.ac.uk', 'Degree, Masters and further research on Architecture', 'D008'),
('S007', 'Ciara ', 'Kelly', '20 Moss Road, Ballymena, BT42 2HJ', 'PU203940', '205', 'F', '55000', 'Senior Lecturer', 'C.Kelly18@ulster.ac.uk', 'Degree in Business and a Masters in Finance', 'D002'),
('S008', 'Aisling ', 'Byrne', '1 Park Avenue, Portadown, BT62 3EE', 'QL092832A', '302', 'F', '32000', 'Professor', 'A.Byrne08@ulster.ac.uk', 'Degree in Education and a Masters and PHD In English Language', 'D006'),
('S009', 'Darragh', 'McCrossan', '16 Ardmore Road, Craigavon, BT64 2QD', 'PO019275B', '301', 'M', '55000', 'Course Director', 'D.McCrossan36@ulster.ac.uk', 'Arts Degree and Masters in Arts', 'D009'),
('S010', 'Oisin', 'McCarthy', '41 The Square, Enniskillen, BT74 7DP', 'MN019201C', '262', 'M', '33000', 'Senior Lecturer', 'O.McCarthy74@ulster.ac.uk', 'Degree in Media and Masters in Filming', 'D007'),
('S011', 'Aoife', 'McKay', '12 Main Street, Omagh, BT81 9AL', 'ZO029382A', '201', 'F', '35000', 'Lecturer', 'A.McKay71@ulster.ac.uk', 'Degree and Masters in Law', 'D001'),
('S012', 'Rachael', 'Bradley', '9 Market Square, Letterkenny, Co. Donegal', 'AL019091Q', '222', 'F', '36000', 'Lecturer', 'R.Bradley71@ulster.ac.uk', 'Degree in Accounting and PHD in Data Science', 'D002');

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `StudentID` varchar(4) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `Surname` varchar(20) NOT NULL,
  `Street` varchar(30) NOT NULL,
  `City` varchar(18) NOT NULL,
  `Postcode` varchar(8) NOT NULL,
  `DOB` date NOT NULL,
  `Sex` char(1) NOT NULL,
  `Loan` decimal(10,0) NOT NULL,
  `CourseID` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Student`
--

INSERT INTO `Student` (`StudentID`, `FirstName`, `Surname`, `Street`, `City`, `Postcode`, `DOB`, `Sex`, `Loan`, `CourseID`) VALUES
('B001', 'Sophia ', 'James', '10 Ballybogey Road', 'County Antrim', 'BT53 6LJ', '2003-01-15', 'F', '4540', 'C003'),
('B002', 'Niamh', 'Ryan', '5 Clonavon Avenue, Portadown', 'County Armagh', 'BT62 1JQ', '2003-01-12', 'F', '4540', 'C007'),
('B003', 'Grace', 'McGettigan', '18 Hillview Road, Ballynahinch', 'County Armagh', 'BT92 9BF', '2003-01-20', 'F', '4540', 'C003'),
('B004', 'Conor ', 'Dolan', '7 Lough Road, Lurgan', 'County Down', 'BT19 9PL', '2003-01-20', 'M', '4540', 'C010'),
('B005', 'Oran', 'McShane', '36 Church Street, Banbridge', 'County Tyrone', 'BT18 0AL', '2004-01-05', 'M', '4540', 'C001'),
('B006', 'Taylor', 'Clarke', '42 Shore Road, Greenisland,', 'County Armagh', 'BT62 7BL', '2003-01-09', 'F', '4540', 'C009'),
('B007', 'Ronan', 'O\'Kane', '9 Main Street, Limavady,', 'County Antrim', 'BT10 7AM', '2003-01-10', 'M', '4540', 'C002'),
('B008', 'Seamus', 'Kennedy', '14 High Street, Holywood,', 'County Armagh', 'BT82 9QL', '2003-01-29', 'M', '4540', 'C001'),
('B009', 'Ryan', 'Devine', '21 Ballyclare Road', 'County Antrim', 'BT84 0PO', '2003-01-18', 'M', '4540', 'C001'),
('B010', 'Ciaran', 'Murphy', '2 Station Road, Dungannon', 'County Tyrone', 'BT12 6TY', '2003-01-21', 'M', '4540', 'C001'),
('B011', 'Adam', 'Donaghey', '5 Main Street, Omagh', 'County Tyrone', 'BT62 9LO', '2003-02-25', 'M', '4540', 'C001'),
('B012', 'Jack', 'McGoldrick', '21 Tower Road, Derry', 'County Derry', 'BT82 9QL', '2003-04-20', 'M', '4540', 'C001'),
('B013', 'Ciara', 'O\'Neill', '25 Derry Road, Derry', 'County Derry', 'BT85 8LP', '2002-05-20', 'F', '4540', 'C001');

-- --------------------------------------------------------

--
-- Table structure for table `Teaches`
--

CREATE TABLE `Teaches` (
  `StaffID` varchar(4) NOT NULL,
  `ModuleID` varchar(4) NOT NULL,
  `HoursPerWeek` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Teaches`
--

INSERT INTO `Teaches` (`StaffID`, `ModuleID`, `HoursPerWeek`) VALUES
('S001', 'M001', '8'),
('S002', 'M002', '6'),
('S003', 'M004', '7'),
('S004', 'M005', '4'),
('S005', 'M009', '5'),
('S006', 'M010', '7'),
('S007', 'M006', '4'),
('S008', 'M007', '4'),
('S009', 'M003', '5'),
('S010', 'M008', '6');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Course`
--
ALTER TABLE `Course`
  ADD PRIMARY KEY (`CourseID`),
  ADD KEY `Course_FK` (`StaffID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`DeptID`);

--
-- Indexes for table `Mentorship`
--
ALTER TABLE `Mentorship`
  ADD PRIMARY KEY (`MentorID`,`StaffID`),
  ADD KEY `Mentorship_FK1` (`StaffID`);

--
-- Indexes for table `Module`
--
ALTER TABLE `Module`
  ADD PRIMARY KEY (`ModuleID`),
  ADD KEY `Module_FK` (`CourseID`),
  ADD KEY `Module_FK1` (`StaffID`);

--
-- Indexes for table `Results`
--
ALTER TABLE `Results`
  ADD PRIMARY KEY (`StudentID`,`ModuleID`),
  ADD KEY `Results_FK1` (`ModuleID`);

--
-- Indexes for table `Staff`
--
ALTER TABLE `Staff`
  ADD PRIMARY KEY (`StaffID`),
  ADD UNIQUE KEY `Staff_UN1` (`Email`),
  ADD UNIQUE KEY `Staff_UN2` (`NationalInsuranceNO`),
  ADD KEY `Staff_FK1` (`DeptID`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`StudentID`),
  ADD KEY `CourseID_FK` (`CourseID`);

--
-- Indexes for table `Teaches`
--
ALTER TABLE `Teaches`
  ADD PRIMARY KEY (`StaffID`,`ModuleID`),
  ADD KEY `Teaches_FK1` (`ModuleID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Course`
--
ALTER TABLE `Course`
  ADD CONSTRAINT `Course_FK` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);

--
-- Constraints for table `Mentorship`
--
ALTER TABLE `Mentorship`
  ADD CONSTRAINT `Mentorship_FK` FOREIGN KEY (`MentorID`) REFERENCES `Staff` (`StaffID`),
  ADD CONSTRAINT `Mentorship_FK1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);

--
-- Constraints for table `Module`
--
ALTER TABLE `Module`
  ADD CONSTRAINT `Module_FK` FOREIGN KEY (`CourseID`) REFERENCES `Course` (`CourseID`),
  ADD CONSTRAINT `Module_FK1` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`);

--
-- Constraints for table `Results`
--
ALTER TABLE `Results`
  ADD CONSTRAINT `Results_FK` FOREIGN KEY (`StudentID`) REFERENCES `Student` (`StudentID`),
  ADD CONSTRAINT `Results_FK1` FOREIGN KEY (`ModuleID`) REFERENCES `Module` (`ModuleID`);

--
-- Constraints for table `Staff`
--
ALTER TABLE `Staff`
  ADD CONSTRAINT `Staff_FK1` FOREIGN KEY (`DeptID`) REFERENCES `Department` (`DeptID`);

--
-- Constraints for table `Student`
--
ALTER TABLE `Student`
  ADD CONSTRAINT `CourseID_FK` FOREIGN KEY (`CourseID`) REFERENCES `Course` (`CourseID`);

--
-- Constraints for table `Teaches`
--
ALTER TABLE `Teaches`
  ADD CONSTRAINT `Teaches_FK` FOREIGN KEY (`StaffID`) REFERENCES `Staff` (`StaffID`),
  ADD CONSTRAINT `Teaches_FK1` FOREIGN KEY (`ModuleID`) REFERENCES `Module` (`ModuleID`);
COMMIT;