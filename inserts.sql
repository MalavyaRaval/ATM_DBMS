-- Script name: inserts.sql
-- Author:      Malavya Raval
-- Purpose:     Insert sample data to test the integrity of this database system.


-- the database used to insert the data into.

USE ATM;
-- TABLE `User`

INSERT INTO User (User_id, User_name, dob) VALUES (415, 'Malavya', '1971-01-01 01:02:03'), (942, 'Bhumi', '1971-02-02 02:02:02'), (657, 'Utkarsh', '1998-04-29 02:02:02');


-- TABLE `Bank`

INSERT INTO Bank (Bank_id, Bank_name, Location) VALUES (23, 'State Bank', 'San Francisco '), (25, 'HDFC', 'Sunnyvale'), (27, 'ICICI', 'Menlo');


-- TABLE `ATM`

INSERT INTO ATM (ATM_id, Address, Bank) VALUES (123, 'San Francisco ', 23 ), (456, 'Sunnyvale',  25), (789, 'Menlo', 27);


-- TABLE `Account`

INSERT INTO Account (Accounts_id, Bank, User, time, Location) VALUES (111, 23 ,415,'2022-01-11 01:02:03', 'San Francisco '), (222,25,942, '2023-06-10 11:02:03', 'Sunnyvale'), (333,27,657,'2020-08-01 11:12:53', 'Menlo');


-- TABLE `Transactions`

INSERT INTO Transactions (Transactions_id, User, time) VALUES (321, 415, '2012-01-01 01:02:03' ), (654, 942,  '2021-01-01 01:02:03'), (987, '657', '2016-01-01 01:02:03');


-- TABLE `Maintenance`

INSERT INTO Maintenance (Maintenance_id, Bank, ATM, employee, Location, time) VALUES (132,23,123,147, 'San Francisco ', '2011-01-01 01:02:03'), (465,25,456,258, 'Sunnyvale', '2021-01-01 01:02:03'), (798,27,789,369, 'Menlo', '2002-01-01 01:02:03');


-- TABLE `Reports`

INSERT INTO Reports (Report_id, Bank, ATM, time) VALUES (168, 23, 123, '2021-01-01 01:02:03'), (448, 25, 456, '2023-01-01 01:02:03'), (256,27, 789, '2023-01-11 01:12:23');


-- TABLE `Customer_Service`

INSERT INTO Customer_Service (Customer_Service_id, Bank, User, time) VALUES (168, 23, 415, '2022-01-01 01:02:03'), (448, 25, 942, '2017-01-01 01:02:03'), (256,27, 657, '2010-01-11 01:12:23');


-- TABLE `Security_Code`

INSERT INTO Security_Code (Security_Code_id, Accounts, User) VALUES (101, 111, 415), (202, 222, 942), (303, 333, 657);


-- TABLE `Cash_Dispenser`

INSERT INTO Cash_Dispenser (Cash_Dispenser_id, Bank, ATM, time) VALUES (168, 23, 123, '2011-01-01 01:02:03'), (448, 25, 456, '2021-01-01 01:02:03'), (256,27, 789, '2012-01-11 01:12:23');


-- TABLE `Depository_Modules`

INSERT INTO Depository_Modules (Depository_Modules_id, Bank, ATM, Maintenance) VALUES (168, 23, 123, 132), (448, 25, 456, 465), (256,27, 789, 798);


-- TABLE `Card_Reader`

INSERT INTO Card_Reader (Card_Reader_id, Bank, ATM, Maintenance) VALUES (100, 23, 123, 132), (200, 25, 456, 465), (300,27, 789, 798);


-- TABLE `Receipt_Printers`

INSERT INTO Receipt_Printers (Receipt_Printers_id, Receipt_count, Bank, ATM, Maintenance) VALUES (999, 001, 23, 123, 132), (888, 002, 25, 456, 465), (777, 003,27, 789, 798);


-- TABLE `Region`

INSERT INTO Region (Region_id, ATM, Location) VALUES (94132, 123,'San Francisco'), (95070, 456,'Sunnyvale'), (95101, 789,'San Jose');


-- TABLE `Employee`

INSERT INTO Employee (Employee_id, Bank, name, Location, dob, manager) VALUES (12321, 23,'Ishika','San Francisco', '1981-01-01 01:02:03', 0), (45654, 25,'Ashmitha','Sunnyvale', '1991-01-01 11:02:03', 0), (78987, 27,'Sumalya','San Jose', '1991-11-01 01:12:03', 1);


-- TABLE `Roles`

INSERT INTO Roles (Roles_id, Bank, Employee, Assigned) VALUES (951, 23, 12321, 'accountant'), (753, 25,45654,'Manager'), (159, 27, 78987,'CEO');



-- TABLE `View_Balance`

INSERT INTO View_Balance (View_id, Account, Bank, time) VALUES (1230, 111, 23, '2021-01-01 01:02:03'), (4560, 222, 25, '2023-01-01 01:02:03'), (7890,333, 27, '2022-01-11 01:12:23');


-- TABLE `Access`

INSERT INTO Access (Access_id, User, ATM_id, time) VALUES (2312, 415, 123, '2021-01-01 01:02:03'), (2509, 942, 456, '2023-01-01 01:02:03'), (2904,657, 789, '2022-01-11 01:12:23');


-- TABLE `Personal_Details`

INSERT INTO Personal_Details (Personal_Details_id, Name, dob, sur_name, middle_name) VALUES (10, 'Pramod', '2021-01-01 01:02:03', 'Piyush', 'Patel'), (20, 'Pavan', '2023-01-01 01:02:03','Manish','Shah'), (30,'Arjun', '2022-01-11 01:12:23','Sunil','Nair');


-- TABLE `Feedback`

INSERT INTO Feedback (feedback_id, User, Account) VALUES (99,415,111), (98,942,222), (97,657,333);


-- TABLE `Payment`

INSERT INTO Payment (Payment_id, Employee, bank) VALUES (999,12321,23), (998,45654,25), (997,78987,27);


-- TABLE `Manager`

INSERT INTO Manager (Manager_id, managing, Bank, Employee) VALUES (2123,0,23, 12321), (2456,1,25, 45654), (2789,0,27, 78987);

-- TABLE `Monitor`

INSERT INTO Monitor (Check_id, Maintenainance, Card_Reader, Depository_Module) VALUES (999,132,100,168), (998,465,200, 448), (997,798,300,256);
