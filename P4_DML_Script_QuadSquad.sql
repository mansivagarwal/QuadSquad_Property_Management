USE Management
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- LEASE_STATUS Table
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1001, 1);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1002, 1);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1003, 1);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1004, 1);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1005, 1);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1006, 0);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1007, 0);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1008, 1);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1009, 0);
INSERT INTO Management.dbo.LEASE_STATUS(LeaseStatusID, Leased)	VALUES(1010, 1);

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- LANDLORD Table  
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email) 
	VALUES(2001, 'Alice', 'Timmons', '4895623342', 'alice.t@gmail.com');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2002, 'Rita', 'Thomas', '4895632987', 'rita.thomas@gmail.com');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2003, 'Paul', 'Carter', '9196434186', 'carter.paul@eu.edu');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2004, 'George', 'Jenkins', '9634578568', 'george.j@mollis.co.uk');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2005, 'Tatum', 'Knox', '8562369234', 'Tatum91@sitamet.ca');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2006, 'Guy', 'Cohen', '3950437697', 'cohenstar@yahoo.com');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2007, 'Ciara', 'Rosa', '4915108365', 'rosa.ciara@gmail.com');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2008, 'Brock', 'Whitefield', '1822529098', 'brockwhite32@gmail.com');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2009, 'Abbot', 'Garner', '7200085771', 'garnerabbot@yahoo.com');
