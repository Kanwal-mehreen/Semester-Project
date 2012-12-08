create database pes;
grant all privileges on pes.sql to root@"localhost" identified by ' ';
flush privileges;

use pes;

Database: `pes`
--

-- 

//---Table structure for table `admin`
--



CREATE TABLE IF NOT EXISTS `admin` (

  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  
  `username` varchar(45) NOT NULL DEFAULT '',
  
  `password` varchar(45) NOT NULL DEFAULT '',
 
   PRIMARY KEY (`id`)
);



--
-- Dumping data for table `admin`
--



INSERT INTO `admin` (`id`, `username`, `password`)
              VALUES
(1, 'admin', 'pes');



------------------------------------------------------ 

//---Table structure for table `class`
--



CREATE TABLE IF NOT EXISTS `class` (
 

  `cl_id` varchar(45) NOT NULL DEFAULT '',
 
  `cl_name` varchar(45) NOT NULL DEFAULT '',
 
  `cl_section` varchar(45) NOT NULL DEFAULT '',
  
  `cl_session` varchar(45) NOT NULL DEFAULT '',
 
  `cl_syllabus` varchar(45) NOT NULL DEFAULT '',
  
  `cl_strength` varchar(45) NOT NULL DEFAULT '',
 
   PRIMARY KEY (`cl_id`)
);



--
-- Dumping data for table `class`
--



INSERT INTO `class` (`cl_id`, `cl_name`, `cl_section`, `cl_session`, `cl_syllabus`, `cl_strength`) 
              VALUES
('1', 'first class', '2008', 'one year', 'nil', '28'),

                    ('2', 'second clas', 'A', 'one year', 'nill', 'fsdf'),

                    ('3', 'ficlass', 'A', 'three year', 'nil', '30'),
                    
('4', 'forth  clas', 'A', 'one year', 'nill', 'fsdf'),
                    
('5', 'ficlass', 'A', 'three year', 'nil', '30'),

                    ('6', 'second clas', 'A', 'one year', 'nill', 'fsdf');



--------------------------------------------------------

--
-- 

//---Table structure for table `contact_us`
--



CREATE TABLE IF NOT EXISTS `contact_us` (


  `address` varchar(300) NOT NULL,
 
  `telephone_no` varchar(12) NOT NULL,
 
  `mobile_no` varchar(12) NOT NULL,
 
  `fax_no` varchar(12) NOT NULL,
 
  `email_address` varchar(100) NOT NULL
);



--
-- Dumping data for table `contact_us`
--



INSERT INTO `contact_us` (`address`, `telephone_no`, `mobile_no`, `fax_no`, `email_address`) 
                   VALUES
('Shamsabad', '12345', '035656565', '03056568', 'pakmuzammil@gmail.com');



 --------------------------------------------------------

--
--

//---Table structure for table `course`
--



CREATE TABLE IF NOT EXISTS `course` (


  `cr_code` varchar(45) NOT NULL DEFAULT '',
 
  `cr_title` varchar(45) NOT NULL DEFAULT '',
 
  `cr_status` varchar(45) NOT NULL DEFAULT '',
 
  `nts_id` varchar(45) NOT NULL DEFAULT '',
 
  `cls_id` varchar(45) NOT NULL DEFAULT '',
 
  `cr_subject` varchar(45) NOT NULL DEFAULT '',
 
   PRIMARY KEY (`cr_code`),
  KEY `nts_id` (`nts_id`),
  
   KEY `cls_id` (`cls_id`)
);
   (`cls_id`) REFER `pes/class`(`cl_id`);';


--------------------------------------------------------

--
-- 

//---Table structure for table `course_sub`
--



CREATE TABLE IF NOT EXISTS `course_sub` (
 

 `cr_code` varchar(45) NOT NULL DEFAULT '',
 
 `cr_title` varchar(45) NOT NULL DEFAULT '',

 `cr_status` varchar(45) NOT NULL DEFAULT '',

 `nts_id` varchar(45) NOT NULL DEFAULT '',
 
 `cls_id` varchar(45) NOT NULL DEFAULT '',

 `cr_subject` varchar(45) NOT NULL DEFAULT '',

  PRIMARY KEY (`cr_code`)
);



