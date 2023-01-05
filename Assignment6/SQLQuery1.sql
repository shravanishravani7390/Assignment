CREATE TABLE REGIONS(
    REGION_ID INT PRIMARY KEY,
    REGION_NAME VARCHAR(50) NOT NULL
);

INSERT INTO REGIONS(REGION_ID, REGION_NAME) VALUES
(1, 'Europe'),
(2, 'Americas'),
(3, 'Asia'),
(4, 'Middle East and Africa');

CREATE TABLE COUNTRIES (
    COUNTRY_ID  VARCHAR(2) PRIMARY KEY,
    COUNTRY_NAME    VARCHAR(100) NOT NULL,
    REGION_ID INT,
    FOREIGN KEY (REGION_ID) REFERENCES REGIONS(REGION_ID)
);

INSERT INTO COUNTRIES VALUES
('IT', 'Italy', 1),
('JP', 'Japan', 3),
('US', 'United States of America', 2),
('CA', 'Canada', 2),
('CN', 'China', 3),
('IN', 'India', 3),
('AU', 'Australia', 3),
('ZW', 'Zimbabwe', 4),
('SG', 'Singapore', 3),
('UK', 'United Kingdom', 1),
('FR', 'France', 1),
('DE', 'Germany', 1),
('ZM', 'Zambia', 4),
('EG', 'Egypt', 4),
('BR', 'Brazil', 2),
('CH', 'Switzerland', 1),
('NL', 'Netherlands', 1),
('MX', 'Mexico', 2),
('KW', 'Kuwait', 4),
('IL', 'Israel', 4),
('DK', 'Denmark', 1),
('HK', 'HongKong', 3),
('NG', 'Nigeria', 4),
('AR', 'Argentina', 2),
('BE', 'Belgium', 1);

CREATE TABLE LOCATIONS(
LOCATION_ID INT PRIMARY KEY,
STREET_ADDRESS VARCHAR(100),
POSTAL_CODE VARCHAR(10),
CITY VARCHAR(50),
STATE_PROVINCE VARCHAR(50),
COUNTRY_ID VARCHAR(2),
FOREIGN KEY(COUNTRY_ID) REFERENCES COUNTRIES(COUNTRY_ID)
);

