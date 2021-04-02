-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2021 at 01:24 AM
-- Server version: 8.0.23
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

CREATE DATABASE `bookstore`;

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
                           `addressID` int NOT NULL,
                           `street` varchar(45) DEFAULT NULL,
                           `state` varchar(45) DEFAULT NULL,
                           `zip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
    `adminID` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
                        `isbn` bigint NOT NULL,
                        `category` varchar(45) DEFAULT NULL,
                        `authorName` varchar(45) DEFAULT NULL,
                        `title` varchar(64) CHARACTER SET utf8mb4 DEFAULT NULL,
                        `coverPic` varchar(45) DEFAULT NULL,
                        `edition` int DEFAULT NULL,
                        `publisher` varchar(45) DEFAULT NULL,
                        `publicationYear` date DEFAULT NULL,
                        `quantityInStock` int DEFAULT NULL,
                        `minimumThresh` int DEFAULT NULL,
                        `buyPrice` float DEFAULT NULL,
                        `sellPrice` float DEFAULT NULL,
                        `orderID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`isbn`, `category`, `authorName`, `title`, `coverPic`, `edition`, `publisher`, `publicationYear`, `quantityInStock`, `minimumThresh`, `buyPrice`, `sellPrice`, `orderID`) VALUES
(297829190, 'Nonfiction', 'Lansing, Alfred', 'Endurance: Shackletons Incredible Voyage to the Antarctic', NULL, 1, 'Weidenfeld and Nicolson', '1959-01-07', 7, 1, 6.99, 10.99, NULL),
(978006055, 'Nonfiction', 'Graham, Benjamin', 'Intelligent Investor, The', NULL, 4, 'HarperCollins', '1973-03-21', 15, 2, 7.99, 22.99, NULL),
(978037572, 'Nonfiction', 'Larson, Erik', 'Devil in the White City, The', NULL, 1, 'Vintage', '2002-10-16', 20, 5, 7.99, 16, NULL),
(978043906, 'Fiction', 'Rowling, J.K.', 'Harry Potter and the Chamber of Secrets', NULL, 1, 'Bloomsbury', '1998-07-02', 50, 10, 6.99, 20.99, NULL),
(978043913, 'Fiction', 'Rowling, J.K.', 'Harry Potter and the Prisoner of Azkaban', NULL, 1, 'Bloomsbury', '1999-07-08', 50, 10, 6.99, 20.99, NULL),
(978043935, 'Fiction', 'Rowling, J.K.', 'Harry Potter and the Order of the Phoenix', NULL, 1, 'Bloomsbury', '2003-06-21', 50, 10, 7.99, 24.99, NULL),
(978045153, 'Fiction', 'Solzhenitsyn, Alexander', 'One Day in the Life of Ivan Denisovich', NULL, 2, 'Signet', '2012-03-05', 50, 10, 2, 5.95, NULL),
(978054513, 'Fiction', 'Rowling, J.K.', 'Harry Potter and the Deathly Hallows', NULL, 1, 'Bloomsbury', '2007-07-21', 50, 10, 7.99, 24.99, NULL),
(978059035, 'Fiction', 'Rowling, J.K.', 'Harry Potter and the Sorcerers Stone', NULL, 1, 'Bloomsbury', '1997-06-26', 50, 10, 6.99, 20.99, NULL),
(978067940, 'Memoir', 'Spiegelman, Art', 'Maus: The Complete Edition', NULL, 3, 'Pantheon', '1997-08-18', 25, 5, 10, 35, NULL),
(978080271, 'Nonfiction', 'Standage, Tom', 'History of the World in 6 Glasses, A', NULL, 1, 'Bloomsbury', '2005-05-21', 10, 1, 7.99, 15.95, NULL),
(978133829, 'Fiction', 'Rowling, J.K.', 'Harry Potter and the Half-Blood Prince', NULL, 1, 'Bloomsbury', '2005-07-16', 50, 10, 7.99, 24.99, NULL),
(978140005, 'Nonfiction', 'Skloot, Rebecca', 'Immortal Life of Henrietta Lacks, The', NULL, 1, 'Broadway', '2010-03-29', 5, 1, 7.99, 16, NULL),
(1760980900, 'Fiction', 'Campisi, Megan', 'Sin Eater', NULL, 1, 'Pan Macmillan UK', '2020-03-31', 15, 3, 7.99, 23.2, NULL),
(1785659782, 'Fantasy', 'Henry, Christina', 'Girl in Red, The', NULL, 1, 'Titan Books', '2019-06-18', 20, 5, 4.99, 11.99, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
                            `customerID` int NOT NULL,
                            `cartContents` varchar(256) DEFAULT NULL,
                            `addressID` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
                         `orderID` int NOT NULL,
                         `custID` int DEFAULT NULL,
                         `payNumber` int DEFAULT NULL,
                         `paymentNumber` int DEFAULT NULL,
                         `orderDate` date DEFAULT NULL,
                         `orderTime` time DEFAULT NULL,
                         `orderStatus` varchar(45) DEFAULT NULL,
                         `totalPrice` float DEFAULT NULL,
                         `orderedBook` varchar(45) DEFAULT NULL,
                         `promoCode` int DEFAULT NULL,
                         `orderAddress` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `paymentmethod`
--

CREATE TABLE `paymentmethod` (
                                 `cardNum` int NOT NULL,
                                 `ownerID` int DEFAULT NULL,
                                 `cardType` varchar(45) DEFAULT NULL,
                                 `expirationDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
                             `promoCode` int NOT NULL,
                             `startDate` date DEFAULT NULL,
                             `percentage` float DEFAULT NULL,
                             `expireDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
                         `userID` int NOT NULL,
                         `firstName` varchar(45) DEFAULT NULL,
                         `lastName` varchar(45) DEFAULT NULL,
                         `password` varchar(45) DEFAULT NULL,
                         `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userID`, `firstName`, `lastName`, `password`, `email`) VALUES
(1, 'James', 'Connner', 'thisismypassword', 'jcon94@uga.edu'),
(2, 'Jon', 'Snow', 'blankstare', 'kingindanorf@idunwannit.com'),
(3, 'third', 'user', 'ilike3', 'big3@three.org'),
(4, 'Alastor', 'Moody', 'imactuallybartycrouch', 'bigeye@hogwarts.edu'),
(5, 'test', 'user', 'password', 'outofideas@dumb'),
(6, 'autoID', 'test', 'pass', 'please@work');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
    ADD PRIMARY KEY (`addressID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
    ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
    ADD PRIMARY KEY (`isbn`),
    ADD KEY `orderID_idx` (`orderID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
    ADD PRIMARY KEY (`customerID`),
    ADD KEY `addressID_idx` (`addressID`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
    ADD PRIMARY KEY (`orderID`),
    ADD KEY `custID_idx` (`custID`),
    ADD KEY `promoCode_idx` (`promoCode`),
    ADD KEY `payNumber_idx` (`payNumber`),
    ADD KEY `orderAddr_idx` (`orderAddress`);

--
-- Indexes for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
    ADD PRIMARY KEY (`cardNum`),
    ADD KEY `custID_idx` (`ownerID`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
    ADD PRIMARY KEY (`promoCode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
    ADD PRIMARY KEY (`userID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
    ADD CONSTRAINT `adminId` FOREIGN KEY (`adminID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `book`
--
ALTER TABLE `book`
    ADD CONSTRAINT `orderID` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
    ADD CONSTRAINT `addressID` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`),
    ADD CONSTRAINT `customerID` FOREIGN KEY (`customerID`) REFERENCES `users` (`userID`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
    ADD CONSTRAINT `custID` FOREIGN KEY (`custID`) REFERENCES `customer` (`customerID`),
    ADD CONSTRAINT `orderAddr` FOREIGN KEY (`orderAddress`) REFERENCES `customer` (`addressID`),
    ADD CONSTRAINT `payNumber` FOREIGN KEY (`payNumber`) REFERENCES `paymentmethod` (`cardNum`),
    ADD CONSTRAINT `promoCode` FOREIGN KEY (`promoCode`) REFERENCES `promotion` (`promoCode`);

--
-- Constraints for table `paymentmethod`
--
ALTER TABLE `paymentmethod`
    ADD CONSTRAINT `ownerID` FOREIGN KEY (`ownerID`) REFERENCES `customer` (`customerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
