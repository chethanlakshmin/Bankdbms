SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*branch table*/
CREATE TABLE `branch` (
  `branchId` int(11) NOT NULL,
  `branchNo` varchar(111) NOT NULL,
  `branchName` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `branch` (`branchId`, `branchNo`, `branchName`) VALUES
(1, '100101', 'mangalore'),
(2, '100102', 'bangalore');

/*feedback table*/

CREATE TABLE `feedback` (
  `feedbackId` int(11) NOT NULL,
  `message` text NOT NULL,
  `userId` double NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `feedback` (`feedbackId`, `message`, `userId`, `date`) VALUES
(1, 'This is testing message to admin or manager by facebook', 1, '2021-12-15 04:30:48'),
(3, 'This is testing message to admin or manager by facebook', 2, '2021-12-15 04:30:48'),
(4, 'this is help card for admin', 1, '2021-12-17 06:45:20');


/*login table*/


CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `type` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `login` (`id`, `email`, `password`, `type`, `date`) VALUES
(1, 'kamalesh@cashier.com', 'kamalesh', 'cashier', '2021-12-15 04:36:27'),
(2, 'chethan@manager.com', 'chethan', 'manager', '2021-12-15 04:36:27'),
(3, 'kamalesh12@gmail.com', 'kamalesh12', 'type', '2021-12-16 07:13:12'),
(4, 'varun@gmail.com', 'varun', 'type', '2021-12-16 07:13:18'),
(6, 'chethan12@cashier.com', 'chethan12', 'cashier', '2021-12-16 07:14:47');

/*notice table*/

CREATE TABLE `notice` (
  `id` int(11) NOT NULL,
  `userId` varchar(111) NOT NULL,
  `notice` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `notice` (`id`, `userId`, `notice`, `date`) VALUES
(1, '1', 'Dear Customer! <br> OUr privacy policy is changed for account information get new prospectus from your nearest branch', '2021-12-14 13:11:46'),
(6, '2', 'Dear Ali,<br>\r\nOur privacy policy has been changed please visit nearest <kbd> echo KCB </kbd> branch for new prospectus.', '2021-12-16 06:29:23');

/*otheraccount table*/

CREATE TABLE `otheraccounts` (
  `id` int(11) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `bankName` varchar(111) NOT NULL,
  `holderName` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `otheraccounts` (`id`, `accountNo`, `bankName`, `holderName`, `balance`, `date`) VALUES
(1, '12001122', 'SBI', 'Vijay', '40800', '2021-12-14 11:55:07'),
(2, '12001123', 'KCB', 'Ram', '71000', '2021-12-14 11:55:07'),
(3, '12001124', 'KCB', 'Raj', '71000', '2021-12-14 11:55:07');

/*transaction table*/

CREATE TABLE `transaction` (
  `transactionId` int(11) NOT NULL,
  `action` varchar(111) NOT NULL,
  `credit` varchar(111) NOT NULL,
  `debit` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `beneId` varchar(111) NOT NULL,
  `other` varchar(111) NOT NULL,
  `userId` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `transaction` (`transactionId`, `action`, `credit`, `debit`, `balance`, `beneId`, `other`, `userId`, `date`) VALUES
(4, 'transfer', '', '200', '', '', '12001122', 1, '2021-12-14 12:33:40'),
(5, 'transfer', '', '200', '', '', '10054777', 1, '2021-12-14 12:56:48'),
(6, 'transfer', '', '333', '', '', '10054777', 1, '2021-12-14 12:57:20'),
(7, 'transfer', '', '222', '', '', '10054777', 1, '2021-12-14 12:58:19'),
(8, 'transfer', '', '333', '', '', '10054777', 1, '2021-12-14 13:00:23'),
(16, 'withdraw', '', '100', '', '', '23423', 1, '2021-12-15 08:31:59'),
(17, 'deposit', '1200', '', '', '', '234232', 1, '2021-12-15 08:32:17'),
(18, 'transfer', '', '467', '', '', '12001122', 1, '2021-12-17 06:44:48'),
(22, 'deposit', '1200', '', '', '', '32424', 2, '2021-12-17 06:56:29'),
(23, 'withdraw', '', '12', '', '', '23423', 2, '2021-12-17 06:59:02'),
(24, 'deposit', '12', '', '', '', '21321', 2, '2021-12-17 06:59:20'),
(25, 'transfer', '', '1200', '', '', '10054777', 1, '2021-12-17 07:01:37'),
(26, 'deposit', '600', '', '', '', '342342', 2, '2021-12-17 07:04:39'),
(27, 'withdraw', '', '1012', '', '', '23423', 2, '2021-12-17 07:04:58');

/*user table*/

CREATE TABLE `useraccounts` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `name` varchar(111) NOT NULL,
  `balance` varchar(111) NOT NULL,
  `cnic` varchar(111) NOT NULL,
  `number` varchar(111) NOT NULL,
  `city` varchar(111) NOT NULL,
  `address` varchar(111) NOT NULL,
  `source` varchar(111) NOT NULL,
  `accountNo` varchar(111) NOT NULL,
  `branch` varchar(111) NOT NULL,
  `accountType` varchar(111) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `useraccounts` (`id`, `email`, `password`, `name`, `balance`, `cnic`, `number`, `city`, `address`, `source`, `accountNo`, `branch`, `accountType`, `date`) VALUES
(1, 'pavan1@gmail.com', 'pavan1', 'Pavan', '9800', '3210375555426', '7892958941', 'mangalore', 'Some where in karnataka', 'Student', '1005469', '1', 'Current', '2021-12-14 05:50:06'),
(2, 'rahul1@gmail.com', 'rahul1', 'Rahul', '16000', '3210375555343', '9482107388', 'udupi', 'Some where in karnataka', 'Student', '10054777', '1', 'Saving', '2021-12-14 04:50:06'),
(3, 'madesha1@gmail.com', 'madesha1', 'Adarsh', '234234', '3240338834902', '7090746619', 'coorg', 'Some where in karnataka', 'Protesters', '1513410739', '1', 'saving', '2021-12-16 07:52:40'),
(7, 'suhan@gmail.com', 'suhan', 'Suhan', '12121', '3240338834902', '9964259148', 'pakshikere', 'Some where in karnataka', 'Student', '1513410837', '1', 'current', '2021-12-16 07:54:18');


/*add branch*/
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branchId`);

/*add feedback*/
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feedbackId`);

/*add login*/
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

/*add notices*/
ALTER TABLE `notice`
  ADD PRIMARY KEY (`id`);

/*add otheraccounts*/
ALTER TABLE `otheraccounts`
  ADD PRIMARY KEY (`id`);
/*add transaction*/
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionId`);
/*add useraccounts*/
ALTER TABLE `useraccounts`
  ADD PRIMARY KEY (`id`);

/*modify branch*/
ALTER TABLE `branch`
  MODIFY `branchId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

/*modify feedback*/
ALTER TABLE `feedback`
  MODIFY `feedbackId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

/*modify login*/
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*modify notice*/
ALTER TABLE `notice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

/*modify otheraccounts*/
ALTER TABLE `otheraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

/*modify transaction*/
ALTER TABLE `transaction`
  MODIFY `transactionId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
  
/*modify useraccounts*/
ALTER TABLE `useraccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
