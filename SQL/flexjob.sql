-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 12, 2020 at 07:52 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flexjob`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_tbl`
--

CREATE TABLE `admin_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `userid` varchar(120) NOT NULL,
  `password` varchar(25) NOT NULL,
  `email` varchar(35) NOT NULL,
  `img` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_tbl`
--

INSERT INTO `admin_tbl` (`id`, `name`, `userid`, `password`, `email`, `img`) VALUES
(1, 'Miten', 'admin@flexjob.com', 'admin@123', 'miten1457@gmail.com', '1592114805.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `bid_tbl`
--

CREATE TABLE `bid_tbl` (
  `id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `duration` varchar(25) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bid_tbl`
--

INSERT INTO `bid_tbl` (`id`, `j_id`, `u_id`, `description`, `duration`, `price`) VALUES
(1, 13, 94, 'qwertts', '3 month', 120),
(2, 9, 91, 'Properly written job position descriptions are often the only documents that totally define what a role is, what skills are required to perform it, and where the role fits in an organization. This makes', '3 month', 230),
(3, 10, 94, 'Properly written job position descriptions are often the only documents that totally define what a role is, what skills are required to perform it, and where the role fits in an organization. This makes', '3 month', 10),
(10, 12, 94, 'fa-folder', '2 month', 34),
(11, 14, 94, 'A function can be executed when the page loaded successfully. This can be used for various purposes like checking for cookies or setting the correct version of the page depending on the user browser', '2 month', 180);

-- --------------------------------------------------------

--
-- Table structure for table `cancel_tbl`
--

CREATE TABLE `cancel_tbl` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `category_tbl`
--

CREATE TABLE `category_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_tbl`
--

INSERT INTO `category_tbl` (`id`, `name`) VALUES
(1, 'Mobile'),
(2, 'Digital Marketing'),
(3, 'Writing and Translation'),
(4, 'Video & Animation'),
(5, 'Music&Audio'),
(6, 'Programing'),
(7, 'Business'),
(8, 'Fun&Lifestyle'),
(9, 'Desgin');

-- --------------------------------------------------------

--
-- Table structure for table `companyreport_tbl`
--

CREATE TABLE `companyreport_tbl` (
  `id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companyreport_tbl`
--

INSERT INTO `companyreport_tbl` (`id`, `c_id`, `description`, `status`) VALUES
(1, 7, 'hello', 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_tbl`
--

CREATE TABLE `company_tbl` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `phno` varchar(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `employes` varchar(11) NOT NULL,
  `description` longtext NOT NULL,
  `password` varchar(25) NOT NULL,
  `img` varchar(55) DEFAULT 'default.jpg',
  `approve` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_tbl`
--

INSERT INTO `company_tbl` (`id`, `name`, `phno`, `email`, `location`, `employes`, `description`, `password`, `img`, `approve`) VALUES
(7, 'pied piper', '7878909018', 'darshan99225@gmail.com', 'qawsedrf', '12', 'The company description section of your business plan is typically the second section, coming after the executive summary. The company description outlines vital details about your company, such as where you are located, how large the company is, what you do, and what you hope to accomplish', '12345678', 'defaultc.jpg', 0),
(9, 'cubi soft.', '9090565690', 'smithadd25@gmail.com', 'qawsedrf', '23', 'If your company has an interesting and lengthy history, you might consider creating a visual timeline, like Nordstrom did on their company profile. The profile reads like a creative story from the very first line -- \"In 1887, John W. Nordstrom, at 16 years old, left Sweden for the United States. He arrived in New York with $5 in his pocket, unable to speak a word of English.', '1234567899', '1585820076.jpg', 1),
(10, 'micro', '567898956', 'micro@gmail.com', 'silicon velly', '15', 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes', '1234', 'defaultc.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `complete_tbl`
--

CREATE TABLE `complete_tbl` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complete_tbl`
--

INSERT INTO `complete_tbl` (`id`, `u_id`, `j_id`, `c_id`) VALUES
(2, 91, 9, 9),
(4, 94, 10, 9),
(5, 94, 14, 9),
(6, 94, 12, 9);

-- --------------------------------------------------------

--
-- Table structure for table `education_tbl`
--

CREATE TABLE `education_tbl` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `course` varchar(25) NOT NULL,
  `p_year` date NOT NULL,
  `university` varchar(25) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education_tbl`
--

INSERT INTO `education_tbl` (`id`, `uid`, `course`, `p_year`, `university`, `description`) VALUES
(1, 94, 'php', '2019-02-05', 'vnsgu', 'Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquaenim ad minim veniamac quis nostrud exercitation ullamco laboris.'),
(3, 94, 'BCA', '2020-03-18', 'NVSGU', 'Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquaenim ad minim veniamac quis nostrud exercitation ullamco laboris.'),
(4, 98, 'BCA', '2019-12-04', 'UIT', 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes'),
(5, 104, 'Data Science', '2019-03-14', 'BIT', 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes');

-- --------------------------------------------------------

--
-- Table structure for table `experience_tbl`
--

CREATE TABLE `experience_tbl` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `c_name` varchar(25) NOT NULL,
  `s_date` date NOT NULL,
  `l_date` date NOT NULL,
  `post` varchar(25) NOT NULL,
  `description` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience_tbl`
--

INSERT INTO `experience_tbl` (`id`, `uid`, `c_name`, `s_date`, `l_date`, `post`, `description`) VALUES
(1, 94, 'Ajex', '2019-05-01', '2020-03-11', 'Junior developer', 'Consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliquaenim ad minim veniamac quis nostrud exercitation ullamco laboris.'),
(7, 94, 'google', '2016-02-09', '2019-02-05', 'Flutter', 'in publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.');

-- --------------------------------------------------------

--
-- Table structure for table `jobreport_tbl`
--

CREATE TABLE `jobreport_tbl` (
  `id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobreport_tbl`
--

INSERT INTO `jobreport_tbl` (`id`, `j_id`, `description`, `status`) VALUES
(3, 17, 'this job is fack', 0);

-- --------------------------------------------------------

--
-- Table structure for table `job_tbl`
--

CREATE TABLE `job_tbl` (
  `jid` int(11) NOT NULL,
  `c_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `name` mediumtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `description` longtext NOT NULL,
  `skills` varchar(25) NOT NULL,
  `duration` varchar(25) NOT NULL,
  `price` varchar(10) NOT NULL,
  `categories` varchar(35) NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_tbl`
--

INSERT INTO `job_tbl` (`jid`, `c_id`, `date`, `name`, `status`, `description`, `skills`, `duration`, `price`, `categories`, `type`) VALUES
(9, 9, '2020-03-15', 'I Want Some Customization And Installation', 2, 'Properly written job position descriptions are often the only documents that totally define what a role is, what skills are required to perform it, and where the role fits in an organization. This makes it simple to identify candidates that are a good fit for the role and also to hold candidates accountable if they are not performing essential duties that are required in the role.', 'php,js,html,css', '3 month', '123', 'Digital Marketing', 'fixed'),
(10, 9, '2020-03-16', 'Game development', 2, 'select j.*,c.* from job_tbl as j,company_tbl as c where j.C_id=c.id', 'php', '3 month', '12', 'Programing', 'hourly'),
(12, 9, '2020-03-17', 'Web redesign ', 2, 'that is really nice.', 'php,html,css,js', '3 month', '25', 'Programing', 'hourly'),
(13, 7, '2020-03-17', 'deveploer', 0, 'nice ready to go.', 'php,developer,html,css', '3 month', '120', 'Digital Marketing', 'fixed'),
(14, 9, '2020-03-26', 'data entry', 2, 'A function can be executed when the page loaded successfully. This can be used for various purposes like checking for cookies or setting the correct version of the page depending on the user browser.', 'php,python ,rsw', '3 month', '230', 'data entry', 'fixed'),
(15, 9, '2020-03-29', 'data entry', 0, 'The software engineer job requirements may vary a little between companies because each company has its own specific software engineering needs. Companies generally require excellent problem solving and analytical skills, strong collaboration skills, and training or extensive experience in certain areas', 'java,php,python,js', '5 month', '12', 'mobile', 'hourly'),
(16, 10, '2020-03-31', 'Web site', 0, 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes', 'php,js,html,css,java', '2 month', '10', 'IT', 'hourly'),
(17, 9, '2020-06-14', 'music cube', 0, 'hello, i am looking  for game developer.', 'php,unity,c#', '2 month', '450', 'IT', 'fixed');

-- --------------------------------------------------------

--
-- Table structure for table `ongoing_tbl`
--

CREATE TABLE `ongoing_tbl` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `j_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `oid` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `card_num` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `card_cvc` int(5) NOT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` int(50) NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `paid_amount` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`oid`, `name`, `card_num`, `card_cvc`, `item_name`, `item_number`, `item_price`, `paid_amount`, `u_id`, `date`) VALUES
(18, 'sssss', '4111 1111 1111 1111', 7876, 'Game development', 10, 10.00, '10', 94, '2020-04-04'),
(19, 'seed', '4111 1111 1111 1111', 456, 'I Want Some Customization And Installation', 9, 230.00, '230', 91, '2020-04-04'),
(20, 'MIten motisariya', '4445 0071 3452 9088', 678, 'data entry', 14, 180.00, '180', 94, '2020-06-14'),
(21, 'MIten motisariya', '4444 4444 4444 4444', 678, 'Web redesign ', 12, 34.00, '34', 94, '2020-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `userreport_tbl`
--

CREATE TABLE `userreport_tbl` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE `user_tbl` (
  `uid` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `phno` varchar(11) NOT NULL,
  `approve` int(3) DEFAULT 0,
  `skills` varchar(255) DEFAULT NULL,
  `price` int(25) NOT NULL,
  `img` varchar(120) DEFAULT NULL,
  `gender` varchar(8) DEFAULT 'male',
  `description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`uid`, `name`, `email`, `password`, `phno`, `approve`, `skills`, `price`, `img`, `gender`, `description`) VALUES
(91, 'VS5', 'darshan99225@gmail.com', '1234', '6767676', 0, 'js,php', 12, '1586954100.jpg', 'male', 'The software engineer job requirements may vary a little between companies because each company has its own specific software engineering needs. Companies generally require excellent problem solving and analytical skills, strong collaboration skills, and training or extensive experience in certain areas. Additionally, a company may require fluency in specific programming languages, experience working with different programming tools, or familiarity with certain programming processes.  When you post a software engineer job, you should focus on the qualifications and qualities your company needs in its next hire. Add your details to our software engineer job description sample to create a job advertisement that works for your business.'),
(94, 'smith', 'smithadd25@gmail.com', '123456789', '8787878989', 1, 'js,php,java ,Unity3D ,Jira', 23, '1592114292.jpg', 'female', 'Software engineers design, develop, and test software and applications for computers. The main duties and responsibilities of software engineers include directing and participating in programming activities, monitoring, and evaluating system performance, and designing and implementing new programs and features. Add your major responsibilities of software developers to our full software engineer role description sample to design a job listing for your organization and start attracting top talent today.'),
(96, 'kenil', 'flexpro25@gmail.com', '1234', '123456', 1, 'js,php,html,css', 12, '1586954100.jpg', 'female', 'The job of a software developer depends on the needs of the company, organization or team they are on. Some build and maintain systems that run devices and networks. Others develop applications that make it possible for people to perform specific tasks on computers, cellphones or other devices.  If you\'re looking for someone who can do both back end and front end software development, you\'ll want a full-stack developer.'),
(98, 'deep', 'test@gmail.com', '1234', '123456', 0, 'python,android,ios', 12, NULL, 'female', 'Engaged in all phases of the software development lifecycle which include: gathering and analyzing user/business system requirements, responding to outages and creating application system models. Participate in design meetings and consult with clients to refine, test and debug programs to meet business needs and interact and sometimes direct third party partners in the achievement of business and technology initiatives.'),
(99, 'Miten', 'smithadd@gmail.com', '1234', '123456', 0, 'ios,swift,unity', 12, NULL, 'male', 'May require a bachelor\'s degree in a related area and 0-3 years of experience in the field or in a related area. Has knowledge of standard concepts, practices and procedures within a particular field. Rely on experience and judgment to plan and accomplish goals. A certain degree of creativity and latitude required. Typically reports to a project leader or manager.'),
(101, 'jeck', 'smithad@gmail.com', '1234', '123456789', 0, 'c#,c++', 12, '1586954100.jpg', 'female', 'May require a bachelor\\\'s degree in a related area and 0-3 years of experience in the field or in a related area. Has knowledge of standard concepts, practices and procedures within a particular field. Rely on experience and judgment to plan and accomplish goals. A certain degree of creativity and latitude required. Typically reports to a project leader or manager.'),
(102, 'stive', 'smit5@gmail.com', '1234', '7786767', 1, 'unity 3d, php,js', 24, NULL, 'female', 'The job title for software engineers may vary between companies. The most common alternate job title for these professionals is software engineer, but companies may also assign more descriptive job titles based on an employee’s expertise or area of focus.'),
(103, 'daya', 'col@gmail.com', '12345', '78789098', 0, 'c#,php,js,css', 34, NULL, 'female', 'Now you know how to get last insert id value using an inbuilt method. But you need to call it immediately after the insert query because it works according to the last query.\n\nIf you are maintaining the id column manually and not using AUTO_INCREMENT in MySQL table then it is not a good choice you can go with other options.'),
(104, 'jay', 'mitul1457@gmail.com', '1234', '456789', 0, NULL, 23, NULL, 'male', 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes'),
(105, 'VS5', 'smitha5@gmail.com', '23456', '78908990', 1, NULL, 34, NULL, 'male', 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.'),
(106, 'ram', 'ram@gmail.com', '1234', '78789090', 1, NULL, 23, NULL, 'male', 'Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bid_tbl`
--
ALTER TABLE `bid_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_fk` (`j_id`),
  ADD KEY `user_fk` (`u_id`);

--
-- Indexes for table `cancel_tbl`
--
ALTER TABLE `cancel_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `j_ca_fk` (`j_id`),
  ADD KEY `u_ca_fk` (`u_id`),
  ADD KEY `c_ca_fk` (`c_id`);

--
-- Indexes for table `category_tbl`
--
ALTER TABLE `category_tbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companyreport_tbl`
--
ALTER TABLE `companyreport_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_re_fk` (`c_id`);

--
-- Indexes for table `company_tbl`
--
ALTER TABLE `company_tbl`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `complete_tbl`
--
ALTER TABLE `complete_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_cm_fk` (`u_id`),
  ADD KEY `c_cm_fk` (`c_id`),
  ADD KEY `j_cm_fk` (`j_id`);

--
-- Indexes for table `education_tbl`
--
ALTER TABLE `education_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid_fk` (`uid`);

--
-- Indexes for table `experience_tbl`
--
ALTER TABLE `experience_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exu_id` (`uid`);

--
-- Indexes for table `jobreport_tbl`
--
ALTER TABLE `jobreport_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `j_re_fk` (`j_id`);

--
-- Indexes for table `job_tbl`
--
ALTER TABLE `job_tbl`
  ADD PRIMARY KEY (`jid`),
  ADD KEY `c_fk` (`c_id`);

--
-- Indexes for table `ongoing_tbl`
--
ALTER TABLE `ongoing_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `c_on_fk` (`c_id`),
  ADD KEY `j_on_fk` (`j_id`),
  ADD KEY `u_on_fk` (`u_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`oid`),
  ADD KEY `item_fk` (`item_number`),
  ADD KEY `u_or_fk` (`u_id`);

--
-- Indexes for table `userreport_tbl`
--
ALTER TABLE `userreport_tbl`
  ADD PRIMARY KEY (`id`),
  ADD KEY `u_re_fk` (`u_id`);

--
-- Indexes for table `user_tbl`
--
ALTER TABLE `user_tbl`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_tbl`
--
ALTER TABLE `admin_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bid_tbl`
--
ALTER TABLE `bid_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cancel_tbl`
--
ALTER TABLE `cancel_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_tbl`
--
ALTER TABLE `category_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `companyreport_tbl`
--
ALTER TABLE `companyreport_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_tbl`
--
ALTER TABLE `company_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `complete_tbl`
--
ALTER TABLE `complete_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `education_tbl`
--
ALTER TABLE `education_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `experience_tbl`
--
ALTER TABLE `experience_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobreport_tbl`
--
ALTER TABLE `jobreport_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `job_tbl`
--
ALTER TABLE `job_tbl`
  MODIFY `jid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `ongoing_tbl`
--
ALTER TABLE `ongoing_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `userreport_tbl`
--
ALTER TABLE `userreport_tbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_tbl`
--
ALTER TABLE `user_tbl`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bid_tbl`
--
ALTER TABLE `bid_tbl`
  ADD CONSTRAINT `job_fk` FOREIGN KEY (`j_id`) REFERENCES `job_tbl` (`jid`),
  ADD CONSTRAINT `user_fk` FOREIGN KEY (`u_id`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `cancel_tbl`
--
ALTER TABLE `cancel_tbl`
  ADD CONSTRAINT `c_ca_fk` FOREIGN KEY (`c_id`) REFERENCES `company_tbl` (`id`),
  ADD CONSTRAINT `j_ca_fk` FOREIGN KEY (`j_id`) REFERENCES `job_tbl` (`jid`),
  ADD CONSTRAINT `u_ca_fk` FOREIGN KEY (`u_id`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `companyreport_tbl`
--
ALTER TABLE `companyreport_tbl`
  ADD CONSTRAINT `c_re_fk` FOREIGN KEY (`c_id`) REFERENCES `company_tbl` (`id`);

--
-- Constraints for table `complete_tbl`
--
ALTER TABLE `complete_tbl`
  ADD CONSTRAINT `c_cm_fk` FOREIGN KEY (`c_id`) REFERENCES `company_tbl` (`id`),
  ADD CONSTRAINT `j_cm_fk` FOREIGN KEY (`j_id`) REFERENCES `job_tbl` (`jid`),
  ADD CONSTRAINT `u_cm_fk` FOREIGN KEY (`u_id`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `education_tbl`
--
ALTER TABLE `education_tbl`
  ADD CONSTRAINT `uid_fk` FOREIGN KEY (`uid`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `experience_tbl`
--
ALTER TABLE `experience_tbl`
  ADD CONSTRAINT `exu_id` FOREIGN KEY (`uid`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `jobreport_tbl`
--
ALTER TABLE `jobreport_tbl`
  ADD CONSTRAINT `j_re_fk` FOREIGN KEY (`j_id`) REFERENCES `job_tbl` (`jid`);

--
-- Constraints for table `job_tbl`
--
ALTER TABLE `job_tbl`
  ADD CONSTRAINT `c_fk` FOREIGN KEY (`c_id`) REFERENCES `company_tbl` (`id`);

--
-- Constraints for table `ongoing_tbl`
--
ALTER TABLE `ongoing_tbl`
  ADD CONSTRAINT `c_on_fk` FOREIGN KEY (`c_id`) REFERENCES `company_tbl` (`id`),
  ADD CONSTRAINT `j_on_fk` FOREIGN KEY (`j_id`) REFERENCES `job_tbl` (`jid`),
  ADD CONSTRAINT `u_on_fk` FOREIGN KEY (`u_id`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `item_fk` FOREIGN KEY (`item_number`) REFERENCES `job_tbl` (`jid`),
  ADD CONSTRAINT `u_or_fk` FOREIGN KEY (`u_id`) REFERENCES `user_tbl` (`uid`);

--
-- Constraints for table `userreport_tbl`
--
ALTER TABLE `userreport_tbl`
  ADD CONSTRAINT `u_re_fk` FOREIGN KEY (`u_id`) REFERENCES `user_tbl` (`uid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