INSERT INTO Management.dbo.LANDLORD(LandlordID, FirstName, LastName, PhoneNo, Email)
	VALUES(2010, 'Amir', 'Nicholson', '6052573908', 'anic13@ymail.com');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- OFFER Table  
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O1010', 'Offerno1', 0.10, 'No');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O1111', 'Luckiest10', 0.30, 'Yes');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O2011', 'Yess!', 0.25, 'Yes');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O2019', 'Lucky20', 0.15, 'Yes');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O2020', 'Covidboom', 0.20, 'Yes');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O3112', 'Justforfun!', 0.10, 'No');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O3819', 'Nowthisisit', 0.20, 'Yes');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O4567', 'Discount10', 0.10, 'No');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O4816', 'Notinteresting', 0.10, 'Yes');
INSERT INTO Management.dbo.OFFER(OfferID, Name, Discount, QualificationReq)
	VALUES('O9015', 'Theordinary', 0.10, 'No');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- BROKER Table 
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5001', 'Bob', 'Troast', 'Interactive Brokers', 0.1000);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5002', 'Alex', 'Smith', 'Robinhood', 0.1500);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5003', 'Manish', 'Kumar', 'AmeriTrade', 0.0500);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5004', 'Audrey', 'Chavez', 'AmeriTrade', 0.0500);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5005', 'Lucy', 'Edwards', 'Ally and sons', 0.1000);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5006', 'Jonas', 'Salazar', 'Interactive Brokers', 0.1000);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5007', 'Sulin', 'Lie', 'Interactive Brokers', 0.1200);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5008', 'Emma', 'Pong', 'Vanguard', 0.1500);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5009', 'Ivan', 'Reed', 'Robinhood', 0.0500);
INSERT INTO Management.dbo.BROKER(BrokerID, FirstName, LastName, BrokerageCompany, BrokerFee)
	VALUES('B5010', 'Brandon', 'Stocks', 'Interactive Brokers', 0.0500);

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- EMPLOYEE Table 
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3001, 'Maintenance', 'Mark', 'Sullivan', '1980-03-05', 'M', 75000.0000, '2009-05-01');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3002, 'Management', 'Alison', 'Spear', '1988-04-04', 'F', 120000.0000, '2005-09-01');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3003, 'Maintenance', 'Gerry', 'Mander', '1990-11-29', 'M', 68000.0000, '2015-11-15');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3004, 'Maintenance', 'Jim', 'Harrison', '1970-09-24', 'M', 91000.0000, '2018-01-15');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3005, 'Maintenance', 'Mike', 'Bryan', '1977-03-05', 'M', 87000.0000, '2009-04-01');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3006, 'Maintenance', 'Samantha', 'Moore', '1991-08-09', 'F', 101000.0000, '2018-06-01');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3007, 'Maintenance', 'Jared', 'Tao', '1987-07-02', 'M', 111300.0000, '2012-05-01');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3008, 'Management', 'Harrison', 'Blaur', '1985-03-01', 'M', 115000.0000, '2010-07-15');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3009, 'Maintenance', 'Anthony', 'Ricardo', '1984-12-08', 'M', 89000.0000, '2019-09-01');
INSERT INTO Management.dbo.EMPLOYEE(EmployeeID, EmployeeType, FirstName, LastName, DateOfBirth, Gender, Salary, DateofEmployment)
	VALUES(3010, 'Maintenance', 'Luke', 'Ferris', '1984-10-05', 'M', 93000.0000, '2017-08-01');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- SKILL Table 
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7002, 'Builders License');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7005, 'Central AC Specialist');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7003, 'Electrician Cert.');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7007, 'Electrician License');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7004, 'Gas Boiler Cert.');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7001, 'Gas Furnace Cert.');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7006, 'GE Product Cert.');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7008, 'HVAC License');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7010, 'Lighting Controls Cert.');
INSERT INTO Management.dbo.SKILL(SkillID, Skill)
	VALUES(7009, 'Plumbing License');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- LANDLORD_ADDRESS Table 
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2001', 2001, 353, 'Aliquam Street', '4412 ', 'Worcester', 'MA');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2002', 2002, 45, 'Maecenas Avenue', '10451', 'Boston', 'MA');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2003', 2003, 42, 'Quam Road', '16575', 'Chicago', 'IL');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2004', 2004, 13, 'Ornare Street', '99981', 'Waterloo', 'IO');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2005', 2005, 850, 'Etiam Street', '10040', 'Lowell', 'MA');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2006', 2006, 26, 'A Street', '2120 ', 'Boston', 'MA');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2007', 2007, 78, 'Ut road', '2115 ', 'Jacksonville', 'FL');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2008', 2008, 17, 'Amet road', '18758', 'Seattle', 'WS');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2009', 2009, 33, 'Lobortis street', '29466', 'LA', 'CL');
INSERT INTO Management.dbo.LANDLORD_ADDRESS(L_addressID, LandlordID, StreetNumber, Street, Zip, City, State)
	VALUES('LA2010', 2010, 223, 'Fringilla street', '8524 ', 'Boston', 'MA');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- HAS_SKILL Table 
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3001, 7009, '2017-03-01');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3003, 7008, '2016-05-15');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3003, 7001, '2019-06-06');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3003, 7006, '2020-02-03');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3004, 7003, '2013-04-01');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3005, 7002, '2019-06-04');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3006, 7002, '2017-05-01');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3007, 7008, '2014-05-08');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3007, 7004, '2017-06-01');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3009, 7007, '2015-09-01');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3009, 7010, '2018-08-01');
INSERT INTO Management.dbo.HAS_SKILL(EmployeeID, SkillID, DateCertified)
	VALUES(3010, 7002, '2020-01-20');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- CUSTOMER Table 
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5010, 'Sophie', 'Strong', 'Drivers License', 'S873589275', 'Project Manager', 'sopstrong@gmail.com', '9775686251', 1, 'B5001');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5011, 'Alison', 'Michaels', 'Drivers License', 'S238957723', 'Student', 'AMichaels333@northeastern.edu', '4685897283', 0, NULL);
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5012, 'Michael', 'Bates', 'Drivers License', 'S293875432', 'Student', 'mikebates1995@bu.edu', '9285182686', 1, 'B5002');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5013, 'James', 'Monroe', 'Passport', '98435974', 'Engineer', 'james.mon55@yahoo.com', '7317096721', 0, NULL);
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5014, 'Linda', 'Stein', 'Passport', '98637213', 'Architect', 'lstein312@comcast.net', '8812000513', 1, 'B5003');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5015, 'William', 'Snow', 'Drivers License', 'S958457923', 'HR', 'willyshhhno@gmail.com', '8065854403', 1, 'B5004');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5016, 'Brett', 'Sullivan', 'Drivers License', 'S837591236', 'Business Analyst', 'sully2000@gmail.com', '3678006514', 0, NULL);
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5017, 'Anna', 'Lee', 'SSN', '978035556', 'Marketing', 'annabanana123@yahoo.com', '8336807461', 1, 'B5005');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5018, 'Gabriella', 'Giles', 'Drivers License', 'S972598377', 'Software Engineer', 'gabsgiles@comcast.net', '5176557020', 0, NULL);
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5019, 'Madeleine', 'Ross', 'Drivers License', 'S895739245', 'Doctor', 'ross_madeleine@northeastern.edu', '7352387846', 1, 'B5006');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5020, 'Frank', 'Smith', 'Drivers License', 'S462832957', 'Nurse', 'frank.smith65@gmail.com', '3076026365', 1, 'B5007');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5021, 'Lydia', 'Jones', 'SSN', '374747254', 'Sales Associate', 'joneslydia333@gmail.com', '8422982122', 1, 'B5008');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5022, 'Samantha', 'Hayes', 'Drivers License', 'S943875337', 'Engineer', 'sam.hayes94@uvm.edu', '2586886664', 0, NULL);
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5023, 'Stephan', 'Clark', 'SSN', '757385729', 'Designer', 'clarkst@gmail.com', '3296934004', 1, 'B5009');
INSERT INTO Management.dbo.CUSTOMER(CustomerID, FirstName, LastName, IdentificationType, IdentificationNo, Occupation, Email, Phone, CurrentTenant, BrokerID)
	VALUES(5024, 'Luke', 'Bennet', 'Drivers License', 'S829107572', 'Doctor', 'lukebenn444@comcast.net', '3425783658', 1, 'B5010');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- CUSTOMER_ADDRESS Table
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5010', 5010, 22, 'Clark st', '2109 ', 'Boston', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5011', 5011, 34, 'South st', '2564 ', 'Cambridge', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5012', 5012, 164, 'Huntington ave', '2332 ', 'Quincy', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5013', 5013, 455, 'Spear st', '2111 ', 'East Boston', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5014', 5014, 66, 'Main st', '2199 ', 'Cambridge', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5015', 5015, 12, 'North st', '2132 ', 'Somerville', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5016', 5016, 987, 'Ocean ave', '2055 ', 'Brighton', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5017', 5017, 1122, 'Elm st', '2167 ', 'Cambridge', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5018', 5018, 15, 'Hanover st', '2109 ', 'Boston', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5019', 5019, 2332, 'Winter st', '2178 ', 'Quincy', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5020', 5020, 286, 'Pearl st', '2132 ', 'Somerville', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5021', 5021, 982, 'East ave', '2055 ', 'Brighton', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5022', 5022, 888, 'Water st', '2167 ', 'Cambridge', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5023', 5023, 57, 'Center st', '2109 ', 'Boston', 'MA');
INSERT INTO Management.dbo.CUSTOMER_ADDRESS(C_addressID, CustomerID, StreetNo, Street, Zip, City, State)
	VALUES('CA5024', 5024, 21, 'Purchase st', '2178 ', 'Quincy', 'MA');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- UNIT Table
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(100, '5    ', 49, 'Ronald Regan St', 'Lowell', 'MA', '01854', 3, 2, 1100, 1, 'NaturalGas', 1, 0, 'NaturalGas', 1, 0, 0, 'Yes', 0, 1, '1991', 1, 'B5003', 9001, 1001, 2002, 5010, 'O3112');
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(101, '2    ', 1574, 'Tremont St', 'Boston', 'MA', '02120', 1, 1, 550, 0, 'Propane', 1, 0, 'Propane', 1, 0, 1, 'Yes', 0, 1, '2000', 0, 'B5010', 9002, 1002, 2003, 5012, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(102, '12   ', 1170, 'Boylston St', 'Boston', 'MA', '02115', 1, 1, 500, 1, 'NaturalGas', 1, 1, 'NaturalGas', 1, 0, 1, 'No', 1, 4, '2010', 0, 'B5003', 9003, 1003, 2008, 5014, 'O2019');
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(103, '7    ', 4, 'Hemenway  St', 'Boston', 'MA', '02115', 2, 1, 750, 1, 'Electric', 1, 1, 'Electric', 1, 0, 1, 'No', 0, 2, '1995', 0, 'B5006', 9004, 1004, 2003, 5015, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(104, '1    ', 1404, 'Merick point', 'Cambridge', 'MA', '02445', 4, 2, 1500, 0, 'Electric', 1, 1, 'Electric', 1, 1, 0, 'No', 0, 1, '1990', 0, 'B5003', 9005, 1005, 2010, 5017, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(105, '11   ', 86, 'Sundown court', 'Salem', 'MA', '01971', 3, 1, 850, 0, 'NaturalGas', 0, 1, 'NaturalGas', 1, 1, 1, 'Partial', 1, 10, '2001', 1, 'B5008', 9006, 1008, 2006, 5019, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(106, '3    ', 10, 'Butternut Trail', 'Lowell', 'MA', '01853', 5, 3, 2575, 0, 'Propane', 0, 1, 'Propane', 0, 0, 0, 'No', 0, 2, '2010', 1, 'B5001', 9006, 1006, 2001, NULL, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(107, '101  ', 5, 'Havey Avenue', 'Boston', 'MA', '02141', 2, 1, 475, 1, 'NaturalGas', 1, 0, 'NaturalGas', 0, 1, 1, 'No', 1, 3, '1998', 0, 'B5002', 9007, 1007, 2007, 5020, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(108, '39   ', 890, 'Mass Ave', 'Waltham', 'MA', '09918', 2, 1, 550, 0, 'NaturalGas', 0, 0, 'NaturalGas', 1, 0, 1, 'Partial', 1, 8, '2003', 0, 'B5009', 9008, 1008, 2009, 5021, NULL);
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(109, '82   ', 75, 'Newburry St', 'Cambridge', 'MA', '02441', 1, 1, 400, 1, 'Propane', 1, 1, 'Electric', 0, 1, 0, 'Yes', 1, 6, '2008', 1, 'B5007', 9009, 1009, 2005, 5023, 'O4567');
INSERT INTO Management.dbo.UNIT(UnitID, ApartmentNo, StreetNo, StreetName, City, State, Zip, NumberofBedrooms, NumberofBathrooms, AreaSqFt, CentralAC, HeatingType, Dishwasher, Microwave, StoveHeatSrc, Laundry, FitnessCenter, PetFriendly, Furnished, Elevator, FloorNo, YearConstructed, Parking, BrokerID, LeaseTermID, LeaseStatusID, LandlordID, CustomerID, OfferID)
	VALUES(110, '15   ', 23, 'Tennyson St', 'Newton', 'MA', '02762', 3, 1, 650, 1, 'Oil', 1, 1, 'NaturalGas', 1, 1, 1, 'Yes', 1, 5, '2000', 1, 'B5010', 9010, 1010, 2004, 5024, 'O3819');

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- PICTURE Table
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7101, 'https://www.goodhousekeeping.com/home/decorating-ideas/g1500/decor-ideas-living-room/', 'Living Room', 100);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7103, 'https://www.pexels.com/search/living%20room/', 'Living Room', 109);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7110, 'https://www.pexels.com/photo/bed-bedroom-ceiling-chandelier-262048/', 'Bedroom2', 109);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7111, 'https://www.pexels.com/photo/kitchen-and-dining-area-1080721/', 'Kitchen', 110);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7117, 'https://www.pexels.com/photo/oval-mirror-near-toilet-bowl-1910472/', 'Bathroom1', 110);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7123, 'https://www.houzz.com/photos/living-room-ideas-phbr0-bp~t_718', 'Living Room', 105);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7125, 'https://www.pexels.com/photo/apartment-architecture-artist-books-447592/', 'Patio', 101);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7130, 'https://www.pexels.com/photo/bathroom-interior-1457847/', 'Bathroom2', 107);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7140, 'https://www.pexels.com/photo/flat-screen-tv-1571458/', 'Living Room', 104);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7145, 'https://www.livingspaces.com/inspiration/rooms/living-room-ideas', 'Living Room', 103);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7156, 'https://www.pexels.com/photo/black-kettle-beside-condiment-shakers-and-green-fruits-and-plants-on-tray-on-brown-wooden-table-1080696/', 'Other', 102);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7171, 'https://www.pexels.com/photo/flat-screen-television-1827054/', 'Living Room', 108);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7175, 'https://www.pexels.com/photo/four-brown-wooden-chairs-2635038/', 'Kitchen', 106);
INSERT INTO Management.dbo.PICTURE(PictureID, Picture, PictureDesc, UnitID)
	VALUES(7182, 'https://www.pexels.com/photo/plush-toys-on-top-of-white-and-grey-mattress-inside-bedroom-1139784/', 'Bedroom1', 102);


