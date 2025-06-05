-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2025 at 02:49 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ultracare`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `appointment_id` int(100) NOT NULL,
  `patientName` varchar(100) NOT NULL,
  `patientAge` int(11) NOT NULL,
  `patientNumber` varchar(100) NOT NULL,
  `time_slot` varchar(100) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`appointment_id`, `patientName`, `patientAge`, `patientNumber`, `time_slot`, `created_at`) VALUES
(1, '1', 10, '2025-06-20', '9am - 10 am', '0000-00-00 00:00:00.000000');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_notes`
--

CREATE TABLE `doctor_notes` (
  `ID` int(11) NOT NULL,
  `patientName` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `treatment` varchar(100) NOT NULL,
  `notes` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctor_notes`
--

INSERT INTO `doctor_notes` (`ID`, `patientName`, `age`, `diagnosis`, `treatment`, `notes`) VALUES
(1, '', 12, 'lalaalal', 'lalalaalal', 'yes'),
(2, 'test', 12, 'laalalal', 'lalalaal', 'yes'),
(3, 'wr', 213, 'qfeqef', 'qfe', 'qeffq'),
(4, 'renu', 12, 'afd', 'wgr', 'wrg'),
(5, 'renu', 324, 'wegw', 'oug', 'oog');

-- --------------------------------------------------------

--
-- Table structure for table `doc_details`
--

CREATE TABLE `doc_details` (
  `doctorID` int(100) NOT NULL,
  `doctorName` varchar(100) NOT NULL,
  `specialisation` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `username` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doc_details`
--

INSERT INTO `doc_details` (`doctorID`, `doctorName`, `specialisation`, `date`, `username`) VALUES
(5, 'Dr. Nimal Perera', 'General', '0000-00-00', 'test123'),
(6, 'Minali Gunawardana', 'Cardiology', '2025-06-05', 'doctest');

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE `medical_records` (
  `patientID` int(11) NOT NULL,
  `patientName` varchar(100) NOT NULL,
  `Diagnosis` varchar(250) NOT NULL,
  `Treatment` varchar(250) NOT NULL,
  `Date` date NOT NULL,
  `DoctorName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`patientID`, `patientName`, `Diagnosis`, `Treatment`, `Date`, `DoctorName`) VALUES
(1, 'renu', 'lalaalal', 'lalalaalal', '2025-06-21', 'Anura Pathirana'),
(3, 't', 'wtwt', 'wg', '2025-06-12', 'Minali Gunawardena');

-- --------------------------------------------------------

--
-- Table structure for table `patient_details`
--

CREATE TABLE `patient_details` (
  `recordID` int(11) NOT NULL,
  `patientName` varchar(100) NOT NULL,
  `patientAge` varchar(100) NOT NULL,
  `patientPhone` varchar(100) NOT NULL,
  `patientEmail` varchar(100) NOT NULL,
  `appointmentdate` date DEFAULT NULL,
  `specialisation` varchar(100) NOT NULL,
  `doctor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patient_details`
--

INSERT INTO `patient_details` (`recordID`, `patientName`, `patientAge`, `patientPhone`, `patientEmail`, `appointmentdate`, `specialisation`, `doctor`) VALUES
(1, 'test', '112', '12314134', 'test@gmail.com', NULL, '', ''),
(2, 'test', '112', '12314134', 'test@gmail.com', NULL, '', ''),
(3, 'test', '12', '12314134', 'test@gmail.com', NULL, '', ''),
(4, 'test', '12', '12314134', 'test@gmail.com', NULL, '', ''),
(5, 'ren', '11', '12314134', 'efe@gmail.com', NULL, '', ''),
(6, 'test', '12', '12314134', 'test@gmail.com', '2025-06-28', 'Pediatrics', 'Dr. Nimal Perera'),
(7, 'ushadi', '41', '12314134', 'u@gmail.com', '2025-06-13', 'cardiology', 'Chaminda Fernando'),
(8, 'renu', '12', '12314134', 'test@gmail.com', '2025-06-18', 'cardiology', 'Dr. Nimal Perera'),
(9, 'renu', '12', '12314134', 'r@gmail.com', '2025-06-17', 'cardiology', 'Dr. Nimal Perera'),
(10, 'renu', '12', '12314134', 'test@gmail.com', '2025-06-12', 'cardiology', 'Minali Gunawardana'),
(11, 'test', '09', '12314134', 't@gmail.com', '2025-06-13', 'cardiology', 'Minali Gunawardana'),
(12, 'renu', '32', '12314134', 'u@gmail.com', '2025-06-27', 'cardiology', 'Minali Gunawardana'),
(13, 'ushadi', '41', '12314134', 'u@gmail.com', '2025-06-26', 'cardiology', 'Minali Gunawardana'),
(14, 'u123', '12', '12314134', 'u@gmail.com', '2025-06-10', 'cardiology', 'Minali Gunawardana'),
(15, 'u123', '213', '12314134', 'u@gmail.com', '2025-06-21', 'cardiology', 'Minali Gunawardana'),
(16, 'u123', '213', '12314134', 'u@gmail.com', '2025-06-19', 'cardiology', 'Dr. Nimal Perera');

-- --------------------------------------------------------

--
-- Table structure for table `prescription_records`
--

CREATE TABLE `prescription_records` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `diagnosis` varchar(250) NOT NULL,
  `treatment` varchar(250) NOT NULL,
  `date` date NOT NULL,
  `doctor` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription_records`
--

INSERT INTO `prescription_records` (`ID`, `name`, `diagnosis`, `treatment`, `date`, `doctor`) VALUES
(1, 'renu', 'laalalal', 'lalalaal', '2025-06-19', 'Anura Pathirana'),
(2, 'test', 'abc', 'abc', '2025-06-20', 'Anura Pathirana'),
(3, 'renu', 'owb', 'woefb', '2025-06-12', 'Minali Gunawardena'),
(4, 'renu', 'ob', 'ojnkm', '2025-06-12', 'Minali Gunawardena'),
(5, 'renu', 'ihb', 'ihbo', '2025-06-19', 'Minali Gunawardena');

-- --------------------------------------------------------

--
-- Table structure for table `signup_details`
--

CREATE TABLE `signup_details` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contactno` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup_details`
--

INSERT INTO `signup_details` (`firstname`, `lastname`, `gender`, `contactno`, `email`, `username`, `password`, `role`) VALUES
('test', 'testing', 'female', '12312434', 'test@gmail.com', 'testo', '$Blabla123', 'patient'),
('a', 'm', 'female', '12312434', 'test@gmail.com', 'doctest', '$Doc12345', 'doctor'),
('ren', 'm', 'female', '12312434', 'test@gmail.com', 'renu', '$Re12345', ''),
('test', 'm', 'female', '12312434', 'test@gmail.com', 'testing', '$Abc12345', ''),
('test', 'testing', 'male', '12312434', 'test@gmail.com', 'testo', 'Waka$100', 'patient'),
('doc', 'docc', 'female', '12312434', 'doctest@gmail.com', 'doctest', 'Doc$1000', 'doctor'),
('renu', 'ren', 'female', '12312434', 'test@gmail.com', 'renu', 'Renu$2007', 'patient'),
('testpatient', 'test', 'female', '12312434', 'test@gmail.com', 'patientt', 'Test$1000', 'patient'),
('Testing ', 'Doctor', 'female', '076559058', 'test@admin.lk', 'testDoctor', 'Testing!2006', 'doctor'),
('Testing', 'octor', 'female', '123123123', 'test@gmail.com', 'TestingDoctor', 'Testing!2006', 'doctor'),
('sample', 'doctor', 'male', '0766559058', 'sjhfa@gmail.com', 'test123', 'Testing!2006', 'doctor'),
('ushadi', 'n', 'female', '12312434', 'u@gmail.com', 'u123', 'Renu$2007', 'patient');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Username`, `Password`, `Role`) VALUES
(1, 'renu', 'renu', 'patient'),
(2, 'docsample', 'doc123', 'doctor'),
(3, 'admin1', 'abc', 'admin'),
(4, 'doctest', 'Doc$1000', 'doctor'),
(5, 'admin2', 'Admin$1200', 'admin'),
(6, 'renu', 'Renu$2007', 'patient'),
(7, 'patientt', 'Test$1000', 'patient'),
(9, 'TestingDoctor', 'Testing!2006', 'doctor'),
(10, 'test123', 'Testing!2006', 'doctor'),
(11, 'u123', 'Renu$2007', 'patient');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`appointment_id`);

--
-- Indexes for table `doctor_notes`
--
ALTER TABLE `doctor_notes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `doc_details`
--
ALTER TABLE `doc_details`
  ADD PRIMARY KEY (`doctorID`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`patientID`);

--
-- Indexes for table `patient_details`
--
ALTER TABLE `patient_details`
  ADD PRIMARY KEY (`recordID`);

--
-- Indexes for table `prescription_records`
--
ALTER TABLE `prescription_records`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `appointment_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_notes`
--
ALTER TABLE `doctor_notes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `doc_details`
--
ALTER TABLE `doc_details`
  MODIFY `doctorID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `patientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient_details`
--
ALTER TABLE `patient_details`
  MODIFY `recordID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `prescription_records`
--
ALTER TABLE `prescription_records`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
