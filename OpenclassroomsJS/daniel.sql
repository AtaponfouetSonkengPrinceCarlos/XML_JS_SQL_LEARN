CREATE TABLE `Firms` (
  `ID` INT,
  `Name` VARCHAR(30),
  `Location` VARCHAR(30),
  `Capacity` int,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Chickencustomer` (
  `ID` INT,
  `Name` VARCHAR(30),
  `CustomerType` VARCHAR(30),
  `Quantity` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `ChickenSales` (
  `Firm_ID` INT,
  `Customer_ID` INT,
  `Quantity` INT,
  `DateSold` DATE,
  CONSTRAINT `FK_ChickenSales.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`),
  CONSTRAINT `FK_ChickenSales.Customer_ID`
    FOREIGN KEY (`Customer_ID`)
      REFERENCES `Chickencustomer`(`ID`)
);

CREATE TABLE `Type` (
  `ID` INT,
  `NameOfType` VARCHAR(30),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `CapitalInvest` (
  `Firm_ID` INT,
  `Investment` INT,
  `Investment_date` DATE,
  CONSTRAINT `FK_CapitalInvest.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `Vendeur` (
  `ID` INT,
  `Company_name` VARCHAR(30),
  `Location` VARCHAR(30),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Chicks` (
  `ID` INT,
  `NumberOfChicks` INT,
  `DaysOld` INT,
  `Price` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Medicine` (
  `ID` INT,
  `Name` VARCHAR(30),
  `PricePerLitre` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `DrugSales` (
  `Vendor_ID` INT,
  `Firm_ID` INT,
  `Medicne_ID` INT,
  `Qauntity(L)` INT,
  `DateSold` DATE,
  CONSTRAINT `FK_DrugSales.Vendor_ID`
    FOREIGN KEY (`Vendor_ID`)
      REFERENCES `Vendeur`(`ID`),
  CONSTRAINT `FK_DrugSales.Medicne_ID`
    FOREIGN KEY (`Medicne_ID`)
      REFERENCES `Medicine`(`ID`),
  CONSTRAINT `FK_DrugSales.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `Food ` (
  `ID` INT,
  `Name` VARCHAR(30),
  `PricePerKg` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `FoodSales` (
  `Vendor_ID` INT,
  `Firm_ID` INT,
  `Food_ID` INT,
  `Qauntity(Kg)` INT,
  `DateSold` DATE,
  CONSTRAINT `FK_FoodSales.Vendor_ID`
    FOREIGN KEY (`Vendor_ID`)
      REFERENCES `Vendeur`(`ID`),
  CONSTRAINT `FK_FoodSales.Food_ID`
    FOREIGN KEY (`Food_ID`)
      REFERENCES `Food `(`ID`),
  CONSTRAINT `FK_FoodSales.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `Task` (
  `ID` INT,
  `Name` VARCHAR(30),
  `Salary` INT,
  PRIMARY KEY (`ID`)
);

CREATE TABLE `ChickSales` (
  `Vendor_ID` INT,
  `Firm_ID` INT,
  `Chick_ID` INT,
  `Qauntity` INT,
  `DateSold` DATE,
  CONSTRAINT `FK_ChickSales.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`),
  CONSTRAINT `FK_ChickSales.Chick_ID`
    FOREIGN KEY (`Chick_ID`)
      REFERENCES `Chicks`(`ID`),
  CONSTRAINT `FK_ChickSales.Vendor_ID`
    FOREIGN KEY (`Vendor_ID`)
      REFERENCES `Vendeur`(`ID`)
);

CREATE TABLE `Equipment` (
  `ID` INT,
  `Firm_ID` INT,
  `Name ` VARCHAR(30),
  `TypeID` INT,
  `Quantity` INT,
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Equipment.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`),
  CONSTRAINT `FK_Equipment.TypeID`
    FOREIGN KEY (`TypeID`)
      REFERENCES `Type`(`ID`)
);

CREATE TABLE `ChickenGroup` (
  `FirmID` INT,
  `NumOfChickens` INT,
  `Deaths` INT,
  `DateDeployed` DATE,
  CONSTRAINT `FK_ChickenGroup.FirmID`
    FOREIGN KEY (`FirmID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `CharcoalBills` (
  `Firm_ID` INT,
  `PricePerKg` INT,
  `Quantity(Kg)` INT,
  `MoneyPaid` INT,
  `PayementDate` DATE,
  CONSTRAINT `FK_CharcoalBills.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `WaterBillls` (
  `Firm_ID` INT,
  `PricePerLiter` INT,
  `Quantity(L)` INT,
  `MoneyPaid` INT,
  `PaymentDate` DATE,
  CONSTRAINT `FK_WaterBillls.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `ElectricityBillls` (
  `Firm_ID` INT,
  `PricePerKWH` INT,
  `Quantity(KWH)` INT,
  `MoneyPaid` INT,
  `PayementDate` DATE,
  CONSTRAINT `FK_ElectricityBillls.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE `Employee` (
  `ID` INT,
  `Firm_ID` INT,
  `Task_ID` INT,
  `Name` VARCHAR(30),
  `Sex` VARCHAR(2),
  `Email` VARCHAR(50),
  `CountryCode` INT,
  `Phone` INT,
  `Address` VARCHAR(30),
  PRIMARY KEY (`ID`),
  CONSTRAINT `FK_Employee.Task_ID`
    FOREIGN KEY (`Task_ID`)
      REFERENCES `Task`(`ID`),
  CONSTRAINT `FK_Employee.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);

CREATE TABLE  `Veterinary` (
  `ID` INT,
  `FirstName` VARCHAR(30),
  `LastName` VARCHAR(30),
  `CountryCode` INT,
  `Phonenumber` INT,
  `Email` VARCHAR(30),
  PRIMARY KEY (`ID`)
);

CREATE TABLE `Consultations` (
  `Vet_ID` INT,
  `Firm_ID` INT,
  `DateConsulted` DATE,
  `Observations` VARCHAR(150),
  CONSTRAINT `FK_Consultations.Vet_ID`
    FOREIGN KEY (`Vet_ID`)
      REFERENCES `Veterinary`(`ID`),
  CONSTRAINT `FK_Consultations.Firm_ID`
    FOREIGN KEY (`Firm_ID`)
      REFERENCES `Firms`(`ID`)
);
	