------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- MAINTENANCE Table 
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6001, 'Preventative', 'Furnace check', '2019-10-01', '2019-10-17', 100.0000, 101, 3003);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6002, 'Routine', 'Change HVAC filters', '2018-08-01', '2018-08-15', 50.0000, 101, 3007);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6003, 'Requested', 'Leaking faucet', '2019-12-02', '2019-12-20', 300.0000, 102, 3001);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6004, 'Requested', 'AC not working', '2019-05-21', '2019-06-01', 800.0000, 109, 3003);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6005, 'Preventative', 'AC system check', '2018-05-03', '2018-05-12', 100.0000, 105, 3003);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6006, 'Routine', 'Change HVAC filters', '2020-03-20', NULL, 50.0000, 108, 3007);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6007, 'Requested', 'Lock change', '2020-02-01', '2020-02-22', 150.0000, 110, 3005);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6008, 'Requested', 'Patch holes in wall', '2020-03-24', NULL, 150.0000, 103, 3006);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6009, 'Preventative', 'Boiler check', '2019-09-25', '2019-10-01', 50.0000, 104, 3007);
INSERT INTO Management.dbo.MAINTENANCE(MaintenanceRequestID, MaintenanceType, MaintenanceDesc, DateRequested, DateCompleted, Cost, UnitID, EmployeeID)
	VALUES(6010, 'Routine', 'Rug cleaning', '2018-06-01', '2018-06-05', 200.0000, 107, 3010);

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- LEASE_APPLICATION Table
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8001, '2019-03-15', 'Employed', 100000, 720, 'Approved', 'Sarah', 'Zimmerman', '7563837382', 5010, 'B5001', 100);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8002, '2019-05-04', 'Student', 20000, 650, 'Approved', 'Neil', 'Taylor', '6173828947', 5012, 'B5002', 101);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8003, '2019-11-23', 'Employed', 115000, 700, 'Approved', 'Carl', 'Lively', '4983453744', 5014, 'B5003', 102);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8004, '2020-03-23', 'Student', 25000, 630, 'Submitted', 'Matt', 'Shea', '6173579326', 5011, NULL, 106);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8005, '2018-05-25', 'Employed', 67000, 580, 'Approved', 'Dan', 'Gaza', '9837453473', 5015, 'B5004', 103);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8006, '2019-08-30', 'Employed', 55000, 745, 'Approved', 'Mallorie', 'Johnson', '3047539872', 5017, 'B5005', 104);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8007, '2020-03-21', 'Employed', 130000, 650, 'Approved', 'Trevor', 'Short', '6175723987', 5019, 'B5006', 105);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8008, '2020-02-27', 'Employed', 85000, 700, 'Approved', 'Kevin', 'Keller', '2374593427', 5020, 'B5007', 107);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8009, '2019-07-08', 'Unemployed', 0, 550, 'Rejected', 'Brendon', 'Donovan', '6174593856', 5016, NULL, 103);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8010, '2018-07-24', 'Unemployed', 0, 575, 'Rejected', 'Lee', 'Stein', '5892487598', 5013, NULL, 101);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8011, '2019-11-29', 'Employed', 50000, 700, 'Approved', 'Irina', 'Bart', '6178759230', 5021, 'B5008', 108);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8012, '2020-04-02', 'Employed', 95000, 630, 'Submitted', 'Samuel', 'Downs', '9823705938', 5022, NULL, 106);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8013, '2018-05-02', 'Employed', 85000, 580, 'Approved', 'Jeremy', 'Ludwig', '6173495833', 5023, 'B5009', 109);
INSERT INTO Management.dbo.LEASE_APPLICATION(LeaseApplicationID, DateSubmitted, EmploymentStatus, Salary, CreditScore, ProcessingStatus, ReferenceFirstName, ReferenceLastName, ReferencePhone, CustomerID, BrokerID, UnitID)
	VALUES(8014, '2019-04-20', 'Employed', 115000, 730, 'Approved', 'Sophia', 'Stocker', '8478235834', 5024, 'B5010', 110);

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- LEASE_TERM Table
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9001, 2000, 1000, 1, '2019-06-01', '2020-05-31', 5010, 'B5001', 100, 8001);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9002, 1300, 1300, 1, '2019-06-01', '2020-05-31', 5012, NULL, 101, 8002);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9003, 4200, 2000, 1, '2020-01-15', '2021-01-14', 5014, NULL, 102, 8003);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9004, 3900, 3900, 1, '2018-06-15', '2020-06-14', 5015, 'B5004', 103, 8005);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9005, 2500, 2500, 1, '2019-10-01', '2020-09-30', 5017, 'B5005', 104, 8006);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9006, 3000, 1500, 1, '2020-04-01', '2021-03-31', 5019, 'B5006', 105, 8007);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9007, 1000, 500, 1, '2020-03-15', '2021-03-14', 5020, NULL, 107, 8008);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9008, 1200, 1200, 1, '2020-01-15', '2021-01-14', 5021, 'B5008', 108, 8011);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9009, 2200, 2200, 1, '2018-06-01', '2020-05-31', 5023, 'B5009', 109, 8013);
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(9010, 4300, 4300, 1, '2019-06-01', '2021-05-31', 5024, 'B5010', 110, 8014);

