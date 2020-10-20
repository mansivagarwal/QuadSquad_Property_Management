USE Management;

-- Checking that all tables are populated as we expect:
SELECT * FROM BROKER b; 
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER_ADDRESS ca;
SELECT * FROM EMPLOYEE e; 
SELECT * FROM HAS_SKILL hs;
SELECT * FROM LANDLORD l;
SELECT * FROM LANDLORD_ADDRESS la;	
SELECT * FROM LEASE_APPLICATION la; 
SELECT * FROM LEASE_STATUS ls;
SELECT * FROM LEASE_TERM lt;
SELECT * FROM MAINTENANCE m;
SELECT * FROM OFFER o;
SELECT * FROM PICTURE p; 
SELECT * FROM RENT_PAYMENT rp; 
SELECT * FROM SKILL s;
SELECT * FROM UNIT u; 

-- Checking views:
SELECT * FROM Cust_Broker_Unit_vw cbuv 
SELECT * FROM Maint_Emp_vw mev 
SELECT * FROM Emp_Skills_vw esv 

-- Checking stored procedures
EXECUTE NotRentedApartment @zip='02441'
EXEC Apartmentdetails @Customerid= 5014, @firstname='linda', @lastname='stein';
EXEC landlorddetails @unitid= 109;

--Check the trigger
-- This application has not been approved and the trigger should prevent insertion:
INSERT INTO Management.dbo.LEASE_TERM(LeaseTermID, MonthlyRent, SecurityDeposit, ApprovedByManagement, StartDate, EndDate, CustomerID, BrokerID, UnitID, LeaseApplicationID)
	VALUES(90011, 2000, 1000, 1, '2019-06-01', '2020-05-31', 5011, NULL, 106, 8004);

--To check the function that generates a function of total rent
Select Distinct Capital ,customerid from RENT_PAYMENT ;

--Some DML queries to find specific information in the Database

--To identify units which have been given any kind of offer

SELECT * FROM UNIT u
WHERE u.OfferID IS NOT NULL;

--To identify Units that have paid the Security Deposit

SELECT RentPaymentID, UnitID FROM RENT_PAYMENT RP
WHERE RP.Formonth = 'SD'

--To identify offers that need a qualification

SELECT OfferID, [Name], Discount  FROM OFFER O
WHERE QualificationReq = 'Yes'

--Units that are in Boston and are not or partially furnished

SELECT * FROM UNIT
WHERE Furnished != 'Yes'
AND City = 'Boston'

-------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------


