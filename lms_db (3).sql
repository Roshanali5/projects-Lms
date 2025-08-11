-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2025 at 04:55 PM
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
-- Database: `lms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `add-courses`
--

CREATE TABLE `add-courses` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `course_name` varchar(255) NOT NULL,
  `level` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `add-courses`
--

INSERT INTO `add-courses` (`id`, `teacher_id`, `course_name`, `level`) VALUES
(1, 0, 'C++', 'Beginner'),
(5, 0, 'Java', 'Intermediate'),
(7, 0, 'CSS', 'Intermediate'),
(8, 0, 'Javascript', 'Advanced'),
(9, 0, 'Next.js', 'Beginner'),
(10, 0, 'Python', 'Intermediate'),
(11, 0, 'Node.js', 'Beginner');

-- --------------------------------------------------------

--
-- Table structure for table `add_course`
--
-- Error reading structure for table lms_db.add_course: #1932 - Table &#039;lms_db.add_course&#039; doesn&#039;t exist in engine
-- Error reading data for table lms_db.add_course: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `lms_db`.`add_course`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

CREATE TABLE `assignments` (
  `id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `deadline` date NOT NULL,
  `total_marks` int(11) DEFAULT 50,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `assignment_type` varchar(255) DEFAULT 'subjective'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignments`
--

INSERT INTO `assignments` (`id`, `course_id`, `title`, `deadline`, `total_marks`, `created_at`, `updated_at`, `assignment_type`) VALUES
(11, 1, 'Generated Assignment', '2025-05-06', 150, '2025-04-29 09:10:56', '2025-04-29 09:10:56', 'subjective'),
(12, 2, 'Generated Assignment', '2025-05-06', 150, '2025-04-29 09:14:24', '2025-04-29 09:14:24', 'subjective'),
(14, 5, 'Generated Assignment', '2025-05-07', 150, '2025-04-30 10:35:41', '2025-04-30 10:35:41', 'subjective'),
(16, 10, 'Generated Assignment', '2025-05-10', 150, '2025-05-03 01:29:33', '2025-05-03 01:29:33', 'subjective'),
(17, 7, 'Generated Assignment', '2025-05-10', 150, '2025-05-03 01:29:50', '2025-05-03 01:29:50', 'subjective');

-- --------------------------------------------------------

--
-- Table structure for table `assignment_questions`
--

CREATE TABLE `assignment_questions` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `question_text` text NOT NULL,
  `marks` int(11) DEFAULT 5,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `model_answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assignment_questions`
--

INSERT INTO `assignment_questions` (`id`, `assignment_id`, `question_text`, `marks`, `created_at`, `model_answer`) VALUES
(7, 11, '1. As a beginner in C++, how would you describe the process of understanding and implementing object-oriented programming concepts such as classes, objects, and inheritance? How do you feel about the challenges and rewards of mastering these fundamental principles in C++ programming, and what steps do you plan to take to enhance your understanding and proficiency in this area?', 50, '2025-04-29 09:11:02', ''),
(8, 11, '2. Reflecting on your journey as a beginner in C++, how have you found the process of debugging and troubleshooting errors in your code? Describe the emotions and frustrations you have experienced when encountering difficult programming bugs, and discuss the strategies and techniques you have employed to effectively identify and resolve these issues. How do you plan to continue improving your debugging skills and developing a more efficient problem-solving mindset in C++ programming?', 50, '2025-04-29 09:11:02', ''),
(9, 11, '3. Considering your current level of experience in C++, how would you assess your ability to design and implement complex algorithms and data structures in your code? Reflect on the challenges and successes you have encountered when working with advanced programming concepts such as recursion, dynamic memory allocation, and template functions. What are your goals for further advancing your skills in algorithm design and data structure implementation, and how do you plan to approach these objectives in your C++ programming practice?', 50, '2025-04-29 09:11:02', ''),
(10, 12, '1. Discuss the advantages and disadvantages of using object-oriented programming in Python for intermediate level projects. Support your arguments with concrete examples and explain how this approach can impact code readability, reusability, and maintainability. (50 marks)', 50, '2025-04-29 09:14:30', ''),
(12, 12, '3. Investigate the various methods for handling exceptions in Python, including try-except blocks, raising custom exceptions, and using the finally clause. Analyze the best practices for error handling in intermediate level Python projects, considering factors such as code readability, debugging efficiency, and program reliability. Illustrate your discussion with a detailed example of handling multiple exceptions in a complex data processing application. (50 marks)', 50, '2025-04-29 09:14:30', ''),
(17, 14, '2. Compare and contrast the different ways of handling exceptions in Java, including try-catch blocks, throws clause, and finally block. Provide detailed examples to demonstrate when each approach is most appropriate and explain the best practices for exception handling to ensure robust and reliable code. Discuss the importance of creating custom exceptions and how they can be used to enhance the error-handling capabilities of a Java program. (50 marks)', 50, '2025-04-30 10:35:45', ''),
(18, 14, '3. Explore the concept of multithreading in Java and discuss the benefits and challenges of implementing concurrent programming in a Java application. Explain the differences between processes and threads, and describe how Java supports multithreading through the Thread class and Runnable interface. Provide examples of how multithreading can improve performance and responsiveness in a Java program, as well as potential pitfalls to avoid when dealing with shared resources and synchronization. (50 marks)', 50, '2025-04-30 10:35:45', ''),
(19, 16, '1. In Python, explain in detail the differences between list comprehension and generator expressions, giving examples of when it would be more advantageous to use one over the other. Discuss the advantages and disadvantages of each approach, including performance considerations and readability of the code. Provide code examples to support your explanations.', 50, '2025-05-03 01:29:36', ''),
(20, 16, '2. Explore the concept of object-oriented programming in Python, discussing the principles of encapsulation, inheritance, and polymorphism. Provide a detailed explanation of each principle, along with examples of how they can be implemented in Python code. Discuss the benefits of using object-oriented programming in Python, and provide examples of when it would be appropriate to use this programming paradigm.', 50, '2025-05-03 01:29:36', ''),
(21, 16, '3. Delve into the topic of decorators in Python, explaining how they can be used to modify or extend the behavior of functions or methods without changing their source code. Provide a detailed explanation of how decorators work, including the syntax for defining and using decorators in Python code. Discuss the advantages of using decorators in Python programming, and provide examples of real-world scenarios where decorators can be used to enhance the functionality of a program.', 50, '2025-05-03 01:29:36', ''),
(22, 17, '1. In what ways can the use of CSS animations enhance the user experience of a website, and how can intermediate students apply advanced animation techniques such as keyframes and transitions to create visually engaging and interactive elements on a webpage? Discuss the impact of animation duration, easing functions, and the use of multiple animation properties in designing a dynamic user interface. Provide examples of websites with effective animation design and analyze the CSS code used to achieve these effects.', 50, '2025-05-03 01:29:55', ''),
(23, 17, '2. Explore the concept of responsive design in CSS and its importance in creating websites that adapt seamlessly to different screen sizes and devices. Discuss the use of media queries, viewport meta tag, and fluid layouts in designing a responsive website layout. Evaluate the effectiveness of various CSS frameworks such as Bootstrap and Foundation in simplifying the process of building responsive designs and compare their strengths and limitations in terms of customization and performance optimization. Provide a detailed explanation of how intermediate students can implement responsive design principles in their own web projects.', 50, '2025-05-03 01:29:55', ''),
(24, 17, '3. Delve into the world of CSS preprocessors such as Sass and Less, and examine the benefits of using these tools in streamlining the process of writing and organizing CSS code. Discuss the features of preprocessors such as variables, mixins, nesting, and functions that enable developers to write more efficient and maintainable stylesheets. Analyze the differences between Sass and Less in terms of syntax, compilation methods, and compatibility with existing CSS codebases. Explore advanced techniques such as using Sass functions for color manipulation, creating reusable mixins for vendor prefixes, and organizing stylesheets into modular components for improved code organization. Provide examples of how intermediate students can leverage the power of CSS preprocessors to enhance their workflow and productivity in web development projects.', 50, '2025-05-03 01:29:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `course_enrollments`
--

CREATE TABLE `course_enrollments` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `course_enrollments`
--

INSERT INTO `course_enrollments` (`id`, `student_id`, `course_id`, `level`) VALUES
(2, 1, 1, 'Beginner'),
(3, 1, 2, 'Intermediate'),
(7, 2, 2, 'Intermediate'),
(8, 2, 5, 'Intermediate'),
(9, 3, 2, 'Intermediate'),
(10, 2, 10, 'Intermediate'),
(11, 2, 7, 'Intermediate'),
(12, 2, 9, 'Beginner'),
(13, 3, 8, 'Advanced'),
(14, 3, 5, 'Intermediate'),
(15, 1, 2, ''),
(16, 1, 3, ''),
(17, 1, 2, ''),
(18, 1, 3, ''),
(19, 1, 2, ''),
(20, 1, 3, ''),
(21, 1, 2, ''),
(22, 1, 3, ''),
(23, 1, 2, ''),
(24, 1, 3, ''),
(25, 1, 2, ''),
(26, 1, 3, ''),
(27, 1, 2, ''),
(28, 1, 3, ''),
(30, 1, 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `is_read` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `message`, `created_at`, `is_read`) VALUES
(1, 0, 'Student 1 has submitted the assignment 12', '2025-05-01 08:12:51.132845', 0),
(2, 0, 'Student 1 has submitted assignment 11.', '2025-05-02 08:31:26.155133', 0),
(3, 0, 'Student 1 has submitted assignment 16.', '2025-05-03 15:54:08.810669', 0),
(4, 0, 'Student 1 has submitted assignment 16.', '2025-05-03 16:13:36.347334', 0),
(5, 0, 'Student 1 has submitted assignment 16.', '2025-05-03 16:24:13.357651', 0),
(6, 0, 'Student 1 has submitted assignment 16.', '2025-05-03 16:26:50.019298', 0),
(7, 0, 'Student 1 has submitted assignment 16.', '2025-05-03 16:27:15.569667', 0),
(8, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:29:05.331746', 0),
(9, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:30:39.939828', 0),
(10, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:32:07.537769', 0),
(11, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:32:13.138448', 0),
(12, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:34:40.133664', 0),
(13, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:41:52.362921', 0),
(14, 0, 'Student 2 has submitted assignment 16.', '2025-05-03 16:58:07.438005', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(100) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `second_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `first_name`, `second_name`, `email`, `phone_number`, `password`, `gender`, `role`, `status`) VALUES
(1, 'Sana', 'Ahmed', 'teacher@gmail.com', '03181741196', '$2y$10$elfDIwLbaaSTVuVUbJAXtuG8mHs61KCztbBDKHmN8GfeTTpo9n/Ky', 'Female', 'instructor', 'APPROVED'),
(2, 'Sanam', 'Pervaiz', 'student1@gmail.com', '0342567899', '$2y$10$LYjYeKLseAWwqBUK73Q5Lu9wtiCipJgn8cFt2UkFHsKKfEKhWAgIe', 'Female', 'student', 'APPROVED'),
(3, 'Saman', 'khan', 'student@gmail.com', '03181741196', '$2y$10$UAbNMl4pOL3MxN9vIH/QG..eArcjT7at3bTmCdRDs6mIuBBhJ.jo6', 'Female', 'student', 'APPROVED'),
(4, 'rasheeda', 'bibi', 'rasheeda@gmail.com', '0342567899', '$2y$10$JlAWaKu5Cl2YhXVjokOzyOp4s/3iRw/fzwae65DimWRdK/lfyeqWq', 'Female', 'student', 'PENDING'),
(6, 'Afia', 'Dil', 'afia1@gmail.com', '0342567899', '$2y$10$ui2yT8uYXHZU.Ss74jwc..91uX1CvM2dN/JcrlXZVIhMZsC9et8KK', 'Female', 'Admin', 'APPROVED');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