------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------
-- RENT_PAYMENT Table
select *From RENT_PAYMENT rp 
DELETE FROM RENT_PAYMENT
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990001, 3500.0000, 'JUN', '2019-06-05', NULL, 200.0000, 'O3112', 100, 5010);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990002, 2800.0000, 'JAN', '2020-01-03', NULL, 0.0000, NULL, 101, 5012);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990003, 4000.0000, 'SD', '2020-01-05', NULL, 0.0000, 'O2019', 102, 5014);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990004, 2600.0000, 'JAN', '2019-01-01', 54637, 0.0000, NULL, 103, 5015);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990005, 3200.0000, 'SD', '2019-09-10', NULL, 0.0000, NULL, 104, 5017);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990006, 3100.0000, 'SD', '2020-02-01', 35255, 500.0000, NULL, 108, 5021);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990007, 4600.0000, 'SD', '2018-05-01', NULL, 0.0000, 'O4567', 109, 5023);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990008, 1700.0000, 'JAN', '2020-01-10', NULL, 0.0000, 'O3819', 110, 5024);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990009, 3500.0000, 'SD', '2019-05-15', NULL, 0.0000, 'O3112', 100, 5010);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990010, 4000.0000, 'MAR', '2020-03-10', NULL, 0.0000, 'O2019', 102, 5014);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990011, 2600.0000, 'FEB', '2019-02-01', NULL, 0.0000, NULL, 103, 5015);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990012, 3400.0000, 'SD', '2020-03-28', NULL, 0.0000, NULL, 105, 5019);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990013, 2500.0000, 'SEP', '2020-09-03', NULL, 0.0000, NULL, 107, 5020);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990014, 3100.0000, 'MAR', '2020-03-03', NULL, 0.0000, NULL, 108, 5021);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990015, 4600.0000, 'SEP', '2018-09-05', NULL, 0.0000, 'O4567', 109, 5023);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990016, 1700.0000, 'FEB', '2020-02-02', 47863, 0.0000, 'O3819', 110, 5024);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990017, 3500.0000, 'JUL', '2019-07-03', NULL, 0.0000, 'O3112', 100, 5010);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990018, 3500.0000, 'AUG', '2019-08-01', NULL, 250.0000, 'O3112', 100, 5010);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990019, 2800.0000, 'FEB', '2020-02-01', NULL, 300.0000, NULL, 101, 5012);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990020, 4000.0000, 'APR', '2020-04-01', NULL, 0.0000, 'O2019', 102, 5014);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990021, 2600.0000, 'MAR', '2019-03-05', 65666, 0.0000, NULL, 103, 5015);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990022, 3200.0000, 'OCT', '2019-10-16', NULL, 0.0000, NULL, 104, 5017);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990023, 3400.0000, 'APR', '2020-04-03', NULL, 0.0000, NULL, 105, 5019);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990024, 2500.0000, 'OCT', '2020-10-01', NULL, 0.0000, NULL, 107, 5020);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990025, 3100.0000, 'APR', '2020-04-05', NULL, 0.0000, NULL, 108, 5021);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990026, 4600.0000, 'OCT', '2018-10-02', NULL, 0.0000, 'O4567', 109, 5023);
INSERT INTO Management.dbo.RENT_PAYMENT(RentPaymentID, Amount, Formonth, DatePaid, ChequeNo, Fee, OfferID, UnitID, CustomerID)
	VALUES(990027, 1700.0000, 'SD', '2019-04-20', NULL, 0.0000, 'O3819', 110, 5024);

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- ENCRYPTION
-- Create database Key:
USE Management
CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Identification123';