--
-- Dumping data for table `course_sub`
--



INSERT INTO `course_sub` (`cr_code`, `cr_title`, `cr_status`, `nts_id`, `cls_id`, `cr_subject`)
                   VALUES
('cr_1', 'math', 'continue', 'sr_1', '4', ''),

                         ('cr_10', 'PK', 'continue', 'st_3', '2', ''),
                         
('cr_11', 'Urdu', 'continue', 'st_3', '2', ''),
                         
('cr_12', 'english', 'continue', 'st_3', '3', ''),

                         ('cr_13', 'math', 'continue', 'st_3', '3', ''),
                         
('cr_14', 'pk', 'continue', 'st_4', '3', ''),
                         
('cr_15', 'isliamt', 'continue', 'st_3', '3', ''),

                         ('cr_16', 'urdu', 'continue', 'st_4', '3', ''),

                         ('cr_17', 'holy Quran', 'continue', 'st_3', '3', ''),
                         
('cr_18', 'english', 'continue', 'st_5', '5', ''),
                         
('cr_19', 'math', 'continue', 'st_4', '5', ''),
                         
('cr_2', 'urdu', 'continue', 'st_2', '4', ''),
                         
('cr_20', 'pk', 'continue', 'st_7', '5', ''),
                         
('cr_21', 'urdu', 'continue', 'st_5', '5', ''),
                         
('cr_22', 'math', 'continue', 'st_7', '2', ''),
                         
('cr_3', 'English', 'continue', 'st_3', '4', ''),
                         
('cr_4', 'english', 'continue', 'sr_1', '4', ''),

                         ('cr_5', 'english', 'continue', 'sr_2', '1', ''),
                         
('cr_6', 'Holy quran', 'continue', 'st_2', '1', ''),
                         
('cr_7', 'math', 'continue', 'st_3', '1', ''),
                         
('cr_9', 'Isliamat', 'continue', 'st_2', '1', '');


 --------------------------------------------------------

--
-- 

//---Table structure for table `events`
--



CREATE TABLE IF NOT EXISTS `events` (


  `ID` varchar(10) NOT NULL,
 
  `Title` varchar(500) NOT NULL,
 
  `date` varchar(20) NOT NULL,
  
  `Description` varchar(1000) NOT NULL
);


--------------------------------------------------------

--
-- 

//---Table structure for table `fee`




CREATE TABLE IF NOT EXISTS `fee` (


  `f_reciptno` int(45) NOT NULL AUTO_INCREMENT,
 
  `f_date` varchar(45) NOT NULL,
 
  `f_amount` varchar(45) NOT NULL DEFAULT '',
 
 `st_regno` varchar(45) NOT NULL DEFAULT '',

  PRIMARY KEY (`f_reciptno`),
 
  KEY `st_regno` (`st_regno`)
);



--
-- Dumping data for table `fee`
--



INSERT INTO `fee` (`f_reciptno`, `f_date`, `f_amount`, `st_regno`) 
            VALUES
(3, '2010-16-07', '700666', 'pes_1'),
                  
(4, '1990-01-02', '500', 'new1');



--------------------------------------------------------

--
-- 

//---Table structure for table `feedback`
-

-

CREATE TABLE IF NOT EXISTS `feedback` (


  `name` varchar(20) NOT NULL,

  `subject` varchar(100) NOT NULL,

  `telephone` int(12) NOT NULL,
 
  `email` varchar(50) NOT NULL,
 
  `detail` text NOT NULL
);



--
-- Dumping data for table `feedback`
--



INSERT INTO `feedback` (`name`, `subject`, `telephone`, `email`, `detail`) 
                 VALUES
('name', 'subject', 23456, 'mail', 'message'),

                       ('asdf', 'Test mail', 12345644, 'abubakardgk@gmail.com', 'asfgdf'),
                       
('ayesha', 'Test mail', 44526556, 'dsbvfsf@hotmail.com', 'NAhgmj,mn bn,,bnm'),

                       ('bbbb', 'Test mail', 0, 'bbbb', 'bbbbbbb'),
                       
