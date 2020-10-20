-- Triggers, Views, Stored procedures and functions included after table creation
CREATE DATABASE Management

USE Management;

CREATE TABLE dbo.UNIT (
	UnitID				INT			,	
	ApartmentNo			CHAR(5)		NOT NULL,	--there can be characters in some cases like 82A				
	StreetNo			INT			NOT NULL,   
	StreetName			VARCHAR(30)	NOT NULL,
	City				VARCHAR(20)	NOT NULL,
	[State]				CHAR(2)		NOT NULL,
	Zip					CHAR(5)		NOT NULL, 	
	NumberofBedrooms 	INT			NOT NULL,
	NumberofBathrooms 	INT			NOT NULL,
	AreaSqFt			INT			NOT NULL,
	CentralAC			BIT			NOT NULL	DEFAULT 1,
	HeatingType			Varchar(10)	 
		CONSTRAINT HeatingType_CHK	CHECK (HeatingType IN (
		'NaturalGas', 'Electric', 'Oil', 'Propane')),	
	Dishwasher			BIT			NOT NULL	DEFAULT 1,
	Microwave			BIT			NOT NULL	DEFAULT 1,
	StoveHeatSrc		VARCHAR(30)	
		CONSTRAINT StoveHeat_CHK	CHECK (StoveHeatSrc IN (
		'NaturalGas', 'Electric', 'Propane')),	
	Laundry				BIT			NOT NULL	DEFAULT 1,
	FitnessCenter		BIT			NOT NULL	DEFAULT 1,
	PetFriendly			BIT			NOT NULL	DEFAULT 1,
	Furnished			VARCHAR(7)
		CONSTRAINT Furnished_CHK CHECK (Furnished IN ('Yes' , 'No' , 'Partial')),
	Elevator			BIT			NOT NULL	DEFAULT 1,
	FloorNo				INT			NOT NULL,
	YearConstructed		CHAR(4),
	Parking				BIT			NOT NULL	DEFAULT 1,	
	BrokerID			VARCHAR(5),				-- This is a fk, constraint added at bottom
	LeaseTermID			INT,					-- This is a fk, constraint added at bottom
	LeaseStatusID		INT,					-- This is a fk, constraint added at bottom
	LandlordID			INT,					-- This is a fk, constraint added at bottom
	CustomerID			INT,					-- This is a fk, constraint added at bottom
	OfferID				VARCHAR(5),					-- This is a fk, constraint added at bottom
	CONSTRAINT	UnitID_pk	PRIMARY KEY	(UnitID)
) 


CREATE TABLE dbo.PICTURE (
	PictureID		INT,
	Picture			VARCHAR(500)	NOT NULL,
	PictureDesc		VARCHAR(20)
		CONSTRAINT Picdesc_CHK CHECK (PictureDesc IN ('Living Room' , 'Kitchen' , 'Bedroom1' , 'Bedroom2' , 'Bedroom3' , 'Bathroom1' , 'Bathroom2' , 'Patio' , 'Other')),
	UnitID			INT,
	CONSTRAINT		PictureID_pk			PRIMARY KEY (PictureID),
	CONSTRAINT 		Picture_UnitID_fk		FOREIGN KEY (UnitID) REFERENCES [UNIT](UnitID)
)
	

CREATE TABLE dbo.LEASE_STATUS (
	LeaseStatusID	INT,
	Leased			BIT		NOT NULL	DEFAULT 1,
	CONSTRAINT 		LeaseStatusID_pk	PRIMARY KEY	(LeaseStatusID),
)


CREATE TABLE dbo.LANDLORD (
	LandlordID		INT,
	FirstName		NVARCHAR(25)	NOT NULL,
	LastName		NVARCHAR(25)	NOT NULL,
	PhoneNo			CHAR(10)		NOT NULL, 
	Email			NVARCHAR(60)	NOT NULL, 
	CONSTRAINT 		LandlordID_pk	PRIMARY KEY (LandlordID),
)


CREATE TABLE dbo.LANDLORD_ADDRESS (
	L_addressID	    VARCHAR(6),	
   	LandlordID		INT,
	StreetNumber	INT			NOT NULL,
	Street			VARCHAR(30)	NOT NULL,
	Zip				CHAR(5)		NOT NULL, 	
	City			VARCHAR(20)	NOT NULL,
	[State]			CHAR(2)		NOT NULL,
	CONSTRAINT 		LandlordID_addr_pk	PRIMARY KEY (L_addressID),
	CONSTRAINT 		LandlordID_addr_fk	FOREIGN KEY (LandlordID)	REFERENCES LANDLORD (LandlordID)
)