-- Create self signed certificate
CREATE CERTIFICATE Certificate1
WITH SUBJECT = 'Protect Data';

-- Create symmetric Key
CREATE SYMMETRIC KEY SymmetricKey1 
 WITH ALGORITHM = AES_128 
 ENCRYPTION BY CERTIFICATE Certificate1;

-- Add the soon to be encrypted col:
ALTER TABLE CUSTOMER  
ADD ID_number_encrypt varbinary(MAX) NULL

-- Populating encrypted data into new column
-- Opens the symmetric key for use
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;

UPDATE CUSTOMER
SET ID_number_encrypt = EncryptByKey (Key_GUID('SymmetricKey1'),IdentificationNo)
FROM CUSTOMER ;


-- Closes the symmetric key
CLOSE SYMMETRIC KEY SymmetricKey1;

-- Drop the original, non encrypted column:
ALTER TABLE CUSTOMER DROP COLUMN IdentificationNo;


--For Decryption --------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------
OPEN SYMMETRIC KEY SymmetricKey1
DECRYPTION BY CERTIFICATE Certificate1;


SELECT ID_number_encrypt AS 'Encrypted data',
            CONVERT(varchar, DecryptByKey(ID_number_encrypt)) AS 'Decrypted Identification Number'
            FROM CUSTOMER;