INSERT INTO LOCATIONS VALUES
(1000,'1297 Via Cola di Rie', '989', 'Roma', NULL, 'IT'),
(1100,'93091 Calle della Testa', '10934', 'Venice', NULL, 'IT'),
(1200,'2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
(1300,'9450 Kamiya-cho', '6823', 'Hiroshima', NULL, 'JP'),
(1400,'2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
(1500,'2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
(1600,'2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
(1700,'2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
(1800,'147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
(1900,'6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
(2000,'40-5-12 Laogianggen', '190518', 'Beijing', NULL, 'CN'),
(2100,'1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
(2200,'12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
(2300,'198 Clementi North', '540198', 'Singapore', NULL, 'SG'),
(2400,'8204 Arthur St', NULL, 'London', NULL, 'UK'),
(2500,'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'),
(2600,'9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 'UK'),
(2700,'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
(2800,'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
(2900,'20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
(3000,'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
(3100,'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
(3200,'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal', 'MX');

CREATE TABLE DEPARTMENTS(
    DEPARTMENT_ID INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(100) NOT NULL,
    MANAGER_ID INT,
    LOCATION_ID INT,
    FOREIGN KEY(LOCATION_ID) REFERENCES LOCATIONS(LOCATION_ID)
);

INSERT INTO DEPARTMENTS VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', 121, 1500),
(60, 'IT', 103, 1400),
(70, 'Public Relations', 204, 2700),
(80, 'Sales', 145, 2500),
(90, 'Executive', 100, 1700),
(100, 'Finance', 108, 1700),
(110, 'Accounting', 205, 1700),
(120, 'Treasury',  NULL, 1700),
(130, 'Corporate Tax',  NULL, 1700),
(140, 'Control And Credit',  NULL, 1700),
(150, 'Shareholder Services',  NULL, 1700),
(160, 'Benefits',  NULL, 1700),
(170, 'Manufacturing',  NULL, 1700),
(180, 'Construction',  NULL, 1700),
(190, 'Contracting',  NULL, 1700),
(200, 'Operations',  NULL, 1700),
(210, 'IT Support',  NULL, 1700),
(220, 'NOC',  NULL, 1700),
(230, 'IT Helpdesk',  NULL, 1700),
(240, 'Government Sales',  NULL, 1700),
(250, 'Retail Sales',  NULL, 1700),
(260, 'Recruiting',  NULL, 1700),
(270, 'Payroll',  NULL, 1700);

CREATE TABLE JOBS(
    JOB_ID VARCHAR(25) PRIMARY KEY,
    JOB_TITLE VARCHAR(255) NOT NULL,
    MIN_SALARY money,
    MAX_SALARY money
);

INSERT INTO JOBS VALUES 
('AD_PRES', 'President', 20000, 40000),
('AD_VP', 'Administration Vice President', 15000, 30000),
('AD_ASST', 'Administration Assistant', 3000, 6000),
('FI_MGR', 'Finance Manager', 8200, 16000),
('FI_ACCOUNT', 'Accountant', 4200, 9000),
('AC_MGR', 'Accounting Manager', 8200, 16000),
('AC_ACCOUNT', 'Public Accountant', 4200, 9000),
('SA_MAN', 'Sales Manager', 10000, 20000),
('SA_REP', 'Sales Representative', 6000, 12000),
('PU_MAN', 'Purchasing Manager', 8000, 15000),
('PU_CLERK', 'Purchasing Clerk', 2500, 5500),
('ST_MAN', 'Stock Manager', 5500, 8500),
('ST_CLERK', 'Stock Clerk', 2000, 5000),
('SH_CLERK', 'Shipping Clerk', 2500, 5500),
('IT_PROG', 'Programmer', 4000, 10000),
('MK_MAN', 'Marketing Manager', 9000, 15000),
('MK_REP', 'Marketing Representative', 4000, 9000),
('HR_REP', 'Human Resources Representative', 4000, 9000),
('PR_REP', 'Public Relations Representative', 4500, 10500);

CREATE TABLE EMPLOYEES(
    EMPLOYEE_ID INT PRIMARY KEY,
    FIRSTNAME VARCHAR(50),
    LASTNAME VARCHAR(50),
    EMAIL VARCHAR(150),
    PHONE_NUMBER VARCHAR(50),
    HIRE_DATE DATE,
    JOB_ID VARCHAR(25),
    SALARY money,
    COMMISSION_PCT money,
    MANAGER_ID INT,
    DEPARTMENT_ID INT,
    FOREIGN KEY(MANAGER_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
    FOREIGN KEY(DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID)
);

INSERT INTO EMPLOYEES VALUES
(100, 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', 24000,  NULL,  NULL, 90),
(101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1989-09-21', 'AD_VP', 17000,  NULL, 100, 90),
(102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1993-01-13', 'AD_VP', 17000,  NULL, 100, 90),
(103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1990-01-03', 'IT_PROG', 9000,  NULL, 102, 60),
(104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1991-05-21', 'IT_PROG', 6000,  NULL, 103, 60),
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1997-06-25', 'IT_PROG', 4800,  NULL, 103, 60),
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1998-02-05', 'IT_PROG', 4800,  NULL, 103, 60),
(107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1999-02-07', 'IT_PROG', 4200,  NULL, 103, 60),
(108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1994-08-17', 'FI_MGR', 12000,  NULL, 101, 100),
(109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1994-08-16', 'FI_ACCOUNT', 9000,  NULL, 108, 100),
(110, 'John', 'Chen', 'JCHEN', '515.124.4269', '1997-09-28', 'FI_ACCOUNT', 8200,  NULL, 108, 100),
(111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1997-09-30', 'FI_ACCOUNT', 7700,  NULL, 108, 100),
(112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1998-04-07', 'FI_ACCOUNT', 7800,  NULL, 108, 100),
(113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1999-12-07', 'FI_ACCOUNT', 6900,  NULL, 108, 100),
(114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1994-12-07', 'PU_MAN', 11000,  NULL, 100, 30),
(115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1995-05-18', 'PU_CLERK', 3100,  NULL, 114, 30),
(116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1997-12-24', 'PU_CLERK', 2900,  NULL, 114, 30),
(117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1997-07-24', 'PU_CLERK', 2800,  NULL, 114, 30),
(118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1998-11-15', 'PU_CLERK', 2600,  NULL, 114, 30),
(119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1999-08-10', 'PU_CLERK', 2500,  NULL, 114, 30),
(120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1996-07-18', 'ST_MAN', 8000,  NULL, 100, 50),
(121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1997-04-10', 'ST_MAN', 8200,  NULL, 100, 50),
(122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1995-05-01', 'ST_MAN', 7900,  NULL, 100, 50),
(123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1997-10-10', 'ST_MAN', 6500,  NULL, 100, 50),
(124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1999-11-16', 'ST_MAN', 5800,  NULL, 100, 50),
(125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1997-07-16', 'ST_CLERK', 3200,  NULL, 120, 50),
(126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1998-09-28', 'ST_CLERK', 2700,  NULL, 120, 50),
(127, 'James', 'Landry', 'JLANDRY', '650.124.1334', '1999-01-14', 'ST_CLERK', 2400,  NULL, 120, 50),
(128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '2000-04-08', 'ST_CLERK', 2200,  NULL, 120, 50),
(129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1997-08-20', 'ST_CLERK', 3300,  NULL, 121, 50),
(130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1997-10-30', 'ST_CLERK', 2800,  NULL, 121, 50),
(131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1997-02-16', 'ST_CLERK', 2500,  NULL, 121, 50),
(132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1999-04-10', 'ST_CLERK', 2100,  NULL, 121, 50),
(133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1996-06-14', 'ST_CLERK', 3300,  NULL, 122, 50),
(134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1998-08-26', 'ST_CLERK', 2900,  NULL, 122, 50),
(135, 'Ki', 'Gee', 'KGEE', '650.127.1734', '1999-12-12', 'ST_CLERK', 2400,  NULL, 122, 50),
(136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '2000-02-06', 'ST_CLERK', 2200,  NULL, 122, 50),
(137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1995-07-14', 'ST_CLERK', 3600,  NULL, 123, 50),
(138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1997-10-26', 'ST_CLERK', 3200,  NULL, 123, 50),
(139, 'John', 'Seo', 'JSEO', '650.121.2019', '1998-02-12', 'ST_CLERK', 2700,  NULL, 123, 50),
(140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1998-04-06', 'ST_CLERK', 2500,  NULL, 123, 50),
(141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1995-10-17', 'ST_CLERK', 3500,  NULL, 124, 50),
(142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1997-01-29', 'ST_CLERK', 3100,  NULL, 124, 50),
(143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1998-04-15', 'ST_CLERK', 2600,  NULL, 124, 50),
(144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1998-07-09', 'ST_CLERK', 2500,  NULL, 124, 50),
(145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1996-10-01', 'SA_MAN', 14000, 0.4, 100, 80),
(146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1997-01-05', 'SA_MAN', 13500, 0.3, 100, 80),
(147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1997-04-10', 'SA_MAN', 12000, 0.3, 100, 80),
(148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1999-10-15', 'SA_MAN', 11000, 0.3, 100, 80),
(149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '2000-01-29', 'SA_MAN', 10500, 0.2, 100, 80),
(150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1997-01-30', 'SA_REP', 10000, 0.3, 145, 80),
(151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1997-04-24', 'SA_REP', 9500, 0.25, 145, 80),
(152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1997-08-20', 'SA_REP', 9000, 0.25, 145, 80),
(153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1998-04-30', 'SA_REP', 8000, 0.2, 145, 80),
(154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1998-12-09', 'SA_REP', 7500, 0.2, 145, 80),
(155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1999-11-23', 'SA_REP', 7000, 0.15, 145, 80),
(156, 'Janette', 'King', 'JKING', '011.44.1345.429268', '1996-01-30', 'SA_REP', 10000, 0.35, 146, 80),
(157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1996-04-04', 'SA_REP', 9500, 0.35, 146, 80),
(158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1996-08-01', 'SA_REP', 9000, 0.35, 146, 80),
(159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1997-04-10', 'SA_REP', 8000, 0.3, 146, 80),
(160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1997-12-15', 'SA_REP', 7500, 0.3, 146, 80),
(161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1998-11-03', 'SA_REP', 7000, 0.25, 146, 80),
(162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1997-11-11', 'SA_REP', 10500, 0.25, 147, 80),
(163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1999-04-19', 'SA_REP', 9500, 0.15, 147, 80),
(164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '2000-01-24', 'SA_REP', 7200, 0.1, 147, 80),
(165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', '2000-02-23', 'SA_REP', 6800, 0.1, 147, 80),
(166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '2000-04-24', 'SA_REP', 6400, 0.1, 147, 80),
(167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '2000-04-21', 'SA_REP', 6200, 0.1, 147, 80),
(168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1997-04-11', 'SA_REP', 11500, 0.25, 148, 80),
(169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1998-04-23', 'SA_REP', 10000, 0.2, 148, 80),
(170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1998-01-24', 'SA_REP', 9600, 0.2, 148, 80),
(171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1999-02-23', 'SA_REP', 7400, 0.15, 148, 80),
(172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1999-04-24', 'SA_REP', 7300, 0.15, 148, 80),
(173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '2000-04-21', 'SA_REP', 6100, 0.1, 148, 80),
(174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1996-05-11', 'SA_REP', 11000, 0.3, 149, 80),
(175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1997-04-19', 'SA_REP', 8800, 0.25, 149, 80),
(176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1998-04-24', 'SA_REP', 8600, 0.2, 149, 80),
(177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1998-04-23', 'SA_REP', 8400, 0.2, 149, 80),
(178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1999-05-24', 'SA_REP', 7000, 0.15, 149,  NULL),
(179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '2000-01-04', 'SA_REP', 6200, 0.1, 149, 80),
(180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1998-01-24', 'SH_CLERK', 3200,  NULL, 120, 50),
(181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1998-02-23', 'SH_CLERK', 3100,  NULL, 120, 50),
(182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1999-06-21', 'SH_CLERK', 2500,  NULL, 120, 50),
(183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '2000-02-03', 'SH_CLERK', 2800,  NULL, 120, 50),
(184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1996-01-27', 'SH_CLERK', 4200,  NULL, 121, 50),
(185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1997-02-20', 'SH_CLERK', 4100,  NULL, 121, 50),
(186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1998-06-24', 'SH_CLERK', 3400,  NULL, 121, 50),
(187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1999-02-07', 'SH_CLERK', 3000,  NULL, 121, 50),
(188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1997-06-14', 'SH_CLERK', 3800,  NULL, 122, 50),
(189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1997-08-13', 'SH_CLERK', 3600,  NULL, 122, 50),
(190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1998-07-11', 'SH_CLERK', 2900,  NULL, 122, 50),
(191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1999-12-19', 'SH_CLERK', 2500,  NULL, 122, 50),
(192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1996-02-04', 'SH_CLERK', 4000,  NULL, 123, 50),
(193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1997-04-03', 'SH_CLERK', 3900,  NULL, 123, 50),
(194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1998-07-01', 'SH_CLERK', 3200,  NULL, 123, 50),
(195, 'Vance', 'Jones', 'VJONES', '650.501.4876', '1999-04-17', 'SH_CLERK', 2800,  NULL, 123, 50),
(196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1998-04-24', 'SH_CLERK', 3100,  NULL, 124, 50),
(197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1998-05-23', 'SH_CLERK', 3000,  NULL, 124, 50),
(198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1999-06-21', 'SH_CLERK', 2600,  NULL, 124, 50),
(199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '2000-01-13', 'SH_CLERK', 2600,  NULL, 124, 50),
(200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-17', 'AD_ASST', 4400,  NULL, 101, 10),
(201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1996-02-17', 'MK_MAN', 13000,  NULL, 100, 20),
(202, 'Pat', 'Fay', 'PFAY', '603.123.6666', '1997-08-17', 'MK_REP', 6000,  NULL, 201, 20),
(203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1994-06-07', 'HR_REP', 6500,  NULL, 101, 40),
(204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1994-06-07', 'PR_REP', 10000,  NULL, 101, 70),
(205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1994-06-07', 'AC_MGR', 12000,  NULL, 101, 110),
(206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1994-06-07', 'AC_ACCOUNT', 8300,  NULL, 205, 110);

ALTER TABLE DEPARTMENTS 
ADD FOREIGN KEY(MANAGER_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID);

CREATE TABLE JOB_HISTORY(
    EMPLOYEE_ID INT,
    START_DATE DATE,
    END_DATE DATE,
    JOB_ID VARCHAR(25),
    DEPARTMENT_ID INT,
    PRIMARY KEY(EMPLOYEE_ID, START_DATE),
    FOREIGN KEY(EMPLOYEE_ID) REFERENCES EMPLOYEES(EMPLOYEE_ID),
    FOREIGN KEY(JOB_ID) REFERENCES JOBS(JOB_ID),
    FOREIGN KEY(DEPARTMENT_ID) REFERENCES DEPARTMENTS(DEPARTMENT_ID)
);

INSERT INTO JOB_HISTORY VALUES
(102, '1993-01-13', '1998-07-24', 'IT_PROG', 60),
(101, '1989-09-21', '1993-10-27', 'AC_ACCOUNT', 110),
(101, '1993-10-28', '1997-04-15', 'AC_MGR', 110),
(201, '1996-02-17', '1999-12-19', 'MK_REP', 20),
(114, '1998-04-24', '1999-12-31', 'ST_CLERK', 50),
(122, '1999-01-01', '1999-12-31', 'ST_CLERK', 50),
(200, '1987-09-17', '1993-06-17', 'AD_ASST', 90),
(176, '1998-04-24', '1998-12-31', 'SA_REP', 80),
(176, '1999-01-01', '1999-12-31', 'SA_MAN', 80),
(200, '1994-07-01', '1998-12-31', 'AC_ACCOUNT', 90);




--Write a query to display the lastname, department number, and department name for all employees.
SELECT e.lastname, e.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id

---Create a unique listing of all jobs that are in department 30. Include the location id in the output.
SELECT DISTINCT j.job_title, l.location_id
FROM jobs j
JOIN departments d ON j.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE d.department_id = 30

--Write a query to display the employee lastname, department name, location id, and city of all employees who earn a commission.
SELECT e.lastname, d.department_name, l.location_id, l.city
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE e.commission_pct IS NOT NULL

--Display the employee lastname, and department name for all employees who have an "a" in their lastname.
SELECT e.lastname, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE e.lastname LIKE '%a%'

--Write a query to display the lastname, job, department number, and department name for all employees who work in Toronto.
SELECT e.lastname, e.job_title, e.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'Toronto'

--Display the employee lastname and employee number along with their manager's lastname and manager number. Label the columns "Employee", "Emp#", "Manager" and "Manager#" respectively.
SELECT e.lastname AS "Employee", e.employee_id AS "Emp#", m.lastname AS "Manager", m.employee_id AS "Manager#"
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id

--Modify the above to display the same columns for all employees (including "King", who has no manager). Order the result by the employee number.
SELECT e.lastname AS "Employee", e.employee_id AS "Emp#", m.lastname AS "Manager", m.employee_id AS "Manager#"
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id
ORDER BY e.employee_id

--Create query that displays employee lastnames, department numbers, and all the employees who work in the same department as a given employee. Give each column an appropriate label.
SELECT e1.lastname AS "Employee", e1.department_id AS "Dept#", e2.lastname AS "Colleague"
FROM employees e1
JOIN employees e2 ON e1.department_id = e2.department_id
WHERE e1.employee_id = e2.employee_id

--Create a query that displays the name, job, department name, salary and grade for all employees.
SELECT e.firstname,e.lastname, j.job_title, d.department_name, e.salary,e.commission_pct
FROM employees e , departments d ,jobs j
where e.department_id = d.department_id and e.job_id=j.job_id

--Create a query to display the name and hiredate of any employee hired after employee "Davies"
SELECT firstname,lastname, hire_date
FROM employees  
WHERE hire_date > (SELECT hire_date FROM employees  WHERE  lastname='Davies')

--Display the names and hire dates for all employees who were hired before their managers, along with their manager's names and hiredates. Label the columns "Employee", "Emp hired", "Manager", and "Manager hired" respectively.
SELECT e.firstname AS "Employee", e.hire_date AS "Emp hired", m.firstname AS "Manager", m.hire_date AS "Manager hired"
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.hire_date < m.hire_date

--Display the highest, lowest, sum and average salary of all employees. Label the columns "Maximum", "Minimum", "Sum", and "Average" respectively.
SELECT MAX(salary) AS "Maximum", MIN(salary) AS "Minimum", SUM(salary) AS "Sum", AVG(salary) AS "Average"
FROM employees

--Modify the above query to display the same data for each job type.
SELECT j.job_title, MAX(salary) AS "Maximum", MIN(salary) AS "Minimum", SUM(salary) AS "Sum", AVG(salary) AS "Average"
FROM employees, jobs j
GROUP BY j.job_title

--Write a query to display the number of people with the same job.
SELECT j.job_title, COUNT(*) AS "Number of people"
FROM employees,jobs j
GROUP BY j.job_title

--Determine the number of managers without listing them. Label the column "Number of Managers". [Hint: use the MANAGER_ID column to determine the number of managers]
SELECT COUNT(DISTINCT manager_id) AS "Number of Managers"
FROM employees

--Write a query that displays the difference between the highest and the lowes salaries. Label the column as "Difference".
SELECT MAX(salary) - MIN(salary) AS "Difference"
FROM employees

--Display the manager number and the salary of the lowest paid employee for that manager. Exclude anyone whose manager is not known. Exclude any group where the minimum salary is less than $6000. Sort the output in descending order of salary.
SELECT m.employee_id AS "Manager#", e.salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL AND e.salary >= 6000
GROUP BY m.employee_id, e.salary
HAVING e.salary = MIN(e.salary)
ORDER BY e.salary DESC

--Write a query to display each department's name, location, number of employees, and the average salary for all employees in that department. Label the columns "Name", "Location", "No.of people", and "SAlary" respectively. Round the average salary to two decimal places.
SELECT d.department_name AS "Name", l.city AS "Location", COUNT(*) AS "No.of people", ROUND(AVG(e.salary), 2) AS "Salary"
FROM departments d
JOIN employees e ON d.department_id = e.department_id
JOIN locations l ON d.location_id = l.location_id
GROUP BY d.department_name, l.city


--Write a query to display the lastname, and hiredate of any employee in the department as the employee "Zlotkey". Exclude "Zlotkey".
SELECT e.lastname, e.hire_date
FROM employees e
JOIN employees m ON e.department_id = m.department_id
WHERE m.lastname = 'Zlotkey' AND e.lastname <> 'Zlotkey'

--Create a query to display the employee numbers and lastnames of all employees who earn more than the average salary. Sort the result in ascending order of salary.
SELECT employee_id, lastname
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees)
ORDER BY salary ASC

--Write a query that displays the employee number and lastname of all employees who work in a department with any employee whose lastname contains a "u".
SELECT e.employee_id, e.lastname
FROM employees e
JOIN employees m ON e.department_id = m.department_id
WHERE m.lastname LIKE '%u%'

--Display the lastname, department number, and job id of all employees whose department location id is 1700.
SELECT e.lastname, e.department_id, e.job_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.location_id = 1700

--Display the lastname and salary of every employee who reports to "King".
SELECT e.lastname, e.salary
FROM employees e
JOIN employees m ON e.manager_id = m.employee_id
WHERE m.lastname = 'King'

--Display the department number, lastname, and job id for every employee in the "Executive" department.
SELECT e.department_id, e.lastname, e.job_id
FROM employees e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Executive'

--Display the employee number, lastname, and salary of all employees who earn more than the average salary and who work in a department with any employee with a "u" in their lastname.
SELECT e.employee_id, e.lastname, e.salary
FROM employees e
JOIN employees m ON e.department_id = m.department_id
WHERE e.salary > (SELECT AVG(salary) FROM employees) AND m.lastname LIKE '%u%'

--Write a query to get unique department ID from employee table.
SELECT DISTINCT department_id
FROM employees

SELECT DISTINCT d.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id


--Write a query to get all employee details from the employee table order by first name, descending.
SELECT *
FROM employees
ORDER BY firstname DESC

SELECT employee_id, lastname, firstname, salary
FROM employees
ORDER BY firstname DESC

--Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).
SELECT firstname, lastname, salary, salary * 0.15 AS PF
FROM employees

SELECT firstname, lastname, salary, salary * 0.15 AS PF
FROM employees
WHERE salary > 10000

--Write a query to get the employee ID, names (first_name, last_name), salary in ascending order of salary.
SELECT employee_id, firstname, lastname, salary
FROM employees
ORDER BY salary ASC

SELECT employee_id, firstname, lastname, salary
FROM employees
WHERE salary > 10000
ORDER BY salary ASC

--Write a query to get the total salaries payable to employees.
SELECT SUM(salary) AS 'Total Salary'
FROM employees

SELECT SUM(salary) AS 'Total Salary'
FROM employees
WHERE salary > 10000

--Write a query to get the maximum and minimum salary from employees table.
SELECT MAX(salary) AS 'Maximum Salary', MIN(salary) AS 'Minimum Salary'
FROM employees

SELECT MAX(salary) AS 'Maximum Salary', MIN(salary) AS 'Minimum Salary'
FROM employees
WHERE salary > 10000

--Write a query to get the average salary and number of employees in the employees table.
SELECT AVG(salary) AS 'Average Salary', COUNT(*) AS 'Number of Employees'
FROM employees

SELECT AVG(salary) AS 'Average Salary', COUNT(*) AS 'Number of Employees'
FROM employees
WHERE salary > 10000

--Write a query to get the number of employees working with the company.
SELECT COUNT(*) AS 'Number of Employees'
FROM employees

SELECT COUNT(*) AS 'Number of Employees'
FROM employees
WHERE salary > 10000

--Write a query to get the number of jobs available in the employees table.
SELECT COUNT(DISTINCT job_id) AS 'Number of Jobs'
FROM employees

SELECT COUNT(DISTINCT job_id) AS 'Number of Jobs'
FROM employees
WHERE salary > 10000

--Write a query get all first name from employees table in upper case.
SELECT UPPER(firstname) AS 'First Name'
FROM employees

SELECT UPPER(firstname) AS 'First Name'
FROM employees
WHERE salary > 10000

--Write a query to get the first 3 characters of first name from employees table.
SELECT SUBSTRing(firstname, 1, 3) AS 'First Name'
FROM employees

SELECT SUBSTRing(firstname, 1, 3) AS 'First Name'
FROM employees
WHERE salary > 10000

--Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT firstname + ' '+ lastname AS 'Name'
FROM employees
WHERE salary > 10000

SELECT firstname +' ' + lastname AS 'Name'
FROM employees
--Write a query to get first name from employees table after removing white spaces from both side.
SELECT TRIM(firstname) AS 'First Name'
FROM employees

SELECT TRIM(firstname) AS 'First Name'
FROM employees
WHERE salary > 10000

---Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT LEN(firstname) + LEN(lastname) AS 'Name Length'
FROM employees

SELECT LEN(firstname) + LEN(lastname) AS 'Name Length'
FROM employees
WHERE salary > 10000

--Write a query to check if the first_name fields of the employees table contains numbers.
SELECT firstname,
       CASE
         WHEN firstname = '[0-9]' THEN 'Contains Numbers'
         ELSE 'Does not contain Numbers'
       END AS 'Contains Numbers?'
FROM employees

SELECT firstname,
       CASE
         WHEN firstname ='[0-9]' THEN 'Contains Numbers'
         ELSE 'Does not contain Numbers'
       END AS 'Contains Numbers?'
FROM employees
WHERE salary > 10000

--Write a query to select first 10 records from a table.
SELECT *
FROM employees
ORDER BY salary DESC
OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY;


--Write a query to get monthly salary (round 2 decimal places) of each and every employee.
SELECT ROUND(salary/12, 2) AS 'Monthly Salary'
FROM employees

SELECT ROUND(salary/12, 2) AS 'Monthly Salary'
FROM employees
WHERE salary > 10000

--Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000.
SELECT firstname + ' ' + lastname AS 'Name', salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000

SELECT firstname +' ' + lastname AS 'Name', salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000

--Write a query to display the name (first_name, last_name) and department ID of all employees in departments 30 or 100 in ascending order.
SELECT firstname + ' ' + lastname AS 'Name', department_id
FROM employees
WHERE department_id IN (10, 30, 100)
ORDER BY department_id ASC

SELECT firstname + ' ' + lastname AS 'Name', department_id
FROM employees
WHERE department_id IN (30, 100)
ORDER BY department_id ASC


--Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100.
SELECT firstname + ' ' + lastname AS 'Name', salary
FROM employees
WHERE salary NOT BETWEEN 10000 AND 15000 
AND department_id IN (30, 100)


--Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
SELECT firstname +' ' + lastname AS 'Name', hire_date
FROM employees
WHERE Datename(YEAR FROM hire_date) = 1987


--Write a query to display the first_name of all employees who have both "b" and "c" in their first name.
SELECT firstname
FROM employees
WHERE firstname LIKE '%b%' AND firstname LIKE '%c%';

--Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT lastname, job_title, salary
FROM employees,jobs 
WHERE job_title IN ('Programmer', 'Shipping Clerk') AND salary NOT IN (4500, 10000, 15000);


--Write a query to display the last name of employees whose names have exactly 6 characters.
SELECT lastname
FROM employees
WHERE LEN(lastname) = 6;

--Write a query to display the last name of employees having 'e' as the third character.
SELECT lastname
FROM employees
WHERE SUBSTRING(lastname, 3, 1) = 'e';


--Write a query to display the jobs/designations available in the employees table.
SELECT DISTINCT jobs.job_title
FROM employees ,jobs 


--Write a query to display the name (first_name, last_name), salary and PF (15% of salary) of all employees.
SELECT firstname, lastname, salary, salary * 0.15 AS PF
FROM employees;

--Write a query to select all record from employees where last name in 'BLAKE', 'SCOTT', 'KING' and 'FORD'.
SELECT *
FROM employees
WHERE lastname IN ('BLAKE', 'SCOTT', 'KING', 'FORD');

--Write a query to list the number of jobs available in the employees table.
SELECT COUNT(DISTINCT jobs.job_title) AS num_jobs
FROM employees,jobs;

--Write a query to get the total salaries payable to employees.
SELECT SUM(salary) AS total_salaries
FROM employees;

---Write a query to get the minimum salary from employees table.
SELECT MIN(salary) AS min_salary
FROM employees;

--Write a query to get the maximum salary of an employee working as a Programmer.
SELECT MAX(salary) AS max_salary
FROM employees,jobs
WHERE jobs.job_title = 'Programmer';

--Write a query to get the average salary and number of employees working the department 90.
SELECT AVG(salary) AS avg_salary, COUNT(*) AS num_employees
FROM employees
WHERE department_id = 90;

--Write a query to get the highest, lowest, sum, and average salary of all employees.
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary, SUM(salary) AS total_salaries, AVG(salary) AS avg_salary
FROM employees;

--Write a query to get the number of employees with the same job.
SELECT jobs.job_title, COUNT(*) AS num_employees
FROM employees,jobs
where employees.job_id=jobs.job_id
GROUP BY jobs.job_title;

--Write a query to get the difference between the highest and lowest salaries.
SELECT MAX(salary) - MIN(salary) AS salary_difference
FROM employees;

--Write a query to find the manager ID and the salary of the lowest-paid employee for that manager.
SELECT manager_id, MIN(salary) AS min_salary
FROM employees
GROUP BY manager_id;

--Write a query to get the department ID and the total salary payable in each department.
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

--Write a query to get the average salary for each job ID excluding programmer.
SELECT jobs.job_id, AVG(salary) AS avg_salary
FROM employees,jobs
where employees.job_id=jobs.job_id
and jobs.job_title != 'Programmer'
GROUP BY jobs.job_id;

--Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only.
SELECT jobs.job_id, SUM(salary) AS total_salary, MAX(salary) AS max_salary, MIN(salary) AS min_salary, AVG(salary) AS avg_salary
FROM employees,jobs
WHERE employees.job_id=jobs.job_id
and department_id = 90
GROUP BY jobs.job_id;

--Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
SELECT  jobs.job_id, MAX(salary) AS max_salary
FROM employees,jobs
where employees.job_id=jobs.job_id
GROUP BY  jobs.job_id
HAVING MAX(salary) >= 4000;

--Write a query to get the average salary for all departments employing more than 10 employees.
SELECT department_id, AVG(salary) AS avg_salary
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 10;

---Write a query to find the name (first_name, last_name) and the salary of the employees who have a higher salary than the employee whose last_name='Bull'.
SELECT firstname, lastname, salary
FROM employees
WHERE salary > (SELECT salary FROM employees WHERE lastname = 'Bull');

--Write a query to find the name (first_name, last_name) of all employees who works in the IT department.
SELECT firstname, lastname
FROM employees
WHERE department_id = (SELECT department_id FROM departments WHERE department_name = 'IT');

--Write a query to find the name (first_name, last_name) of the employees who have a manager and worked in a USA based department. (Hint : Write single-row and multiple-row subqueries)
SELECT firstname, lastname
FROM employees
WHERE manager_id IS NOT NULL
AND department_id IN (SELECT department_id FROM departments 
WHERE location_id IN (SELECT location_id FROM locations WHERE country_id = 'US'));

--Write a query to find the name (first_name, last_name) of the employees who are managers.
SELECT firstname, lastname
FROM employees
WHERE employee_id IN (SELECT manager_id FROM employees);

--Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary.
SELECT firstname, lastname, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

--Write a query to find the name (first_name, last_name), and salary of the employees whose salary is equal to the minimum salary for their job grade.
SELECT e.firstname, e.lastname, e.salary
FROM employees e
JOIN (SELECT job_title, MIN(salary) AS min_salary
      FROM employees
      GROUP BY job_title) jobs  ON e.job_id = jobs.job_id AND e.salary = jobs.min_salary

SELECT e.firstname, e.lastname, e.salary
FROM employees e join
(SELECT jobs.job_title, MIN(salary) AS min_salary FROM employees,jobs GROUP BY jobs.job_title) jobs
ON e.job_id = jobs.job_id AND e.salary = jobs.min_salary;

--Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the average salary and works in any of the IT departments.
SELECT firstname, lastname, salary
FROM employees,departments
WHERE salary > (SELECT AVG(salary) FROM employees) or departments.department_name IN ('IT', 'Information Technology');

--Write a query to find the name (first_name, last_name), and salary of the employees who earns more than the earning of Mr. Bell.
SELECT firstname, lastname, salary
FROM employees
WHERE salary > (SELECT salary FROM employees WHERE lastname = 'Bell');

---Write a query to find the name (first_name, last_name), and salary of the employees who earn the same salary as the minimum salary for all departments.
SELECT firstname, lastname, salary
FROM employees
WHERE salary = (SELECT MIN(salary) FROM employees);

--Write a query to find the name (first_name, last_name), and salary of the employees whose salary is greater than the average salary of all departments.
SELECT firstname, lastname, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

SELECT firstname, lastname, salary
FROM employees,departments d
WHERE salary > (SELECT AVG(salary) FROM employees WHERE d.department_name = 'IT');

--Write a query to find the name (first_name, last_name) and salary of the employees who earn a salary that is higher than the salary of all the Shipping Clerk (JOB_ID = 'SH_CLERK'). Sort the results of the salary of the lowest to highest.
SELECT firstname, lastname, salary
FROM employees
WHERE salary in(SELECT salary FROM employees e WHERE e.JOB_ID = 'SH_CLERK')
ORDER BY salary ASC;

--Write a query to find the name (first_name, last_name) of the employees who are not supervisors.
SELECT firstname, lastname
FROM employees
WHERE NOT EXISTS (SELECT 1 FROM departments WHERE employees.manager_id = departments.manager_id);

--Write a query to display the employee ID, first name, last name, and department names of all employees.
SELECT e.employee_id, e.firstname, e.lastname, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

--Write a query to display the employee ID, first name, last name, salary of all employees whose salary is above average for their departments.
SELECT e.employee_id, e.firstname, e.lastname, e.salary
FROM employees e
JOIN (SELECT department_id, AVG(salary) AS avg_salary FROM employees GROUP BY department_id) a
ON e.department_id = a.department_id AND e.salary > a.avg_salary;

--Write a query to fetch even numbered records from employees table.
SELECT * FROM employees WHERE employee_id%2 = 0;

--Write a query to find the 5th maximum salary in the employees table.
SELECT salary FROM employees ORDER BY salary DESC OFFSET 0 ROWS FETCH FIRST 01 ROWS ONLY; 

SELECT
  CASE
    WHEN COUNT(*) >= 5 then (SELECT salary FROM employees ORDER BY salary DESC OFFSET 0 ROWS FETCH FIRST 01 ROWS ONLY)
    ELSE NULL
  END AS salary
FROM employees;

--Write a query to find the 4th minimum salary in the employees table.
SELECT salary FROM employees ORDER BY salary ASC OFFSET 0 ROWS FETCH FIRST 01 ROWS ONLY;

SELECT
  CASE
    WHEN COUNT(*) >= 4 THEN (SELECT salary FROM employees ORDER BY salary ASC OFFSET 0 ROWS FETCH FIRST 01 ROWS ONLY)
    ELSE NULL
  END AS salary
FROM employees;

--Write a query to select last 10 records from a table.
SELECT * FROM employees ORDER BY employee_id DESC OFFSET 0 ROWS FETCH FIRST 10 ROWS ONLY ;

--Write a query to list the department ID and name of all the departments where no employee is working.
SELECT department_id, department_name
FROM departments
WHERE department_id NOT IN (SELECT department_id FROM employees);

--Write a query to get 3 maximum salaries.
SELECT salary FROM employees ORDER BY salary DESC OFFSET 0 ROWS FETCH FIRST 3 ROWS ONLY;

--Write a query to get 3 minimum salaries.
SELECT salary FROM employees ORDER BY salary ASC OFFSET 0 ROWS FETCH FIRST 3 ROWS ONLY;

--Write a query to get nth max salaries of employees.
SELECT salary FROM employees ORDER BY salary DESC OFFSET n-1 ROWS FETCH FIRST 1 ROWS ONLY ;

--Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
SELECT l.location_id, l.street_address, l.city, l.state_province, c.country_name
FROM departments d
JOIN locations l ON d.location_id = l.location_id
JOIN countries c ON l.country_id = c.country_id;

--Write a query to find the name (first_name, last name), department ID and name of all the employees.
SELECT e.firstname, e.lastname, d.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id;

--Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
SELECT e.firstname, e.lastname, e.job_id, d.department_id, d.department_name
FROM employees e
JOIN departments d ON e.department_id = d.department_id
JOIN locations l ON d.location_id = l.location_id
WHERE l.city = 'London';

--Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
SELECT e.employee_id, e.lastname, m.employee_id AS manager_id, m.lastname AS manager_last_name
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.employee_id;

--Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
SELECT firstname, lastname, hire_date
FROM employees
WHERE hire_date > (SELECT hire_date FROM employees WHERE lastname = 'Jones');

--Write a query to get the department name and number of employees in the department.
SELECT d.department_name, COUNT(e.employee_id) AS num_employees
FROM departments d, employees e where d.department_id = e.department_id
GROUP BY d.department_id;

--Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
SELECT e.employee_id, j.job_title, DATEDIFF(day,'1993-01-13', '1998-12-31') AS num_days
FROM employees e
JOIN jobs j ON e.job_id = j.job_id
WHERE e.department_id = 90;

--Write a query to display the department ID and name and first name of manager.
SELECT d.department_id, d.department_name, m.firstname
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id;

--Write a query to display the department name, manager name, and city.
SELECT d.department_name, CONCAT(m.firstname, ' ', m.lastname) AS manager_name, l.city
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id
JOIN locations l ON d.location_id = l.location_id;

--Write a query to display the job title and average salary of employees.
SELECT j.job_title, AVG(e.salary) AS avg_salary
FROM employees e, jobs j where e.job_id = j.job_id
GROUP BY j.job_title;

--Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
SELECT j.job_title, CONCAT(e.firstname, ' ', e.lastname) AS employee_name, e.salary - j.min_salary AS salary_difference
FROM employees e
JOIN jobs j ON e.job_id = j.job_id;

--Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
SELECT e.firstname, e.lastname, h.start_date, h.end_date, j.job_title
FROM employees e
JOIN job_history h ON e.employee_id = h.employee_id
JOIN jobs j ON h.job_id = j.job_id
WHERE e.salary > 10000;

--Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.
SELECT d.department_name, CONCAT(m.firstname, ' ', m.lastname) AS name, m.hire_date, m.salary
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id
WHERE DATEDIFF(DAY,GETDATE(), m.hire_date) > 15*365;

--Write a query to get the first name and hire date from employees table where hire date between '1987-06-01' and '1987-07-30'
SELECT firstname, hire_date
FROM employees
WHERE hire_date BETWEEN '1987-06-01' AND '1987-07-30';

--Write a query to get the firstname, lastname who joined in the month of June.
SELECT firstname, lastname
FROM employees
WHERE MONTH(hire_date) = 6;

--Write a query to get the years in which more than 10 employees joined.
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS num_employees
FROM employees
GROUP BY YEAR(hire_DATE)
HAVING COUNT(*) > 10;

--Write a query to get first name of employees who joined in 1987.
SELECT firstname
FROM employees
WHERE YEAR(hire_date) = 1987;

--Write a query to get department name, manager name, and salary of the manager for all managers whose experience is more than 5 years.
SELECT d.department_name, CONCAT(m.firstname, ' ', m.lastname) AS manager_name, m.salary
FROM departments d
JOIN employees m ON d.manager_id = m.employee_id
WHERE DATEDIFF(DAY,GETDATE(), m.hire_date) > 5*365;
--Write a query to get employee ID, last name, and date of first salary of the employees.
SELECT e.employee_id, e.lastname, MIN(s.HIRE_date) AS date_of_first_salary
FROM employees e,JOB_HISTORY s WHERE e.employee_id = s.employee_id
GROUP BY e.employee_id
---Write a query to get first name, hire date and experience of the employees.
SELECT firstname, hire_date, DATEDIFF(DAY,GETDATE(), hire_date)/365 AS experience
FROM employees;

SELECT firstname, hire_date, DATEDIFF(DAY,GETDATE(), hire_date)/365 AS experience
FROM employees
WHERE hire_date <= GETDATE();

--Write a query to get the department ID, year, and number of employees joined.
SELECT department_id, year(HIRE_DATE) as year, count(*) as num_employees
FROM employees
GROUP BY department_id, HIRE_DATE

--Write a query to get the job_id and related employee's id.
SELECT job_id,employee_id  as id
FROM employees
WHERE job_id = '<desired job id>'

SELECT job_id, employee_id as employee_id
FROM employees

SELECT job_id, string_agg( employee_id,',') as employee_ids
FROM employees
GROUP BY job_id

/*Partial output of the query:

job_id	Employees ID
AC_ACCOUNT	206
AC_MGR	205
AD_ASST	200
AD_PRES	100
AD_VP	101 ,102
FI_ACCOUNT	110 ,113 ,111 ,109 ,112*/
--Write a query to update the portion of the phone_number in the employees table, within the phone number the substring '124' will be replaced by '999'.
UPDATE employees
SET phone_number = REPLACE(phone_number, '124', '999')
WHERE phone_number LIKE '%124%';

--Write a query to get the details of the employees where the length of the first name greater than or equal to 8.
SELECT employee_id, firstname, lastname, hire_date
FROM employees
WHERE LEN(firstname) >= 8;

SELECT *
FROM employees
WHERE LEN(firstname) >= 8;

---Write a query to display leading zeros before maximum and minimum salary.
SELECT
  RIGHT('000000' + CAST(MAX(salary) AS VARCHAR), 6) AS max_salary,
  RIGHT('000000' + CAST(MIN(salary) AS VARCHAR), 6) AS min_salary
FROM employees;


--Write a query to append '@example.com' to email field.
SELECT email+ '@example.com' AS email
FROM employees;

---Write a query to get the employee id, first name and hire month.
SELECT employee_id, firstname, Datename(MONTH FROM hire_date) AS hire_month
FROM employees;

--Write a query to get the employee id, email id (discard the last three characters).
SELECT employee_id, SUBSTRing(email, 1, LEN(email) - 3) AS email
FROM employees;

--Write a query to find all employees where first names are in upper case.
SELECT * FROM employees
WHERE UPPER(firstname) = firstname;

--Write a query to extract the last 4 character of phone numbers.
SELECT SUBSTRing(phone_number, -4) AS last_four_digits FROM phone_numbers;

Write a query to get the last word of the street address.
SELECT charindex(street_address, ' ', -1) as last_word
FROM locations
WHERE street_address LIKE '% Street %';


--Write a query to get the locations that have minimum street length.
SELECT location_id, street_address
FROM locations
WHERE LEN(street_address) = (SELECT MIN(LEN(street_address)) FROM locations)

Write a query to display the first word from those job titles which contains more than one words.
SELECT SUBSTRING(job_title, 1, INSTR(job_title, ' ') - 1) as "First Word"
FROM employees
WHERE INSTR(job_title, ' ') > 0

--Write a query to display the length of first name for employees where last name contain character 'c' after 2nd position.
SELECT LEN(firstname) as "First Name Length"
FROM employees
WHERE SUBSTRing(lastname, 3, 1) = 'c'

--Write a query that displays the first name and the length of the first name for all employees whose name starts with the letters 'A', 'J' or 'M'. Give each column an appropriate label. Sort the results by the employees first names.
SELECT firstname as "First Name",
       LEN(firstname) as "First Name Length"
FROM employees
WHERE substring(firstname,1,1) in('A','J','M')
ORDER BY firstname

firstname LIKE 'A%' OR firstname LIKE 'J%' OR firstname LIKE 'M%'

Write a query to display the first name and salary for all employees. Format the salary to be 10 characters long, left-padded with the $ symbol. Label the column SALARY.
SELECT firstname,
       rPAD(CONCAT('$', salary), 10, '$') as SALARY
FROM employees

--Write a query to display the first eight characters of the employees first names and indicates the amounts of their salaries with '$' sign. Each '$' sign signifies a thousand dollars. Sort the data in descending order of salary.
SELECT SUBSTRing(firstname, 1, 8) as firstname,
       CONCAT(REPlicate('$', salary / 1000), 'K') as salary
FROM employees
ORDER BY salary DESC

--Write a query to display the employees with their code, first name, last name and hire date who hired either on seventh day of any month or seventh month in any year.
SELECT employee_id as employee_code, firstname, lastname, hire_date
FROM employees
WHERE day(hire_date) = 7 OR month(hire_date) = 7