CREATE TABLE dbo.OFFER (
	OfferID			VARCHAR(5),	
	[Name] 			VARCHAR(15)		NOT NULL,
	Discount		DECIMAL(3,2)	
		CONSTRAINT Discount_CHK CHECK (Discount BETWEEN 0 AND 1),
	QualificationReq		VARCHAR(3)		
	CONSTRAINT QualificationReq_CHK CHECK (QualificationReq IN ('Yes' , 'No')),
	CONSTRAINT 		OfferID_pk		PRIMARY KEY (OfferID),
)


CREATE TABLE dbo.RENT_PAYMENT (
	RentPaymentID	INT,
	Amount			MONEY	NOT NULL,
	Formonth		VARCHAR(5)	NOT NULL, 
	DatePaid		DATE	DEFAULT(GETDATE()),
	ChequeNo 		INT,
	Fee				MONEY,
	OfferID			VARCHAR(5),
	UnitID			INT		NOT NULL,
	CustomerID		INT 	NOT NULL, -- CustomerID fk constraint added at bottom
	CONSTRAINT 		RentPaymentID_pk	PRIMARY KEY (RentPaymentID),
	CONSTRAINT		RentPay_UnitID_fk	FOREIGN KEY (UnitID) REFERENCES [UNIT](UnitID),
	CONSTRAINT		RentPay_OfferID_fk	FOREIGN KEY (OfferID) REFERENCES [OFFER](OfferID)
)

CREATE TABLE dbo.MAINTENANCE (
	MaintenanceRequestID	INT,
	MaintenanceType			VARCHAR(15)		NOT NULL	
		CONSTRAINT MaintType_CHK CHECK(MaintenanceType IN ('Preventative', 'Routine', 'Requested')),
	MaintenanceDesc			VARCHAR(200)	NOT NULL,
	DateRequested			DATE			DEFAULT(GETDATE()),
	DateCompleted			DATE			,
	Cost					MONEY 			NOT NULL,
	UnitID					INT 			NOT NULL,
	EmployeeID				INT				NOT NULL, -- EmployeeID fk constraint added at bottom
	CONSTRAINT	MaintenanceRequestID_pk	PRIMARY KEY (MaintenanceRequestID),
	CONSTRAINT	Maint_UnitID_fk			FOREIGN KEY (UnitID) REFERENCES [UNIT](UnitID)
)


CREATE TABLE dbo.EMPLOYEE (
	EmployeeID		INT, 
	EmployeeType	VARCHAR(15)		NOT NULL 	
		CONSTRAINT EmployeeType_CHK CHECK (EmployeeType IN ('Maintenance', 'Management')),
	FirstName		NVARCHAR(30)	NOT NULL,
	LastName		NVARCHAR(30)	NOT NULL,
	DateOfBirth		DATE			NOT NULL,
	Gender			CHAR(1)			
		CONSTRAINT Gender_CHK CHECK (Gender IN ('F' , 'M' , 'O')),
	Salary			MONEY			NOT NULL,
	DateofEmployment	DATE		NOT NULL,
	CONSTRAINT 		EmployeeID_pk	PRIMARY KEY (EmployeeID)
)


CREATE TABLE dbo.SKILL (
	SkillID			INT, 
	Skill 			VARCHAR(30)	NOT NULL	UNIQUE,
	CONSTRAINT SkillID 		PRIMARY KEY (SkillID),
)

CREATE TABLE HAS_SKILL(
	EmployeeID 		INT 	NOT NULL,
	SkillID 		INT 	NOT NULL,
	DateCertified 	DATE, 
CONSTRAINT 		EmployeeID_fk	FOREIGN KEY (EmployeeID) References [EMPLOYEE](EmployeeID),
CONSTRAINT 		SkillID_fk	FOREIGN KEY (SkillID) References SKILL(SkillID)
)


CREATE TABLE dbo.BROKER (
	BrokerID 			VARCHAR(5),
	FirstName			NVARCHAR(15)	NOT NULL,
	LastName			NVARCHAR(15)	NOT NULL, 
	BrokerageCompany	VARCHAR(50),
	BrokerFee		DECIMAL(3,2)	NOT NULL
		CONSTRAINT BrokerFee_CHK CHECK (BrokerFee BETWEEN 0 AND 1),
	CONSTRAINT BrokerID_pk	PRIMARY KEY (BrokerID)
)


