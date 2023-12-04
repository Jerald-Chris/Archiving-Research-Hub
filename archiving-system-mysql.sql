-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 05:36 PM
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
-- Database: `archiving system`
--
CREATE DATABASE IF NOT EXISTS `archiving system` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `archiving system`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `Name`, `Email`, `Password`) VALUES
(1, 'Chris Jerald Maralit', 'cjgm0920@gmail.com', 'MxLWAsKm1$'),
(2, 'Mark Rafael De Castro', 'mark083@gmail.com', 'CkvygvHq1$'),
(3, 'Hans Rafael Acosta', 'hansrafael@gmail.com', 'KBuyRDFz1$'),
(4, 'Jefferson De Villa', 'jeffersondevilla@gmail.com', 'LJBEUPnB1$');

-- --------------------------------------------------------

--
-- Table structure for table `research_abm`
--

DROP TABLE IF EXISTS `research_abm`;
CREATE TABLE `research_abm` (
  `ID` int(11) NOT NULL,
  `Research_Title` varchar(200) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Link` varchar(100) NOT NULL,
  `Strand` varchar(100) NOT NULL,
  `Date_Added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_abm`
--

INSERT INTO `research_abm` (`ID`, `Research_Title`, `Author`, `Description`, `Link`, `Strand`, `Date_Added`) VALUES
(1, 'Thinking Skills of ABM Senior High School Students of Philippine State University', 'Gepila JR., E., et.al.', 'This study aims to determine the level of thinking skills of Accountancy and Business Management Senior High School Students of Philippine State University and tries to find out the relationship between thinking skills level and the age and sex of the respondents. The study used the descriptive-correlational method of research. The methods involved range from the survey which describes the status quo, the correlation study which investigates the relationship between variables, to developmental studies which seek to determine changes overtime. The descriptive method was utilized to describe the thinking skills level of the ABM Senior high school students. The correlation was employed in investigating the relationship between the thinking skills level of the respondents and their demographic profile limited only to age and sex. The researchers used a Test questionnaire in gathering the data needed to evaluate the thinking skills level of the respondents. Based on the findings, it was concluded that most of the respondents acquired low level thinking skills in Anderson and Krathwohl Taxonomy. It was also concluded that there was no significant relationship be-\r\ntween the level of thinking skills of the respondents and their demographic profile. With the conclusions, it was recommended that school administrators may initiate faculty enrichment program to enhance teaching strategies geared towards the development of thinking skills. Teachers should expose students to different skills activities which will help the students to develop their thinking skills.', 'https://drive.google.com/file/d/1eyISY3gE3KYe4voPsAQHqNj3-4xHAcZo/view?usp=drive_link', 'ABM', '2023-12-04 13:52:50'),
(2, 'STUDENTS’ CHOICE OF A BUSINESS MAJOR AND CAREER: A QUALITATIVE CASE STUDY OF MOTIVATION TO STUDY FINANCE AND BANKING', 'SOKALYAN MAO', 'Little is known about how or why Cambodian university students choose a major and a future career. The decision regarding a major is important for a student’s life and future career. The Cambodian labour market has a shortage of graduates in science, technology, engineering, maths and agriculture and a predicted oversupply of business graduates. In recognition of the mismatch between the supply of business graduates and the demands of the labour market, the current study was designed to explore why and how Cambodian students choose a business major and a future career. This qualitative study employed a multiple case study design. The study utilized semi-structured interviews to collect data from five male and five female students enrolled in finance and banking majors, who volunteered to participate in the research. Data analysis was mainly inductive with consideration given to the expectancy-value theory (Eccles, 2009) using a within-case and cross-case analysis within a thematic approach. The findings were that value beliefs were important in students’ choice of a major. Students chose a finance and banking major because they believed that this major would have good employment prospects and lead to a worthwhile career. Other reasons included the interest value related to the subject and to a career, their beliefs in their ability to earn a business degree, and usefulness to the long-term plans of business ownership. In some cases, students chose the business major over a preferred major for diverse reasons including: not wanting to move away from family; a family’s desire to provide security for female offspring; the prohibitive costs of the preferred major; and doubts about their ability to succeed in the preferred major. The extended family was influential in decisions around choice of major and career. Participants listened to the advice of older siblings. The financial support of parents was also pivotal. Farmers did not want their children to work in agriculture and saw business as offering a better life.', 'https://drive.google.com/file/d/1hx65IxfssJGMDSWwdSpJ7twXLSC-oOYV/view?usp=drive_link', 'ABM', '2023-12-04 13:52:50'),
(3, 'Self-Perception of ABM Students towards Their Academic, Social and Emotional College Preparedness', 'Remedios P. Magnaye, DBA', 'This study assessed the self-perception of the selected Accountancy, Business and Management (ABM) students on their academic, social and their emotional college preparedness. The students’ demographic profile was also tested for significant difference in the three constructs of the college preparedness. Through a self-made questionnaire in a 4-scale Likert style, data were gathered from the 255 randomly selected ABM students of one private higher education institution in Batangas Province in the Philippines. Self-perception showed a college-prepared student academically, socially and emotionally. However, there are various constructs of their academic and social-emotional preparedness that need further improvements. The statistical test of significance indicated that the various constructs of academic, social and emotional preparedness have no difference by age, type of school, family income and order of birth. A significant difference was shown in the respondents’ sex and social preparedness but not on academic and emotional preparedness. Similarly, there was significant difference in the various constructs of academic, social and emotional preparedness in terms of the students’ GWA in high school. For this, high schools should develop collaborative teaching and learning strategies focus on reading and writing. In addition, colleges and universities may provide pertinent course information through their\r\nwebsites to guide the students on the various details of their chosen undergraduate courses. Indeed, to prepare students for college alone is insufficient; a college-ready student should complete a degree with a life-ready perspectives.', 'https://drive.google.com/file/d/1e6snaCd5muKKoTFNLYAfg0L8AIVy4elB/view?usp=drive_link', 'ABM', '2023-12-04 13:56:22'),
(4, 'Qualitative Research in Accounting & Management: \r\nEmerald Article: Better safe than sorry: defensive loan assessment behaviour in a changing bank environment', 'Anders Nilsson & Peter Öhman', 'Purpose – The purpose of this paper is to examine to what extent and in what forms loan applications from small and medium-sized enterprises (SMEs) in a risk averse banking environment can be assessed defensively by lending officers (LOs). The paper also identifies triggering mechanisms behind defensive SME loan assessment behaviour and its’ possible effects on the bank and the LOs.\r\n\r\nDesign/methodology/approach – The paper relies on a case study of a major Swedish commercial bank undergoing strategy and control system change during the recent financial crisis. The empirical evidence was collected through interviews with 76 LOs in three branch offices and a focus group interview session.\r\n\r\nFindings – In a risk averse banking environment, LOs can be prone to assessing SME loan applications defensively to a noteworthy extent. Such defensiveness comes in different forms: denial of loan applications, granting of loans with collateral or high interest rates, or granting of loans only to clients with most of their financial affairs in the bank. External and internal mechanisms jointly\r\ntrigger defensive loan assessment behaviour. The possible effects include fewer Type II errors and more Type I errors for the bank, while LOs avoid change and blame.\r\n\r\nOriginality/value – Overall, this study contributes to the literature by revealing triggering mechanisms, forms and effects related to the multifaceted construct of defensive loan assessment behaviour among LOs in a commercial bank, who handle applications from SMEs.', 'https://drive.google.com/file/d/1i4yE92-4GVbXiFtZe71jCdGiCSpwx9Rz/view?usp=drive_link', 'ABM', '2023-12-04 13:56:22'),
(5, 'Listening Difficulties and Needs of Grade 11 ABM students in Calatagan, Batangas', 'Catalo, M., et.al.', 'This descriptive analytic study aimed to determine the difficulties encountered by 59 (M=16; F=43) randomly selected Grade 11 ABM-strand students from Calatagan, Batangas. It also intended to identify their listening needs based on the problems they encountered when listening to an aural text. Using a mixture of\r\ntwo methods of data analysis, it quantitatively examined the listening difficulties of the participants and was expounded through the qualitative analysis of the data to provide a deeper understanding of the findings. The students were observed in an oral communication class using the observation checklist developed by Chang, Wu and Pang (2013) in order to assess their listening comprehension skills. Then they asked to were to complete a survey questionnaire adapted from Richards (2001) to identify their personal listening experience in their English classes. Lastly, in order to gain an in-depth understanding of the students’ responses to the two sets of questionnaires, a focus group discussion (FGD) was held with randomly selected students for validation purposes. The questions prepared for this procedure were crafted, informed and guided by Munfangati’s (2014) studies. It is hoped that the findings of this study will benefit curriculum developers and classroom teachers in choosing the appropriate content for their ABM students.', 'https://drive.google.com/file/d/1i0tnabk_Sf7HN0tA-HbYwK6GyBVjtnNk/view?usp=drive_link', 'ABM', '2023-12-04 13:56:22'),
(6, 'Profile and Work Immersion Performance of Accountancy, Business, and Management (ABM) Students of Selected Implementing Schools in Subic District, Zambales, Philippines', 'Jestoni R. Alcobendas', 'Work immersion is a key subject under the Senior High School (SHS) curriculum that is conducted in different ways and time frame as needed by SHS learners. This study was conducted to find out the work immersion performance of the Grade 12 students at San Isidro High School and Subic National High School, Zambales, Philippines. The IV-DV model of this research involved the profile of the student respondents and their work immersion performances in the schools’ partner companies. This study utilized the descriptive method of research which adapted the DepEd Schools Division of Bulacan’s checklist for work immersion performance.\r\nData revealed that student-trainees performed very satisfactorily on their work immersion showing good work ethics and personality suitable of a future employee in any company they want to apply in. Male and female ABM students have the same level in job skills which implied that the profile variables of the trainees have no influence on the work immersion performance. From the findings and conclusion of this study, the implementing schools may need to improve the academic performance of ABM students to reach an excellent level and may allow them to join trainings and seminars given to regular employees about improving work ethics and personality development.', 'https://drive.google.com/file/d/1fUS0m-3jzTk23jC3wbZdWLijU0DlCr1F/view?usp=drive_link', 'ABM', '2023-12-04 13:59:46'),
(7, 'Appraising the Implementation of the Accountancy, Business and Management (ABM)\r\nStrand of the Senior high School Curriculum in the Division of Science City of Munoz, Nueva Ecija, Philippines', 'Mingala-Pagay, M., et.al.', 'This research aimed to conduct a formative assessment in the implementation of Accountancy, Business and Management (ABM) Strand in the Division of Science\r\nCity of Muñoz for years 2016 and 2017. The study assessed three main areas or variables, namely: instructional input, conduct of instruction and outcomes of instruction. The study revealed a tremendous increase of over one and one-\r\nhalf times its number compared to the previous year (2016) enrolment in ABM Strand which also accounted to learners’ own preference and decision to enrol along this track was documented. It was also observed that the most basic\r\ninstructional inputs such as classrooms, television, LCD projector, computer, and printer were deficient. Textbooks still served as the daily instructional material followed by hand outs and modules. It further revealed that teaching\r\nmethodologies and strategies employed by the ABM teachers were varied as to the extent of use. Results further revealed that much of the instructional time was devoted to lecture method. The teacher-student and student to student interactions were not evidently seen in the study. In terms of assessment, Paper and Pen test was used as mode of assessment in order to measure and evaluate the learners’ learning outcomes. On the contrary, in terms of output of instruction, learners still obtained outstanding and very satisfactory grades. Given the qualifications and vertical specialization of teachers and the limitations cited, student-learners managed to acquire quality education.', 'https://drive.google.com/file/d/1eSl6hrrbBg_VPagJTVJzRGvyMkZ4c70-/view?usp=drive_link', 'ABM', '2023-12-04 13:59:46'),
(8, 'Applications of ABM in International Legal Research', 'Katharina Luckner & Veronika Fikfak', 'Agent-based modeling has been largely overlooked in international legal research, even though it could be used to gain insights into the highly complex processes of state behavior relevant to international law that can only be insufficiently addressed with other methods. On the basis of a concrete application – state compliance with European Court of Human Rights judgments- we show the applicability of agent-based modeling to international legal research. We discuss\r\nits implications for two levels of analysis: (1) understanding the drivers of state behavior, which contributes to the international law research with unitary state actors at its center, and (2) within state dynamics and their influence during the compliance process, which breaks the black box of the state. Agent-based models addressing the questions that arise on these levels can take a variety of shapes. We provide one line of thought on the set-up of an agent-based model for each of the two levels of analysis and discuss expected difficulties. Finally, we provide an outlook on how these aspects might come together in exploring how compliance rates can be bettered.', 'https://drive.google.com/file/d/1i8rw7FRdg8ue4YL6eSWUl7oZx819V3y1/view?usp=drive_link', 'ABM', '2023-12-04 13:59:46');

-- --------------------------------------------------------

--
-- Table structure for table `research_humss`
--

DROP TABLE IF EXISTS `research_humss`;
CREATE TABLE `research_humss` (
  `ID` int(11) NOT NULL,
  `Research_Title` varchar(200) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Link` varchar(100) NOT NULL,
  `Strand` varchar(100) NOT NULL,
  `Date_Added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_humss`
--

INSERT INTO `research_humss` (`ID`, `Research_Title`, `Author`, `Description`, `Link`, `Strand`, `Date_Added`) VALUES
(1, 'Writing Difficulties Encountered by Humanities and Social Sciences Students in Philippine Politics and Governance', 'Ena Josel F. Portillo-San Miguel', 'Writing is a very intricate skill to acquire among the four language skills. This qualitative study was conducted to determine the writing difficulties committed by Humanities and Social Sciences (HumSS) students and analyze how they develop a topic in Philippine Politics and Governance (PPG). Participants of the study were the Grade 11 students of Morong National High School, Morong, Rizal, who took up the said subject for S.Y. 2019-2020 in its First Semester. Twelve (12) students from the six (6) HumSS classes were selected using the Systematic Sampling Technique. This study employed the Grounded Theory approach to examine written output using codes from the three (3) phases of coding – Open, Axial, and Selective Coding. After the coding process, significant themes emerged and were subjected to analysis. Findings revealed that the most common difficulties encountered by the participants when developing a topic are grammatical errors, inappropriate use of political concepts, and inappropriate choice of vocabulary. It is also found out that unnecessary shift in tense, ambiguous pronoun reference, loose sentence, sentence fragment, dangling modifier, and wordy sentence are next in line. Also, participants chose to develop their topics in Exposition, Narration, Analogy, and Examples. More so, participants also found it hard to create an issue when given a Philippine Politics and Governance writing task due to language constraints evident in their writing outputs.', 'https://drive.google.com/file/d/1fHXlX7dVH6jczJTXK21AXLoBe0q0Hr8W/view?usp=drive_link', 'HUMSS', '2023-11-22 08:18:26'),
(2, 'Readiness of Grade 12 Humanities and Social Sciences (HUMSS) Students in College: Ex-post Facto on Performance, Career-Goal and Potential Challenges', 'ROWENNA B. SANTIAGO', 'The study was conducted to assess the readiness of Grade 12 Humanities and Social Sciences (HUMMS) Students in college: Ex-post Facto on Performance, Career-Goal and Potential Challenges. Specifically, it attempted to scrutinize the academic performance of the respondents for the first quarter of SY 2021- 2022; construct the respondents’ profile in their career goals; inquire from the respondents their potential challenges/ problems when they go to college; and come up with a proposed career plan for the respondents based on the findings of the study. Results revealed that 9.87, 24.69, 39.50, 23.45, and 2.47 percent of the respondents belonged to the 90-100, 85-89, 80-84, 75 to 79 and below 75 grade scales, respectively. The most favored chosen career/ profession was ‘Professional Teacher’, with 22.2 percent of the class opted for it, followed by ‘Criminologist’ with 14.28 percent. ‘Computer Programmer’, ‘Agriculturist’, ‘Musician’, and ‘Police officer’ were the least chosen career/ profession. In the first ranking category of unknown/ potential challenges twelve were enumerated, topped by ‘Financial difficulties’ and ‘Might find much difficulty in Math and Science’, each obtaining a score of 18.5 percent. This was followed by ‘Prolonged sickness in the family and Might not pass the college admission test’, with a score of 11.1 percent each.\r\n\r\nIn the proposed career plan the following were suggested: (a) Only nine to ten percent of the respondents would take up any engineering degrees and computer science. (b) Twenty-four to twenty-five percent of the class may be advised to take up science-laden courses, (c) Thirty-nine to forty percent of the respondents may be encouraged to become a professional teacher, seaman, criminologist, police officer, or related college degree that do not deal so much mathematics and sciences. (d) Twenty-three to twenty four percent of the class may be persuaded to go for entrepreneurship or TESDA-certified livelihood course, and (e) Two to three percent of the class may be convinced to change their curriculum exit to employment.', 'https://drive.google.com/file/d/1eX_7bc_v3_7J6_uPwBj7qRoz5dXydCuj/view?usp=drive_link', 'HUMMS', '2023-11-23 12:17:08'),
(3, 'PROCESS APPROACH IN TEACHING WRITING AMONG HUMANITIES AND SOCIAL SCIENCES (HUMSS) LEARNERS', 'Andrea Vernice L. Macalino', 'This study is descriptive-qualitative research, and it determined the effectiveness of process approach in teaching writing among Humanities and Social Sciences (HUMSS) learners. Qualified and respectable educators and experts were asked to evaluate the learning guide developed by the researcher to further adhere to the qualifications needed in executing this to the learners. These validators used the DepEd prescribed tool for evaluating modules and learning guides. Selected group of Humanities and Social Sciences (HUMSS) learners of Don Jose M. Ynares Sr. Memorial National High School (DJYMNHS) underwent learning writing through process approach using the researcher-made learning guide. Since distance learning was the modality at the time the study was conducted, the process happened in the online platform. The validators and the students’ output determined the effectiveness of the learning guide. This study focused on the use of process approach in teaching writing a narrative essay. The process approach is divided into five segments: pre-writing, drafting, revising, editing, up to publishing phase. In gathering data, observation, focus group discussion, survey questionnaire with descriptive scale and the scores of students’ written output\r\nwere used. The results were shown based on the evaluation of experts, teachers, and students of Grade 11 HUMSS. The crafted learning guide was rated “Very Much Useful” by the experts. Therefore, the use of the learning guide in writing will be effective in enhancing HUMSS senior high school students’ writing skills under the process approach. This will help them create quality output ready for publishing.', 'https://drive.google.com/file/d/1fUgJ7xDULERwkWaOmFWWZP0dDzgJrwGo/view?usp=drive_link', 'HUMSS', '2023-12-04 13:49:34'),
(4, 'PERCEPTION ON THE EFFECTS OF HUMANITIES AND SOCIAL SCIENCES (HUMSS) AS THE MOST BRAIN-DEAD STRAND OF THE SELECTED HUMSS STUDENTS OF SACRED HEART COLLEGE', 'Camaligan, N., et.al.', 'Nowadays, people tend to categorize students’ academic capability based on the\r\ntrack students are taking in Senior High School. Senior High School offers different strands in which these strands have certain subjects allotted for the students that will serve as a guide and preparation for their college. One of these strands is the Humanities and Social Sciences strand in which it is designed for those who wonder what is on the other side of the wall. Unlike Science, Technology, Engineering and Mathematics (STEM) and Accountancy, Business and Management (ABM), which focuses on mathematical and analytical skills, Humanities and Social Sciences (HUMSS) is more on language ability, reasoning, communication, reading and writing skills. Majority of the students these days are much undecided in to which path they will be taking and most of them falls under HUMSS strand.', 'https://drive.google.com/file/d/1fS1Oue566Hp38dRadLq4cqh2127IH2SP/view?usp=drive_link', 'HUMSS', '2023-12-04 13:49:34'),
(5, 'Attitude of Grade 12 SHS Academic Tracks Students Towards Speaking in English', 'Donita – Jane B. Canceran & Conchita Malenab - Temporal', 'The matter of learner’s attitude is acknowledged as one of the most important\r\nfactors that impact on learning language. Hence, this study aimed to determine the attitude of students toward speaking in English as it employed descriptive-\r\ncorrelational method to describe their profile and their attitude. It also ascertained the relationship between the students’ attitude towards speaking in English and their profile variables and the difference of their attitude when grouped by strand and by sex. The data were collected from Grade 12 Senior High School Academic Track students with the use of the English Speaking Attitude Questionnaire (ESAQ). Results show that both HumSS and ABM strand students have positive attitude towards speaking in English and that speaking in English is important to them in general. Interestingly, however, these students admitted that they do not speak English well, are worried about making mistakes when they speak English and are afraid of being laughed at when they make mistakes in speaking. The students also believe that they need to learn speaking in English because they might need it in their future job and that practicing it will make them better speakers of English. The study found no significant difference in the attitude of the students towards speaking in English when grouped according to strand and sex. The implication of these results redounds to the emphasis on the importance of classroom motivation to improve students’ attitude towards speaking in English.', 'https://drive.google.com/file/d/1eY1iH3-P2EITg-yeGjDrTJBycRopiSJ6/view?usp=drive_link', 'HUMSS', '2023-12-04 13:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `research_stem`
--

DROP TABLE IF EXISTS `research_stem`;
CREATE TABLE `research_stem` (
  `ID` int(11) NOT NULL,
  `Research_Title` varchar(200) NOT NULL,
  `Author` varchar(100) NOT NULL,
  `Description` longtext NOT NULL,
  `Link` varchar(100) NOT NULL,
  `Strand` varchar(100) NOT NULL,
  `Date_Added` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `research_stem`
--

INSERT INTO `research_stem` (`ID`, `Research_Title`, `Author`, `Description`, `Link`, `Strand`, `Date_Added`) VALUES
(1, 'The Effectiveness and Challenges of Online Learning for Secondary School Students – A Case Study', 'Basar, Z., et.al.', 'The COVID-19 pandemic has forced an immediate implementation of online learning.\r\nHowever, little is known about its effectiveness and challenges faced by the students. Thus, this study is aimed at examining the effectiveness of online learning and the challenges that it presents to pupils’ abilities to learn. This study employed a case study design using a survey questionnaire, administered to 99 students from a secondary school in Jasin, Melaka. Data were analysed descriptively (calculation of percentage and frequency). Generally, the findings indicated that the students have computers or smartphones and an internet connection at home. Besides, it was found that that the ability and comfortability to use computers was high (>93%). However, their motivation in online learning was low (41.5%) and ability to work in a group was at a moderate level (66.7%). They also agreed that conventional teaching (face-to-face) was important for their learning (98%). These findings are valuable for the government, school administrators, teachers and parents to acknowledge the importance of well-equipped facilities and a stable internet connection for effective learning. However, it is recommended for future researchers to utilize a larger sample size and students from various backgrounds to better understand this issue.', 'https://drive.google.com/file/d/1duWqEnIk8ewVxXJJ8xRpla0c9fqtQz2J/view?usp=drive_link', 'STEM', '2023-12-04 13:25:03'),
(2, 'The Effect of Stem Education on Academic Performance: A Meta-Analysis Study', 'Assoc. Prof. Dr. İbrahim Yaşar KAZU & Cemre KURTOĞLU YALÇIN', 'STEM education is applied to raise individuals having 21st-century skills based on the integration of science, technology, engineering, and mathematics. This paper aims to present the overall effect of STEM education on students’ academic achievement by analyzing 64 research findings obtained from 56 quantitative studies published between 2014 and 2021. Relevant studies were identified from the databases of scholarly publications such as ERIC, Web of Science, EBSCOHost, Google Scholar, SCOPUS, ProQuest, CHE Thesis Center. The sample was then meta-analytically examined using the CMA program. Education level, duration of the application, disciplines, and publication type were determined as moderator variables. The results showed that the effect of STEM education on students’ academic success was statistically higher (g= 1.150) in the random-effects model. A heterogeneous distribution was obtained from the sample. Further subgroup analyzes using Analog ANOVA revealed that disciplines (Qb= 921.394; p= .000), and publication type variables were statistically significant (Qb= 7.229; p= .007). With respect to the disciplines, the effects of STEM education showed the largest effect size of 1.156 in the discipline of science. Regarding the publication type, national studies were presented the largest effect size of 1.155.', 'https://drive.google.com/file/d/1e-_QFqirLMf2Sexv3Xx7GBzavHUAl6n5/view?usp=drive_link', 'STEM', '2023-12-04 13:25:03'),
(3, 'The Benefit of STEM Skills to Individuals, Society, and the Economy', 'Ian Walker and Yu Zhu', 'There are good reasons for thinking that education causes worker productivity\r\nto rise through the acquisition of new skills and that, in a market economy this\r\ngets reflected in wages to the benefit of the individual concerned. Whether\r\nthere are wider benefits, apart from the private benefits to the individual\r\nconcerned, is less well researched. This report considers the extent of private\r\nand social benefits associated with STEM (science, technology, engineering\r\nand mathematics) skills. We find convincing evidence, from a Danish reform, that mathematics skills acquired at school are important – they have a causal effect on later earnings that are large – perhaps as large as 10%. Moreover, correlations for the UK suggest something similar and these results seem to be robust to including a range of additional controls. The development of STEM skills at school are important – not least because they are a prerequisite for selecting STEM higher education (HE). But it is unclear whether the earnings premia associated with STEM subjects in higher education reflect pre-existing skills, or the skills acquired in HE. The earnings premium for HE, on average, seems large. This is consistent with the view that there is too little HE. The evidence points to there being a greater than average earnings premium for STEM which would be consistent with this shortage being more acute for STEM.', 'https://drive.google.com/file/d/1iDFSYOBw2O3rK7PyREhEg6qGFIhyfvMw/view?usp=drive_link', 'STEM', '2023-12-04 13:27:52'),
(4, 'Students’ interest in Science, Technology, Engineering, and Mathematics (STEM) based on parental education and gender factors', 'Siregar, N., et.al.', 'The integration of science, technology, engineering, and mathematics (STEM) education in various fields of knowledge is needed to enhance the country’s economic development. STEM education is essential in developing technology towards the Industrial Revolution 4.0 (IR4.0) era. However, in many countries, especially in Indonesia, students are less interested in STEM subjects. This study aims to identify the differences and interactions of student interest in STEM based on parental education and gender. This study uses a quantitative method involving 150 secondary school students at Simanosor Julu, Medan, Indonesia. The results of data analysis based on the mean score indicated that there are differences in students’ interest in STEM-based on gender and parental\r\neducation. The mean score of male students, based on parental education at the university level, is higher than female students. It is recommended that there are additional study more deeply the STEM interests of students based on (a) social-economic status, (b) rural and urban schools, (c) the relationship between the two variables, and (d) involves students with more numbers.', 'https://drive.google.com/file/d/1iEZ58_QQLx4R7N02KveOA-7WybPEuwTE/view?usp=drive_link', 'STEM', '2023-12-04 13:27:52'),
(5, 'STEM technology-based model helps create an educational environment for developing students\' technical and creative thinking', 'Oschepkov, A., et.al.', 'For successful technology adaptation today, individuals need not so much acquired experience and knowledge as certain personality traits in the form of skills, competencies, and abilities for collaborative problem solving, as well as achievement motivation and self-development. The purpose of this study was to develop and test a model for the formation of personality traits associated with the development of technical and creative thinking. The study was conducted using the modeling method and a psychodiagnostics approach based on the characteristics of creative thinking. An experimental study was conducted with a sample of 120 students from Plekhanov Russian College of Economics. The age range of the respondents was from 19 to 21 years. The results showed 1) the characteristics and dynamics of students\' value systems and creative thinking, 2) a developed program for the development of intrinsic motivation, 3) a model for designing a pedagogical environment for students\' engineering and creative thinking in education STEM; 4) testing the developed programs and models. The results also showed that there is a statistically significant relationship between the development of students\' intrinsic motivation and the reorientation from normative-limited to creative-free thinking. Considering the results of this study, it was concluded that the model developed by the authors helped to shape and develop students\' engineering and creative thinking. Implications for further research and teaching are drawn.', 'https://drive.google.com/file/d/1iG443A2Zo9gVbC-VxkIVUvfIL0bE8rcv/view?usp=drive_link', 'STEM', '2023-12-04 13:34:49'),
(6, 'Impact of Alcohol Consumption on Young People: A Systematic Review of Published Reviews', 'Newbury-Birch, D. et.al.', 'This review of reviews relating to the impact of alcohol consumption on young people was undertaken between May and October 2008 by a research team based at the Institute of Health and Society at Newcastle University. The work was commissioned by the Department for Children, Schools and Families (DCSF) - Tender No: eor/sbu/2008/007.', 'https://drive.google.com/file/d/1dqB69ZsiZlswbVj9wr-rd1uQcqJs6qGS/view?usp=drive_link', 'STEM', '2023-12-04 13:34:49'),
(7, 'Effect of Promotion via Social Media on Access of Articles in an Academic Medical Journal: A Randomized Controlled Trial', 'R. Jay Widmer, MD, PhD, et.al.', 'To study the effect of a planned social media promotion strategy on access of\r\nonline articles in an established academic medical journal.\r\n', 'https://drive.google.com/file/d/1klWtE6csdXfkeaK6xmLo4WyD4EJhi3_t/view?usp=drive_link', 'STEM', '2023-12-04 13:34:49'),
(8, 'Digitalization on Studies by Millenials Researcher', 'Afifah, L.', 'Echo boomers or generation ME, better known as ‘Millennials’, are people whose\r\ndaily activities are inseparable from the involvement of technological and information developments. The dependence of echo boomers on modern technology in every line of life is not necessarily parallel to their interest in conducting research on this subject. Therefore, it is necessary to conduct a study that examines the involvement of digitalization in the research of millennial generations. The data sources used in this study were German Department students consisting of students of German study programs and Chinese study programs as well as thesis works produced by students from both study programs between 2015 and 2019. The research data was obtained through interviews and documentation, and the findings data analyzed qualitatively. The results showed that there were not many studies by students involving information technology. The role of digitalization is mostly found in research on the development of learning media, a small portion of which occurs in the application of teaching materials and learning media.', 'https://drive.google.com/file/d/1dsAx660_qMBjpjRHTkgQh4xZg-iB9TOy/view?usp=drive_link', 'STEM', '2023-12-04 13:34:49'),
(9, 'Challenges in STEM Learning: A Case of Filipino High School Students', 'Rogayan Jr., D., et.al.', 'STEM education faces monumental challenges which are aggravated by the Industrial\r\nRevolution (IR) 4.0 and the current COVID-19 global contagion. These challenges also affect how students learn in the STEM discipline in the senior high school. This qualitative study employed a case research design which sought to investigate nature of the challenges in STEM learning among senior high school students in the Philippines. Semi-structured interview guide was used in gathering the qualitative data from the 20 STEM learners in a government-run secondary school in Zambales, Philippines. Findings showed that the students encountered challenges in the STEM program. Ten themes emerged based on the\r\nstudents’ responses. These challenges encountered by the students revolved around three categories – course-related challenges, individual challenges and socio-cultural challenges. The study recommends that schools offering STEM academic strands may reframe and rethink their processes, practices and policies to address the students’ challenges in STEM learning. Policy recommendations are also discussed in the paper to equip the students towards the demands of Industrial Revolution 4.0 and in the post-pandemic world.', 'https://drive.google.com/file/d/1iMzTZtStq0yvZK3wgKK90vJjtPJFC5bN/view?usp=drive_link', 'STEM', '2023-12-04 13:34:49'),
(10, 'A Causal Comparative Study of STEM Persistence Between Supported and Non-Supported STEM Interested Students', 'Elizabeth Bernardi', 'Many students who enter a STEM track in college move out of that track before graduation (National Science Foundation, 2018). The purpose of this study was to assess whether there was a difference in STEM-related major persistence for population proportions of students actively involved in the Science Scholars program and those who were STEM-interested but not program participants. This program oriented students to the STEM program, facilitated engagement with peers and faculty, exposed students to research opportunities, and filled in potential learning gaps (Gibson et al., 2019).', 'https://drive.google.com/file/d/1iGrRmfrtmjhjUlWKoBHQ61yLKRJ1Wbyj/view?usp=drive_link', 'STEM', '2023-12-04 13:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_registration`
--

DROP TABLE IF EXISTS `user_registration`;
CREATE TABLE `user_registration` (
  `id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Grade_Level` varchar(10) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_registration`
--

INSERT INTO `user_registration` (`id`, `Name`, `Email`, `Password`, `Grade_Level`) VALUES
(1, 'Ralph lorenz De Roxas', 'ralphlorenzderoxas@gmail.com', '$2y$10$jOkL0OO/jqUtQ9LcrqVgBuE43llZlzF2KSiXkTP8aTS.mpzT.NGtW', 'Grade 11'),
(2, 'Adrian Gabriel Maranan  ', 'adriangabrielmaranan@gmail.com', '$2y$10$CSnO/fQ1/4KjkClIBtzfSOcR58c1iMxjuVVI3bR61r/7igqHAIWKC', 'Grade 12'),
(3, 'Jhess Briones', 'jhessbriones@gmail.com', '$2y$10$S8.YPbCdd3XC3fPN7oHjIeE0UyvhW22CsKAzkaHYGBjydTVh8tR1u', 'Grade 12'),
(4, 'Shaquille Luna ', 'shaquilleluna@gmail.com', '$2y$10$c6CIEDXjGNKnDNSGLW4FPum2BwZR61XHttQ/6hc9g.yK5GNE.0Jsy', 'Grade 11'),
(5, 'Nicos Balasbas ', 'nicosbalasbas@gmail.com', '$2y$10$uowQjrx7Hut04aoJ33RS.u1WokdYIreMwDlxVtd5ao8etHerKFqhO', 'Grade 11'),
(6, 'Nathaniel Galbo ', 'nathanielgalbo@gmail.com', '$2y$10$oWPe/tr82ACqZ313KyMPIeo00b/XFZpEItuE/UI8CGtYiREooQH5i', 'Grade 11'),
(7, 'Jasmine Kate Gubi', 'jasminekategubi@gmail.com', '$2y$10$2UalaDM8S6YENkor1agVGOPlrv./ivQuKg5.y1BeUelT/2wvOcxYC', 'Grade 12'),
(8, 'Rachel Rodriguez', 'rachelrodriguez@gmail.com', '$2y$10$vONV.rkR3udQmo2rPY5b/uwJeoIdwxssueMAv3E8ie0/yxRHX5HxO', 'Grade 12'),
(9, 'Joshua Marcellana ', 'joshuamarcellana@gmail.com', '$2y$10$Ut0/RlKs51O9mu2p7KgAFuQ4SIA4zWrFAjzHPLd2iK.VQDHFWH.qi', 'Grade 12'),
(10, 'Renzo Aguinaldo', 'renzoaguinaldo@gmail.com', '$2y$10$/wWl3iqoKLVxncsbdqyJbufyuTXURBhIq2ldpPCONVOzYH/FCvK9i', 'Grade 12'),
(11, 'John Hernandez', 'johnhernandez@gmail.com', '$2y$10$H6hJtnqSkAYWY7mCHkhyTeYwnP1oZjmj4TbmzGMH/jLZWqfciv3ci', 'Grade 12'),
(12, 'Astrid Nicole Andrin', 'astridnicoleandrin@gmail.com', '$2y$10$x/2QcW2YEOlaLagyYd8jAuQPDc9.v2/OW3V7LK6G8.T/10/2mObbS', 'Grade 12'),
(13, 'Lord Michael De Roxas', 'lordmichaelderoxas@gmail.com', '$2y$10$pvx2LpF0Cag2bLHm0dd0velt4yqmDhK5/Alwyo9sCOKk03SlaxEs2', 'Grade 12'),
(14, 'Caryl Joy Gina', 'caryljoygina@gmail.com', '$2y$10$6fik8Ql5rh4gjNzvAytMUO2KnB6Jc1cW1JczxM18eH2jEd3lPqinq', 'Grade 11'),
(15, 'Joemil Hernandez ', 'joemilhernandez@gmail.com', '$2y$10$e7PXamFqOYnWwOzZlqkHj.TSKiSNdW51HTNprObaNBb3xuBYAlNuW', 'Grade 11'),
(16, 'Angelo Suarez ', 'angelosuarez@gmail.com', '$2y$10$LN7QRJtTyKpQ/0D7WUVwJufM2sP7oO8.Il5mGSLjrDpduXcAgqwrG', 'Grade 12'),
(17, 'Mark Santos', 'marksantos@gmail.com', '$2y$10$1sZVJe7subaW0eflzx4NYeD0iavIVMDOkZeNsV07TQE91ib7uYBLq', 'Grade 11'),
(18, 'Chelsea Delas Alas ', 'chelseadelasalas@gmail.com', '$2y$10$ELGPdv.OflXoTmsfH1o8Quq3.nub1I5wzaK/ynOHaKmIdpNM4qdKa', 'Grade 12'),
(19, 'John Christopher Brosoto', 'christopherbrosoto@gmail.com', '$2y$10$gfxRr1dAEu5BZJyPjB5q8eK8yDrk5AST41HZa/UhooRZesewICACu', 'Grade 11'),
(22, 'Ceejay Del Mundo', 'ceejaydelmundo@gmail.com', '$2y$10$PFNmpZHQ4u/jsYXiy8MjUuGPdhjlQz4RK7mCndoGC.S4R39RrQXdm', 'Grade 11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `research_abm`
--
ALTER TABLE `research_abm`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `research_humss`
--
ALTER TABLE `research_humss`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `research_stem`
--
ALTER TABLE `research_stem`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user_registration`
--
ALTER TABLE `user_registration`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `research_abm`
--
ALTER TABLE `research_abm`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `research_humss`
--
ALTER TABLE `research_humss`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `research_stem`
--
ALTER TABLE `research_stem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_registration`
--
ALTER TABLE `user_registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