('bbbb', 'Test mail', 0, 'bbbb', 'bbbbbbb');


--------------------------------------------------------

--
-- 

//---Table structure for table `fee_structure`
--



CREATE TABLE IF NOT EXISTS `fee_structure` (
 
  `Registration_Fee` int(4) NOT NULL,
 
  `Class` varchar(10) NOT NULL,
  
  `Admission_Fee` int(4) NOT NULL,
 
  `Annual_Charges` int(4) NOT NULL,

  `Tution_Fee` int(4) NOT NULL,
 
   PRIMARY KEY (`Class`)
);



--
-- Dumping data for table `fee_structure`
--



INSERT INTO `fee_structure` (`Registration_Fee`, `Class`, `Admission_Fee`, `Annual_Charges`, `Tution_Fee`)
                      VALUES
(50, 'Middle', 100, 56, 74),
                            
(150, 'Montessary', 125, 45, 100),
                            
(85, 'Nursery', 55, 89, 123),
                            
(89, 'Primary', 66, 36, 45),
                            
(60, 'Secondry', 66, 478, 25);



--------------------------------------------------------

--
-- 

//---Table structure for table `news`
--



CREATE TABLE IF NOT EXISTS `news` (

   `id` int(10) NOT NULL AUTO_INCREMENT,
 
   `date` date NOT NULL,

   `headline` text NOT NULL,
  
   `newsdetail` longtext NOT NULL,

    PRIMARY KEY (`id`)
);



--
-- Dumping data for table `news`
--



INSERT INTO `news` (`id`, `date`, `headline`, `newsdetail`) 
             VALUES
(2, '0000-00-00', 'school has been open', '<h4><span class="Title">\r\n<h4>school has been the goood ooaosdofj day of the day gud of aodof aodfj aosdofdos...fgfdgfdgdfgfdgfd<br />dsfdsfdsfdsaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaffffffffffffffffffffffffffffffff<br />dsfaaaaaaaaaaaaaaaaaaaaa</h4>\r\n</span></h4>'),

                   (1, '2010-07-16', 'Pakistan army has fight very good.', 'pasitan army fight hass been good of the side is equla to aldofods indian army of the day fdsa');



--------------------------------------------------------

--
-- 

//---Table structure for table `non_teaching`
--



CREATE TABLE IF NOT EXISTS `non_teaching` (
 
  `nt_workload` varchar(45) NOT NULL DEFAULT '',

  `stf_id` varchar(45) NOT NULL DEFAULT '',
 
  `nt_firstname` varchar(45) NOT NULL DEFAULT '',

  `nt_lastname` varchar(45) NOT NULL DEFAULT '',
 
  `nt_house_no` varchar(45) NOT NULL DEFAULT '',
 
   `nt_city` varchar(45) NOT NULL DEFAULT '',
 
   `nt_scale` varchar(45) NOT NULL DEFAULT '',
 
   `nt_gender` varchar(45) NOT NULL DEFAULT '',
 
   `nt_contact` varchar(15) NOT NULL,
 
   `image` varchar(45) NOT NULL,
  
    PRIMARY KEY (`stf_id`)
);



--
-- Dumping data for table `non_teaching`
--



INSERT INTO `non_teaching` (`nt_workload`, `stf_id`, `nt_firstname`, `nt_lastname`, `nt_house_no`, `nt_city`, `nt_scale`, `nt_gender`, `nt_contact`, `image`)
                     VALUES
('Sweeper', 'st_06', 'sssssssssssss', 'Masih', '2555', 'dg khan', '2555', 'Male', '051505454', 'ab.jpg'),
                           
('Farash', 'st_07', 'Rasheeda', 'Khatoon', '3', 'dg khan', '3', 'Female', '05150504789', ''),
                           
('Clerk', 'st_08', 'Sabir', 'Hussain', '42', 'dgk', '4', 'Male', '0642467070', 'me.jpg');



--------------------------------------------------------

--
-- 

//---Table structure for table `qulification`
--