CREATE TABLE dbo.CUSTOMER (
	CustomerID			INT,
	FirstName			NVARCHAR(25)	NOT NULL,
	LastName			NVARCHAR(25)	NOT NULL,
	IdentificationType	VARCHAR(20)		NOT NULL		
		CONSTRAINT GovtId_CHK CHECK (IdentificationType IN ('Passport' , 'Drivers License' , 'State ID' , 'SSN')),
	IdentificationNo	VARCHAR(25) 	NOT NULL,		
	Occupation			VARCHAR(25),
	Email				NVARCHAR(60)	NOT NULL,
	Phone				CHAR(10)		NOT NULL, 
	CurrentTenant		BIT				NOT NULL	DEFAULT 0,
	BrokerID			VARCHAR(5),
	CONSTRAINT CustomerID_pk		PRIMARY KEY (CustomerID),
	CONSTRAINT Customer_Broker_fk	FOREIGN KEY (BrokerID)	REFERENCES [BROKER](BrokerID)
)

CREATE TABLE dbo.CUSTOMER_ADDRESS (
    C_addressID     VARCHAR(6), 
	CustomerID		INT			NOT NULL,
	StreetNo		INT			NOT NULL,
	Street			VARCHAR(30)	NOT NULL,
	Zip				CHAR(5)		NOT NULL, 
	City			VARCHAR(20)	NOT NULL,
	[State]			CHAR(2)		NOT NULL,
	CONSTRAINT 		CustomerID_addr_pk	PRIMARY KEY (C_addressID),
	CONSTRAINT 		CustomerID_addr_fk	FOREIGN KEY (CustomerID)	REFERENCES CUSTOMER (CustomerID)
)


CREATE TABLE dbo.LEASE_APPLICATION (
	LeaseApplicationID		INT,
	DateSubmitted			DATE 		DEFAULT(GETDATE()),
	EmploymentStatus		VARCHAR(15)	NOT NULL 
		CONSTRAINT EmploymentStatus_CHK	CHECK(EmploymentStatus IN ('Employed', 'Unemployed', 'Student')),
	Salary					INT 		NOT NULL,
	CreditScore				SMALLINT	NOT NULL,
	ProcessingStatus		VARCHAR(10)	NOT NULL
		CONSTRAINT ProcessingStatus_CHK	CHECK(ProcessingStatus IN('Submitted', 'Approved', 'Rejected')),
	ReferenceFirstName		NVARCHAR(15),
	ReferenceLastName		NVARCHAR(15),
	ReferencePhone			CHAR(10),
	CustomerID				INT 		NOT NULL,
	BrokerID				VARCHAR(5) 	,
	UnitID					INT 		NOT NULL,
	CONSTRAINT LeaseApplicationID_pk	PRIMARY KEY (LeaseApplicationID),
	CONSTRAINT LeaseApp_CustomerID_fk	FOREIGN KEY (CustomerID)	REFERENCES [CUSTOMER](CustomerID),
	CONSTRAINT LeaseApp_BrokerID_fk		FOREIGN KEY (BrokerID) 		REFERENCES [BROKER](BrokerID),
	CONSTRAINT LeaseApp_UnitID_fk		FOREIGN KEY (UnitID) 		REFERENCES [UNIT](UnitID),	
)


