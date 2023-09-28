-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2023 at 12:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `name`) VALUES
(1, 'C++'),
(2, 'PYTHON '),
(3, 'HTML'),
(4, 'CSS'),
(5, 'Education'),
(6, 'CRICKET '),
(8, 'Health');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `firstname`, `lastname`, `email`, `body`, `status`, `date`) VALUES
(2, 'Ainuddin', 'Chowdhury', 'ainuddin@gmail.com', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Lati', 0, '2018-01-29 03:43:33'),
(3, 'sharif', 'Islam', 'sarifcse159@gmail.com', 'what is c++?', 0, '2023-09-28 09:34:58'),
(4, 'sharif', 'Islam', 'sarifcse159@gmail.com', 'what is c++?', 0, '2023-09-28 09:46:59'),
(5, 'soheb', 'hossen', 'hoseen@gmail.com', 'good boy', 0, '2023-09-28 10:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_footer`
--

CREATE TABLE `tbl_footer` (
  `id` int(11) NOT NULL,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_footer`
--

INSERT INTO `tbl_footer` (`id`, `note`) VALUES
(1, 'My personal blog.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `body` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `name`, `body`) VALUES
(1, 'About ', '<p>HTML (Hypertext Markup Language)\r\n\r\nHTML is the standard markup language used for creating web pages. It provides the structure and content of a web page by using elements and tags. HTML elements are used to define headings, paragraphs, links, images, forms, and more. It\'s the backbone of web development and works in conjunction with CSS and JavaScript to create interactive and visually appealing websites.\r\n\r\nCSS (Cascading Style Sheets)\r\n\r\nCSS complements HTML by providing styling and presentation for web pages. It allows web developers to control the layout, colors, fonts, and other visual aspects of web content. CSS uses selectors to target HTML elements and define their appearance using properties and values. With CSS, you can create responsive and aesthetically pleasing web designs.\r\n\r\nPython\r\n\r\nPython is a high-level, versatile programming language known for its readability and simplicity. It\'s widely used for web development, data analysis, machine learning, scientific computing, and more. Python\'s syntax emphasizes code readability, making it an excellent choice for beginners. It has a vast ecosystem of libraries and frameworks, such as Django and Flask for web development, NumPy for numerical computing, and TensorFlow for machine learning.\r\n\r\nEducation\r\n\r\nEducation is the process of acquiring knowledge, skills, values, and attitudes through various methods, including formal, informal, and non-formal learning. Formal education takes place in institutions like schools and universities and follows a structured curriculum. Informal learning occurs through daily life experiences, while non-formal education includes programs like workshops and vocational training. Education plays a vital role in personal growth, career development, and societal progress. It empowers individuals with the tools they need to understand the world, make informed decisions, and contribute positively to society. Access to quality education is considered a fundamental human right, and efforts are made globally to ensure it\'s accessible to all, regardless of background or circumstances.</p>'),
(2, 'Privacy', '<p>Privacy is a fundamental concept that refers to an individual\'s right to control their personal information and how it is collected, used, shared, and stored by others. It encompasses the idea that individuals should have the autonomy to decide what personal data they share and with whom they share it. Privacy is essential for protecting one\'s personal and sensitive information, maintaining personal boundaries, and ensuring security in various aspects of life. Here is a detailed description of what a particular privacy should entail:\r\n\r\nControl Over Personal Information: Privacy means individuals have the right to control their personal data. They should have the authority to decide what information they share, how it\'s used, and for what purposes. This control extends to the ability to update, correct, or delete their data when necessary.\r\n\r\nInformed Consent: Privacy involves obtaining informed consent from individuals before collecting their personal data. This means that individuals should be aware of what data is being collected, why it\'s being collected, and how it will be used, and they should have the option to consent or decline.\r\n\r\nTransparency: Organizations and entities collecting personal data should be transparent about their data practices. They should clearly communicate their privacy policies, including how data is collected, processed, and stored. Transparency builds trust between individuals and data collectors.\r\n\r\nSecurity: Privacy requires that personal data be safeguarded against unauthorized access, disclosure, or breaches. Adequate security measures, such as encryption, access controls, and regular security audits, should be in place to protect sensitive information.\r\n\r\nData Minimization: Privacy encourages the principle of data minimization, which means collecting only the data that is necessary for a specific purpose and not collecting excessive or irrelevant information.\r\n\r\nPurpose Limitation: Personal data should be used only for the purposes for which it was collected and clearly communicated to individuals. Data should not be repurposed without obtaining additional consent.\r\n\r\nData Portability: Privacy also involves the ability for individuals to access and, if desired, move their personal data from one service or organization to another. This ensures that individuals are not locked into a single data ecosystem.\r\n\r\nAccountability: Organizations and data controllers should be held accountable for their data practices. This includes having data protection officers, conducting impact </p>');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `cat` int(11) NOT NULL,
  `tittle` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `author` varchar(50) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `userid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `cat`, `tittle`, `body`, `image`, `author`, `tags`, `date`, `userid`) VALUES
(7, 1, 'C++ post ', '<p>C++ is a general-purpose programming language that was developed as an enhancement of the C language to include object-oriented paradigm. It is an imperative and a compiled language. \r\n\r\nC++ is a high-level, general-purpose programming language designed for system and application programming. It was developed by Bjarne Stroustrup at Bell Labs in 1983 as an extension of the C programming language. C++ is an object-oriented, multi-paradigm language that supports procedural, functional, and generic programming styles.\r\nOne of the key features of C++ is its ability to support low-level, system-level programming, making it suitable for developing operating systems, device drivers, and other system software. At the same time, C++ also provides a rich set of libraries and features for high-level application programming, making it a popular choice for developing desktop applications, video games, and other complex applications.</p>', 'upload/33.png', 'Sharif', 'C++, C++ Coding, C++Practice', '2023-09-27 18:21:24', 1),
(9, 2, 'PYTHON POST', '<p>Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Its high-level built in data structures, combined with dynamic typing and dynamic binding, make it very attractive for Rapid Application Development, as well as for use as a scripting or glue language to connect existing components together. Python\'s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance. Python supports modules and packages, which encourages program modularity and code reuse. The Python interpreter and the extensive standard library are available in source or binary form without charge for all major platforms, and can be freely distributed.\r\n\r\nOften, programmers fall in love with Python because of the increased productivity it provides. Since there is no compilation step, the edit-test-debug cycle is incredibly fast. Debugging Python programs is easy: a bug or bad input will never cause a segmentation fault. Instead, when the interpreter discovers an error, it raises an exception. When the program doesn\'t catch the exception, the interpreter prints a stack trace. A source level debugger allows inspection of local and global variables, evaluation of arbitrary expressions, setting breakpoints, stepping through the code a line at a time, and so on. The debugger is written in Python itself, testifying to Python\'s introspective power. On the other hand, often the quickest way to debug a program is to add a few print statements to the source: the fast edit-test-debug cycle makes this simple approach very effective..</p>', 'upload/python.png', 'Rishad', 'Python', '2013-01-19 18:27:23', 2),
(10, 4, 'CSS', '<p>Cascading Style Sheets (CSS) is a fundamental technology used in web development to define the presentation and layout of web pages. With CSS, developers can control the appearance of HTML and XML elements, including fonts, colors, margins, padding, and positioning. CSS allows for the separation of content (HTML) from design, making it easier to maintain and update websites as style changes can be applied uniformly across multiple pages.\r\n\r\nSelectors in CSS are patterns used to select and style HTML elements. They can target elements by their type (e.g., p for paragraphs), class (e.g., .button for buttons), ID (e.g., #header for headers), attributes (e.g., input[type=\"text\"] for text input fields), and more. Selectors are a critical part of CSS as they determine which elements will be affected by the defined styles.\r\n\r\nCSS Properties and Values define how elements should be styled. Properties, such as color, font-size, and background-color, determine specific aspects of an element\'s appearance. Each property can take one or more values, which can be keywords (e.g., red, bold), numerical values (e.g., 16px, 1em), or even complex data types like gradients and images.\r\n\r\nCascading and Specificity are essential concepts in CSS. The term \"cascading\" refers to the order in which styles are applied to elements, with later styles often overriding earlier ones. Specificity, on the other hand, determines which style takes precedence when multiple conflicting styles are applied to the same element. Understanding these concepts is crucial for crafting predictable and maintainable stylesheets.\r\n\r\nMedia Queries enable responsive web design by allowing developers to apply different styles based on the characteristics of the user\'s device, such as screen width and orientation. Media queries make it possible to create websites that adapt seamlessly to various screen sizes, from desktop monitors to mobile phones.</p>', 'upload/222.png', 'Miraz', 'css', '2023-11-19 18:28:28', 2),
(12, 8, 'Health Post', '<p>Phasellus nibh justo, sollicitudin at diam in, egestas ultricies nisi. Ut sit amet elit hendrerit, euismod ante eget, consequat justo. In tincidunt magna eget felis venenatis tincidunt. Nunc fermentum sagittis augue, et eleifend orci efficitur vel. Etiam posuere libero erat, ut sollicitudin nulla rutrum ac. Fusce scelerisque ullamcorper sem eget aliquet. Etiam luctus fringilla condimentum. Donec tristique purus sed blandit consectetur. Curabitur sit amet ullamcorper felis. Quisque suscipit ac est eu interdum. Nunc ut lectus eros. Aenean ac justo id tellus vestibulum fermentum ac eget leo.</p>\r\n<p>Nam non volutpat neque. Aenean porta est ut ipsum dapibus, quis varius arcu consectetur. Maecenas elementum ullamcorper justo, in pulvinar lorem ultrices at. Aliquam in ornare nibh, non maximus enim. Aenean placerat, augue quis volutpat condimentum, ligula arcu molestie ex, eget ultricies sem eros nec mi. Proin blandit, sem vel finibus luctus, tortor sem posuere purus, ut tempus metus libero sit amet justo. Aenean vitae enim interdum, sagittis nunc ornare, egestas nunc. Duis lacus felis, rhoncus a venenatis eu, vestibulum non lectus. Aenean varius quis turpis id imperdiet. Sed maximus, velit consequat molestie tristique, risus eros euismod est, ac dignissim nibh leo eu nisi. Suspendisse potenti. Cras vitae risus consectetur, commodo elit a, interdum urna. Nulla elementum neque eget risus pretium facilisis. Sed iaculis non mi eu ultricies. Duis nec porttitor nisl. Nulla facilisi.</p>', 'upload/hel.png', 'Sharif', 'health', '2023-10-19 18:33:34', 0),
(13, 6, 'Cricket.', '<p>Bangladesh cricket refers to the sport of cricket in the country of Bangladesh. Cricket is one of the most popular sports in Bangladesh and has a significant following among its people. Here are some key points about cricket in Bangladesh:\r\n\r\nHistory: Cricket was introduced to Bangladesh during the British colonial period, and it gained popularity over the years. After gaining independence in 1971, Bangladesh began to develop its cricket infrastructure.\r\n\r\nBangladesh Cricket Board (BCB): The BCB is the governing body for cricket in Bangladesh. It oversees the organization of domestic and international cricket matches, development programs, and the management of the national cricket team.\r\n\r\nNational Team: The Bangladesh national cricket team is known as the \"Tigers.\" They compete in all three formats of the game: Test matches, One-Day Internationals (ODIs), and Twenty20 Internationals (T20Is). The team has made significant progress in international cricket, with notable victories over top-ranked teams.</p>', 'upload/cri.jpg', 'Abir', 'live, cricket, sports', '2023-11-19 18:35:30', 2),
(14, 5, 'Education Post.', '<p>Education is a systematic process of acquiring knowledge, skills, values, and attitudes through instruction, study, or experience. It is a fundamental aspect of human development and plays a crucial role in personal growth and societal progress. Education can take various forms, including formal education, informal learning, and non-formal education, and it can occur at different stages of an individual\'s life.\r\n\r\nHere are some key points about education:\r\n\r\nFormal Education: Formal education refers to structured, organized learning that typically takes place in educational institutions such as schools, colleges, and universities. It follows a curriculum and is often guided by teachers or instructors.\r\n\r\nInformal Learning: Informal learning occurs through daily life experiences, interactions with others, and self-directed exploration. It is often unplanned and can be just as valuable as formal education in acquiring practical skills and knowledge.\r\n\r\nNon-Formal Education: Non-formal education is organized, but it doesn\'t follow the traditional school-based model. It includes programs like workshops, adult education classes, vocational training, and community-based learning initiatives.\r\n\r\nLife-Long Learning: Education is a life-long process that continues beyond formal schooling. Lifelong learning encourages individuals to acquire new skills and knowledge throughout their lives, adapting to changing circumstances and staying relevant in a rapidly evolving world.\r\n\r\nGoals of Education: The goals of education can vary widely, but they often include the development of critical thinking, problem-solving abilities, communication skills, cultural awareness, and character development. Education also prepares individuals for careers and responsible citizenship.\r\n\r\nAccess to Education: Access to quality education is a fundamental human right. Efforts are made globally to ensure that education is accessible to all, regardless of gender, socioeconomic status, or geographic location.\r\n\r\nTechnology and Education: Technology has transformed the way education is delivered and accessed. Online learning, e-learning platforms, and digital resources have expanded educational opportunities and made learning more flexible and accessible.\r\n\r\nEducation Systems: Different countries have varying education systems, structures, and curricula. These systems reflect cultural, social, and economic priorities and may include public, private, and alternative forms of education.</p>', 'upload/ed.png', 'Jabed', 'education', '2023-09-19 18:37:20', 0),
(15, 3, 'HTML Post ', '<p>HTML, which stands for Hypertext Markup Language, is the standard markup language used to create web pages. It is a fundamental technology used in web development and is essential for structuring the content on the World Wide Web. HTML allows developers to define the structure and elements of a web page, including text, images, links, forms, and more.\r\n\r\nKey points about HTML include:\r\n\r\nMarkup Language: HTML is a markup language, not a programming language. It consists of a set of tags and attributes that are used to describe the structure of content within a web page. These tags provide instructions to web browsers on how to display the content.\r\n\r\nElements and Tags: HTML documents are constructed using HTML elements, which are enclosed by HTML tags. For example, the <p> tag is used to create paragraphs, and the <img> tag is used for images. Elements can have attributes that provide additional information about them.\r\n\r\nDocument Structure: An HTML document typically follows a specific structure. It starts with a <!DOCTYPE> declaration that defines the document type and version. The document is enclosed within an <html> element, with the content divided into a <head> section (containing meta-information, scripts, and styles) and a <body> section (containing visible content).\r\n\r\nHyperlinks: HTML allows the creation of hyperlinks using the <a> (anchor) element. Hyperlinks enable users to navigate between web pages by clicking on text or images.\r\n\r\nLists: HTML provides elements for creating ordered lists <ol>, unordered lists <ul>, and definition lists <dl>, which are commonly used for organizing and structuring information.</p>', 'upload/html.png', 'Samim', 'html', '2023-02-01 18:56:07', 3);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `title`, `image`) VALUES
(1, 'Slide number 1', 'upload/slider/99.jpg'),
(2, 'Slide number 2', 'upload/slider/88.jpg'),
(3, 'Slide number 3', 'upload/slider/55.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_social`
--

CREATE TABLE `tbl_social` (
  `id` int(11) NOT NULL,
  `fb` varchar(255) NOT NULL,
  `tw` varchar(255) NOT NULL,
  `ln` varchar(255) NOT NULL,
  `gp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_social`
--

INSERT INTO `tbl_social` (`id`, `fb`, `tw`, `ln`, `gp`) VALUES
(1, 'https://www.facebook.com/profile.php?id=100032086304692', 'http://twitter.com', 'http://linkedin.com', 'http://google.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_theme`
--

CREATE TABLE `tbl_theme` (
  `id` int(11) NOT NULL,
  `theme` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_theme`
--

INSERT INTO `tbl_theme` (`id`, `theme`) VALUES
(1, 'green');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `details` varchar(255) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `name`, `username`, `password`, `email`, `details`, `role`) VALUES
(1, 'Shariful', 'admin', '698d51a19d8a121ce581499d7b701668', 'sarifcse159@gmail.com', '<p>Hey! Hey? i am sharif from Bangladesh.</p>', 0),
(2, 'Reshad', 'Author', '698d51a19d8a121ce581499d7b701668', 'reshed', '<p>Hey! I am reshad khan from Bangladesh</p>', 1),
(3, 'Abir', 'Editor', '202cb962ac59075b964b07152d234b70', 'abir@gmail.com', '<p>Hey! I am abir from Bangladesh</p>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `title_slogan`
--

CREATE TABLE `title_slogan` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `title_slogan`
--

INSERT INTO `title_slogan` (`id`, `title`, `slogan`, `logo`) VALUES
(1, 'Personal Blog', 'learn here c++,java,python,html', 'upload/logo.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_social`
--
ALTER TABLE `tbl_social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `title_slogan`
--
ALTER TABLE `title_slogan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_footer`
--
ALTER TABLE `tbl_footer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_social`
--
ALTER TABLE `tbl_social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_theme`
--
ALTER TABLE `tbl_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `title_slogan`
--
ALTER TABLE `title_slogan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