CREATE TABLE IF NOT EXISTS `qulification` (

  `Q_id` varchar(45) NOT NULL DEFAULT '',

  `Q_pre_req` varchar(45) NOT NULL DEFAULT '0',
 
    PRIMARY KEY (`Q_id`)
);



--------------------------------------------------------

--
-- 

//---Table structure for table `registration`
--



CREATE TABLE IF NOT EXISTS `registration` (

  `Id_online` int(11) NOT NULL AUTO_INCREMENT,
 
  `name` varchar(45) NOT NULL,
 
  `st_father_name` varchar(45) NOT NULL,
 
  `dob` date NOT NULL,
 
  `Religion` varchar(30) NOT NULL,
 
  `gender` varchar(11) NOT NULL,
 
  `Admission_To_Class` varchar(11) NOT NULL,

  `Previous_School` varchar(45) NOT NULL,
 
  `Guriadian_Name` varchar(45) NOT NULL,
 
  `Relation_With_Student` varchar(45) NOT NULL,
 
  `Father_nic_no` varchar(20) NOT NULL,
 
  `st_address` varchar(100) NOT NULL,
 
  `admit_date` date NOT NULL,
 
  `mobile` varchar(15) NOT NULL,
 
  `telephone` varchar(11) NOT NULL,
 
  `status` varchar(10) NOT NULL,
 
   PRIMARY KEY (`Id_online`)
);



--
-- Dumping data for table `registration`
--



INSERT INTO `registration` (`Id_online`, `name`, `st_father_name`, `dob`, `Religion`, `gender`, `Admission_To_Class`, `Previous_School`, `Guriadian_Name`, `Relation_With_Student`, `Father_nic_no`, `st_address`, `admit_date`, `mobile`, `telephone`, `status`) 
                    VALUES
 (14, 'zubair', 'dfdf', '1990-01-02', 'ISLAM', 'MALE', '1', 'dfsdsf', 'dsfdsf', 'dsfd', '33333-1234566-8', 'sfdsfdsfdsf', '2010-07-18', '03324444', '34535454', 'Inactive'),

                           (15, 'shahid', 'amin', '1990-01-02', 'ISLAM', 'MALE', '1', 'dfsdsf', 'dsfdsf', 'dsfd', '33333-4444444-1', '4444444444', '2010-07-18', '44444354354', '46546546', 'Active'),

                           (16, 'abubakar', 'Abdul Karim', '1990-01-02', 'ISLAM', 'MALE', '1', '444', 'dsfdsf', 'dsfd', '1234-1234566-1', 'sfdsfdsfdsf', '2010-07-18', '3004354354', '34535454', 'Active'),

                           (17, 'Shahid', 'Amin', '1990-01-05', 'ISLAM', 'MALE', '1', 'no 1', 'Amin', 'Father', '44444-4444444-4', 'dfdsfdsf', '2010-07-19', '44443333333', '4444444444', 'Active'),

                           (18, 'Shahid', 'Amin', '1990-01-05', 'ISLAM', 'MALE', '1', 'no 1', 'Amin', 'Father', '44444-4444444-4', 'dfdsfdsf', '2010-07-19', '44443333333', '4444444444', 'Active');



--------------------------------------------------------

--
-- 

//---Table structure for table `result3`
--



CREATE TABLE IF NOT EXISTS `result3` (


  `rs_id` int(11) NOT NULL AUTO_INCREMENT,
 
  `sstd_id` varchar(45) NOT NULL DEFAULT '',
 
  `cc_code` varchar(45) NOT NULL DEFAULT '',
 
  `examin_date` date NOT NULL DEFAULT '0000-00-00',
  
  `obtain_marks` int(10) unsigned NOT NULL DEFAULT '0',
 
  `total_marks` varchar(45) NOT NULL,
 
   PRIMARY KEY (`rs_id`),
 
   KEY `sstd_id` (`sstd_id`),

   KEY `cc_code` (`cc_code`)
);



--
-- Dumping data for table `result3`
--



INSERT INTO `result3` (`rs_id`, `sstd_id`, `cc_code`, `examin_date`, `obtain_marks`, `total_marks`) 
                VALUES