CREATE TABLE dbo.LEASE_TERM (
	LeaseTermID				INT,
	MonthlyRent				INT 		NOT NULL,
	SecurityDeposit			INT 		NOT NULL,
	ApprovedByManagement	BIT			NOT NULL	DEFAULT 0,
	StartDate				DATE		NOT NULL,
	EndDate					DATE		NOT NULL,
	CustomerID				INT 		NOT NULL,
	BrokerID				VARCHAR(5),
	UnitID					INT			NOT NULL,
	LeaseApplicationID		INT 		NOT NULL,
	CONSTRAINT LeaseTermID_pk				PRIMARY KEY (LeaseTermID),
	CONSTRAINT LeaseTerm_CustomerID_fk		FOREIGN KEY (CustomerID) 			REFERENCES [CUSTOMER](CustomerID),
	CONSTRAINT LeaseTerm_BrokerID_fk		FOREIGN KEY (BrokerID) 				REFERENCES [BROKER](BrokerID),
	CONSTRAINT LeaseTerm_UnitID_fk			FOREIGN KEY (UnitID) 				REFERENCES [UNIT](UnitID),
	CONSTRAINT LeaseTerm_ApplicationID_fk	FOREIGN KEY (LeaseApplicationID) 	REFERENCES [LEASE_APPLICATION](LeaseApplicationID),
)

 
-- add in the FKs to UNIT table now that all tables are built and can be referenced:
ALTER TABLE dbo.UNIT 	ADD CONSTRAINT Unit_BrokerID_fk			FOREIGN KEY (BrokerID)		REFERENCES [BROKER](BrokerID)
ALTER TABLE dbo.UNIT 	ADD CONSTRAINT Unit_LeaseStatusID_fk	FOREIGN KEY (LeaseStatusID)	REFERENCES [LEASE_STATUS](LeaseStatusID)
ALTER TABLE dbo.UNIT 	ADD CONSTRAINT Unit_LandlordID_fk		FOREIGN KEY (LandlordID)	REFERENCES [LANDLORD](LandlordID)
ALTER TABLE dbo.UNIT 	ADD CONSTRAINT Unit_CustomerID_fk		FOREIGN KEY (CustomerID)	REFERENCES [CUSTOMER](CustomerID)
ALTER TABLE dbo.UNIT 	ADD CONSTRAINT Unit_OfferID_fk			FOREIGN KEY (OfferID)		REFERENCES [OFFER](OfferID)

-- add in the FK to RENT_PAYMENT table now that CUSTOMER table is built and can be referenced:
ALTER TABLE RENT_PAYMENT	ADD CONSTRAINT RentPay_CustomerID_fk	FOREIGN KEY (CustomerID) 	REFERENCES [CUSTOMER](CustomerID)

-- add in the FK to MAINTENANCE table now that EMPLOYEE table is built and can be referenced:
ALTER TABLE MAINTENANCE		ADD CONSTRAINT Maint_EmployeeID_fk		FOREIGN KEY (EmployeeID) 	REFERENCES [EMPLOYEE](EmployeeID);

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- calculated columns: 

-- Calculate the Age of employee based on given birth date
ALTER TABLE employee ADD EmployeeAge AS DATEDIFF(YEAR, DateofBirth, GETDATE());

-- Calculate the Tenure of employees at the management company
ALTER TABLE employee ADD EmployeeTenure	AS datediff(YEAR,DateofEmployment,getdate());

--------------------------------------------------------------------------------------------------------------------------------------

--Function that generates a column to calculate the total rent of units

CREATE FUNCTION dbo.Totalrent(
@Amount MONEY)
RETURNS INT
AS
BEGIN 
DECLARE @TSUM INT

SELECT @TSUM = SUM(@Amount) from RENT_PAYMENT Group By CustomerID
RETURN @TSUM
END ;

ALTER TABLE dbo.RENT_PAYMENT ADD TotalRent AS dbo.Totalrent(Amount);