CREATE TABLE `student_assignments` (
  `id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `submission_file` varchar(255) DEFAULT NULL,
  `submitted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submissions`
--

CREATE TABLE `submissions` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `submission_file` varchar(255) NOT NULL,
  `submitted_at` datetime(6) NOT NULL DEFAULT current_timestamp(6),
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `submissions`
--

INSERT INTO `submissions` (`id`, `student_id`, `assignment_id`, `submission_file`, `submitted_at`, `score`) VALUES
(1, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-04-30 21:16:54.713132', 0),
(2, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-04-30 21:41:40.882213', 0),
(3, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-04-30 21:45:15.294795', 0),
(4, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-05-01 10:01:43.384423', 0),
(5, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-05-01 10:12:35.385269', 0),
(6, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-05-01 12:04:56.064517', 0),
(7, 0, 0, 'submitted_assignments/assignment_0_student_0.pdf', '2025-05-01 12:26:41.951925', 0),
(8, 1, 11, 'submitted_assignments/assignment_11_student_1.pdf', '2025-05-01 13:00:50.000000', 0),
(9, 1, 9, 'submitted_assignments/assignment_9_student_1.docx', '2025-05-01 13:07:29.000000', 0),
(10, 1, 12, 'submitted_assignments/assignment_12_student_1.docx', '2025-05-01 13:08:04.000000', 0),
(11, 1, 12, 'submitted_assignments/assignment_12_student_1.docx', '2025-05-01 13:12:51.000000', 0),
(12, 1, 11, 'submitted_assignments/assignment_11_student_1.txt', '2025-05-02 13:31:26.000000', 0),
(13, 1, 16, 'submitted_assignments/assignment_16_student_1.docx', '2025-05-03 20:54:08.000000', 0),
(14, 1, 16, 'submitted_assignments/assignment_16_student_1.docx', '2025-05-03 21:13:36.000000', 0),
(15, 1, 16, 'submitted_assignments/assignment_16_student_1.docx', '2025-05-03 21:24:13.000000', 0),
(16, 1, 16, 'submitted_assignments/assignment_16_student_1.docx', '2025-05-03 21:26:50.000000', 0),
(17, 1, 16, 'submitted_assignments/assignment_16_student_1.docx', '2025-05-03 21:27:15.000000', 0),
(18, 2, 16, 'submitted_assignments/assignment_16_student_2.docx', '2025-05-03 21:29:05.000000', 0),
(21, 2, 16, 'submitted_assignments/assignment_16_student_2.docx', '2025-05-03 21:32:13.000000', 0),
(24, 2, 16, 'submitted_assignments/assignment_16_student_2.docx', '2025-05-03 21:58:07.000000', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add-courses`
--
ALTER TABLE `add-courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignments`
--
ALTER TABLE `assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assignment_questions`
--
ALTER TABLE `assignment_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_enrollments`
--
ALTER TABLE `course_enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assignments`
--
ALTER TABLE `student_assignments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submissions`
--
ALTER TABLE `submissions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add-courses`
--
ALTER TABLE `add-courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assignments`
--
ALTER TABLE `assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `assignment_questions`
--
ALTER TABLE `assignment_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `course_enrollments`
--
ALTER TABLE `course_enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student_assignments`
--
ALTER TABLE `student_assignments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submissions`
--
ALTER TABLE `submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