(1, 'pes_1', 'cr_5', '2010-07-19', 77, '100'),

                      (2, 'pes_1', 'cr_6', '2010-07-19', 22, '100'),
                      
(3, 'pes_1', 'cr_7', '2010-07-19', 11, '100'),
                      
(4, 'pes_1', 'cr_9', '2010-07-19', 40, '100'),
                      
(5, 'pes_9', 'cr_5', '2010-07-19', 77, '100'),
                      
(6, 'pes_10', 'cr_10', '2010-07-19', 12, '100'),
                      
(7, 'new1', 'cr_5', '2012-11-17', 500, '300');



--------------------------------------------------------

--
-- 

//---Table structure for table `scale`
--



CREATE TABLE IF NOT EXISTS `scale` (

  `sc_no` int(10) unsigned NOT NULL AUTO_INCREMENT,

  `sc_basicpay` varchar(45) NOT NULL DEFAULT '',
 
  `sc_allowance` varchar(45) NOT NULL DEFAULT '',
 
  `sc_house_rent` varchar(45) NOT NULL DEFAULT '',

   PRIMARY KEY (`sc_no`)
);



--------------------------------------------------------

--
-- 

//---Table structure for table `staff`
--



CREATE TABLE IF NOT EXISTS `staff` (
 

 `stf_id` varchar(45) NOT NULL DEFAULT '',
 
 `stf_firstname` varchar(45) NOT NULL DEFAULT '',
 
 `stf_lastname` varchar(45) NOT NULL DEFAULT '',
 
 `stf_house_no` varchar(45) NOT NULL DEFAULT '',
 
 `stf_city` varchar(45) NOT NULL DEFAULT '',
 
 `stf_scale` varchar(45) NOT NULL DEFAULT '',

 `stf_gender` varchar(45) NOT NULL DEFAULT '',
 
 `stf_contact` int(11) NOT NULL,
 
 `image` varchar(11) NOT NULL,
 
 PRIMARY KEY (`stf_id`)
);



--
-- Dumping data for table `staff`
--



INSERT INTO `staff` (`stf_id`, `stf_firstname`, `stf_lastname`, `stf_house_no`, `stf_city`, `stf_scale`, `stf_gender`, `stf_contact`, `image`) 
              VALUES
('st_01', 'Miss Asia', 'Bukhari', '140000000000000000', 'dgk', '1400000000000', 'Female', 2147483647, 'ab.jpg'),
                    
('st_02', 'Miss Fozia', 'Khan', '2', 'dgk', '12', 'Female', 0, '0'),
                    
('st_03', 'Miss Tahira', 'Jabeen', '7', 'dgk', '15', 'Female', 0, '0'),
                    
('st_05', 'Mr Niaz', 'Khalid', '23', 'dgk', '12', 'Male', 0, '0'),
                    
('st_06', 'Faryad', 'Masih', '2', 'dgk', '2', 'Male', 0, '0'),
                    
('st_07', 'Rasheeda', 'Khatoon', '3', 'dgk', '3', 'Female', 0, '0'),

                    ('st_08', 'Sabir', 'Hussain', '42', 'dgk', '4', 'Male', 0, '0');



--------------------------------------------------------

--
--

//---Table structure for table `staf_qulification`
--