-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- Trigger that enforces the busniess rule that customers must submit a lease application and be approved 
-- for a lease before a lease is signed (ie a row in the LEASE_TERM Relation is inserted)
CREATE TRIGGER lease_term_tr ON 
	LEASE_TERM FOR INSERT 
	AS IF (
		SELECT la.ProcessingStatus FROM LEASE_APPLICATION la
		WHERE la.LeaseApplicationID = (SELECT LeaseApplicationID FROM inserted)) <> 'Approved'
			BEGIN
				PRINT('A lease term cannot be created until management approves the lease application. 
						Ensure the [ProcessingStatus] in the LEASE_APPLICATION table is set to "Approved"')
				ROLLBACK TRANSACTION 
				RETURN 
			END;

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- View to combine the key fields that describe a maintenance request and the employee assigned to the request		
CREATE VIEW dbo.Maint_Emp_vw
AS
SELECT
    DISTINCT MaintenanceRequestID,
    MaintenanceType,
    MaintenanceDesc,
    DateRequested,
    DateCompleted,
    Cost,
    UnitID,
    e.EmployeeID,
    EmployeeType,
    FirstName,
    LastName
FROM
    dbo.MAINTENANCE m
JOIN dbo.EMPLOYEE e
    ON e.EmployeeID = m.EmployeeID;

-- View to see a list of employees skills/certifications:
CREATE VIEW dbo.Emp_Skills_vw
AS
SELECT
    e.EmployeeID,
    EmployeeType,
    FirstName,
    LastName,
    s.SkillID,
    Skill
FROM
    dbo.EMPLOYEE e
JOIN dbo.HAS_SKILL hs
    ON hs.EmployeeID = e.EmployeeID
JOIN dbo.SKILL s
	ON s.SkillID = hs.SkillID;

    
-- View to combine the customer and broker information related to a specific Unit   
CREATE VIEW dbo.Cust_Broker_Unit_vw
AS
SELECT
    c.CustomerID, 
    c.FirstName AS Cust_FirstName,
    c.LastName 	AS Cust_LastName,
    b.BrokerID,
    b.FirstName	AS Broker_FirstName,
    b.LastName	AS Broker_LastName,
    BrokerageCompany,
    UnitID,
    ApartmentNo,
    StreetNo,
    StreetName,
    City
FROM
    dbo.Customer c
INNER JOIN dbo.BROKER b
    ON c.BrokerID = b.BrokerID
INNER JOIN dbo.Unit u
    ON c.CustomerID = u.CustomerID;
   

-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-- Stored Procedure to return list of apartments that are available to rent in a given zipcode 
CREATE PROCEDURE NotRentedApartment @Zip CHAR(5)
AS
BEGIN 
	SELECT 
		U.UNITID, 
		U.APARTMENTNO,
		U.StreetNo, 
		U.StreetName,
		U.City,
		U.[State],
		U.Zip,
		U.NumberofBedrooms,
		U.NumberofBathrooms,
		U.AreaSqFt,
		U.CentralAC,
		U.HeatingType,
		U.Dishwasher,
		U.Microwave,
		U.StoveHeatSrc,
		U.Laundry,
		U.FitnessCenter,
		U.PetFriendly,
		U.Furnished,
		U.Elevator,
		U.FloorNo,
		U.YearConstructed,
		U.Parking
	FROM UNIT U 
		JOIN LEASE_STATUS L ON U.LeaseStatusID = L.LeaseStatusID 
	WHERE L.Leased= 0 AND @Zip = U.Zip
END;
-- To use this procedure with an example zip code input:
-- EXECUTE NotRentedApartment @zip='02441';


--Stored procedure to get the information of the apartment a customer has rented
CREATE PROCEDURE Apartmentdetails @Customerid int, @firstname nvarchar(25), @lastname nvarchar(25)
AS
BEGIN
	SELECT U.UNITID, U.APARTMENTNO ,U.StreetNo, U.StreetName,U.City,U.[State],U.Zip,c.customerid, c.firstname, c.lastname
	FROM unit u 
		JOIN customer c ON c.CustomerID=u.CustomerID
		JOIN LEASE_STATUS L ON U.LeaseStatusID=L.LeaseStatusID 
	WHERE L.Leased=1 AND c.CustomerID= @customerid AND c.FirstName=@firstname AND c.LastName=@lastname
END;

-- To use this procedure with an example inputs:
-- EXEC Apartmentdetails @Customerid= 5014,
-- @firstname='linda',
-- @lastname='stein';


--stored procedure to find landlord details for a unit
CREATE PROCEDURE landlorddetails @unitid INT
AS
BEGIN
SELECT u.unitid,u.ApartmentNo,u.StreetNo, u.StreetName, u.City,u.[State], u.Zip, l.FirstName, l.LastName, l.PhoneNo,l.Email
FROM unit u JOIN LANDLORD l ON u.LandlordID=l.LandlordID
where u.UnitID= @unitid
END;

-- To use this procedure with an example input:
-- EXEC landlorddetails @unitid= 109;


-- Stored procedure to calculate average salary with input and output parameters:
CREATE PROCEDURE AVG_SAL_BYAGE (@MinAge INT, @MaxAge INT, @avg_sal INT OUTPUT)
AS
SELECT AVG(e.Salary) AS AVG_SAL
FROM EMPLOYEE e WHERE EmployeeAge BETWEEN @MinAge AND @MaxAge 
;

-- To run this procedure:
--DECLARE @count INT;
--EXEC AVG_SAL_BYAGE
   --@MinAge  = 30, @MaxAge = 35,
   --@avg_sal = @count OUTPUT;
   