CREATE TABLE IF NOT EXISTS `staf_qulification` (
 

 `Q_id` varchar(45) NOT NULL DEFAULT '',
 
 `staf_id` varchar(45) NOT NULL DEFAULT '',
 
 `deg_name` varchar(45) NOT NULL DEFAULT '',

 `deg_duration` varchar(45) NOT NULL DEFAULT '',

 `institute` varchar(45) NOT NULL DEFAULT '',

  `descripton` varchar(45) NOT NULL DEFAULT '',

  `passing_year` varchar(45) NOT NULL DEFAULT '',

   PRIMARY KEY (`Q_id`),
 
   KEY `staf_id` (`staf_id`)
); 
   (`staf_id`) REFER `pes/staff`(`stf_id`';



--------------------------------------------------------

--
-- 

//---Table structure for table `student`
--



CREATE TABLE IF NOT EXISTS `student` (


  `st_regno` varchar(45) NOT NULL,
 
 `std_Name` varchar(45) NOT NULL,
 
 `st_fathername` varchar(45) NOT NULL DEFAULT '',

  `st_Dob` date NOT NULL,
 
 `st_Religion` varchar(20) NOT NULL,
 
 `std_Address` varchar(200) NOT NULL,
 
 `st_city` varchar(45) NOT NULL DEFAULT '',
 
 `st_Gender` varchar(45) NOT NULL DEFAULT '',
 
 `Previous School` varchar(45) NOT NULL,
 
 `Guriadian Name` varchar(50) NOT NULL,
 
 `Father_nic_no` varchar(40) NOT NULL,
 
 `cl_id` varchar(45) NOT NULL DEFAULT '',
 
 `nnstf_id` varchar(45) NOT NULL DEFAULT '',
 
 `Admission _To_Class` varchar(150) NOT NULL,
 
 `Relation_With_Student` varchar(45) NOT NULL,

  `admit_Date` date NOT NULL,
 
 `telephone` varchar(20) NOT NULL,
 
 `mobile` varchar(20) NOT NULL,
  
  PRIMARY KEY (`st_regno`),
 
  KEY `cl_id` (`cl_id`),
 
  KEY `nstf_id` (`nnstf_id`)
):  
  (`nstf_id`) REFER `pes/staff`(`stf_id`';



--
-- Dumping data for table `student`
--



INSERT INTO `student` (`st_regno`, `std_Name`, `st_fathername`, `st_Dob`, `st_Religion`, `std_Address`, `st_city`, `st_Gender`, `Previous School`, `Guriadian Name`, `Father_nic_no`, `cl_id`, `nnstf_id`, `Admission _To_Class`, `Relation_With_Student`, `admit_Date`, `telephone`, `mobile`)
                VALUES
('new1', 'Muhammad Muzammils', 'M Sana Ullah', '1991-03-12', 'Islam', 'N/A', '', 'Male', '', '', '', '1', 'st_07', '', '', '0000-00-00', '03005245598', ''),

                      ('pes_1', 'ibrahim', 'zia', '1998-06-10', 'islam', 'F/Block', 'dg khan', 'Male', 'numl', 'amin sb', '32102-12345657-1', '1', 'st_08', '8 the', 'father', '2010-06-15', '0642467327', '033262032333'),

                      ('pes_10', 'kamar', 'asdf', '2010-06-25', 'islam', 'dg khan', 'pindi', 'Male', 'numl', 'amin sb', '32102-12345657-1', '2', 'st_08', 'asd', 'father', '2010-06-16', '0642467327', '033262032333'),

                      ('pes_12', 'Bakar Sadiq', 'Qureshi', '2005-06-17', 'adsfsd', 'asdf', 'asdf', 'asdf', 'asdfsad', 'asdfasd', '32102-1234567-5', '4', 'st_08', 'adfa', 'asdf', '2010-06-30', 'asdfasdf', 'asdfasd'),

                      ('pes_2', 'kamar', 'Naveed Khan', '2010-06-15', 'Islam', 'dg khan', 'pindi', 'Male', 'pir adil school', 'amin sb', '32102-12345657-1', '2', 'st_08', 'ffff', 'father', '2010-06-16', '0642467327', '033262032333'),

                      ('pes_22', 'aaaaa', 'aaaaaa', '0000-00-00', 'aaaaa', 'aaaaaa', '', 'Female', '', '', '', '2', 'st_07', '', '', '0000-00-00', '1234567', ''),

                      ('pes_8', 'kamar', 'kk', '2004-06-17', 'islam', 'dg khan', 'pindi', 'xxxx', 'asdfas', 'amin sb', '32102-12345657-1', '4', 'st_08', '8 the', 'father', '2010-06-16', '0642467327', '033262032333'),

                      ('pes_9', 'kamar', 'asdf', '2005-06-17', 'islam', 'dg khan', 'dfdff', 'xxxx', 'asdfas', 'asdfa', '32102-12345657-8', '1', 'st_08', 'asd', 'father', '2010-06-18', '0642467327', '033262032333');



--------------------------------------------------------

--
-- 

//---Table structure for table `teaching_course`
--



CREATE TABLE IF NOT EXISTS `teaching_course` (


  `sstf_id` varchar(45) NOT NULL DEFAULT '',
 
  `code_cr` varchar(45) NOT NULL DEFAULT '',
 
    PRIMARY KEY (`sstf_id`,`code_cr`),
 
    KEY `code_cr` (`code_cr`)
);



--------------------------------------------------------

--
--

//---Table structure for table `teaching_staff`
--



CREATE TABLE IF NOT EXISTS `teaching_staff` (


  `t_firstname` varchar(45) NOT NULL DEFAULT '',
 
  `t_lastname` varchar(45) NOT NULL DEFAULT '',
  
  `t_house_no` varchar(45) NOT NULL DEFAULT '',
 
  `t_city` varchar(45) NOT NULL DEFAULT '',
 
  `t_scale` varchar(45) NOT NULL DEFAULT '',
 
  `t_gender` varchar(45) NOT NULL DEFAULT '',
 
  `stff_id` varchar(45) NOT NULL DEFAULT '',
 
  `t_course_laod` varchar(45) NOT NULL DEFAULT '',
 
  `t_contact` varchar(45) NOT NULL DEFAULT '',
 
  `image` varchar(45) NOT NULL,
 
   PRIMARY KEY (`stff_id`)
);



--
-- Dumping data for table `teaching_staff`
--



INSERT INTO `teaching_staff` (`t_firstname`, `t_lastname`, `t_house_no`, `t_city`, `t_scale`, `t_gender`, `stff_id`, `t_course_laod`, `t_contact`, `image`) 
                       VALUES
('Miss Fozia', 'Khan', '2', 'dgk', '12', 'Female', 'st_02', 'lecture second class', '032167854321', '');


		-----------------------------------------------------------------------------------------------------------------------


                                                      
//--
-- Constraints for dumped tables
--

--
--//



//---Constraints for table `fee`
--


ALTER TABLE `fee`
  
ADD CONSTRAINT `st_regno` FOREIGN KEY (`st_regno`) REFERENCES `student` (`st_regno`);



//-
-- Constraints for table `non_teaching`
--


ALTER TABLE `non_teaching`
 
 ADD CONSTRAINT `stf_id` FOREIGN KEY (`stf_id`) REFERENCES `staff` (`stf_id`);



//-
-- Constraints for table `result3`
--


ALTER TABLE `result3`
  
ADD CONSTRAINT `cc_code` FOREIGN KEY (`cc_code`) REFERENCES `course_sub` (`cr_code`),
  
ADD CONSTRAINT `sstd_id` FOREIGN KEY (`sstd_id`) REFERENCES `student` (`st_regno`);



//-
-- Constraints for table `staf_qulification`
--


ALTER TABLE `staf_qulification`
  
ADD CONSTRAINT `Q_id` FOREIGN KEY (`Q_id`) REFERENCES `qulification` (`Q_id`),
  
ADD CONSTRAINT `staf_id` FOREIGN KEY (`staf_id`) REFERENCES `staff` (`stf_id`);



//-
-- Constraints for table `student`
--


ALTER TABLE `student`
  
ADD CONSTRAINT `cl_id` FOREIGN KEY (`cl_id`) REFERENCES `class` (`cl_id`),
  
ADD CONSTRAINT `nnstf_id` FOREIGN KEY (`nnstf_id`) REFERENCES `non_teaching` (`stf_id`);



//-
-- Constraints for table `teaching_course`
--


ALTER TABLE `teaching_course`
  
ADD CONSTRAINT `code_cr` FOREIGN KEY (`code_cr`) REFERENCES `course` (`cr_code`),
  
ADD CONSTRAINT `sstf_id` FOREIGN KEY (`sstf_id`) REFERENCES `teaching_staff` (`stff_id`);



//-
-- Constraints for table `teaching_staff`
--


ALTER TABLE `teaching_staff`
  
ADD CONSTRAINT `stff_id` FOREIGN KEY (`stff_id`) REFERENCES `staff` (`stf_id`);


