DROP DATABASE IF EXISTS crimefiledb;
CREATE DATABASE crimefiledb;
use crimefiledb;
CREATE TABLE admin (
    aid varchar(15) PRIMARY KEY,
    pswd varchar(15),
    Aname varchar(20) not null,
    Email varchar(30),
    Mobile varchar(14)
);
CREATE TABLE Complaints (
    Complaint_Id VARCHAR(50) PRIMARY KEY,
    Category VARCHAR(50),
    Sub_Category VARCHAR(50),
    AppDate DATE,
    AppTime TIME,
    Delay_Reason VARCHAR(50),
    Incident_Occur VARCHAR(50),
    Evidence Longblob,
    EvidenceType VARCHAR(50),
    Additional_Info VARCHAR(140),
    Status VARCHAR(15) default 'waiting',
    DOC DATE
);
create table Complainants (
    Complaint_Id VARCHAR(50) PRIMARY KEY,
    Complainant_Name VARCHAR(50),
    Gender VARCHAR(50),
    DOB DATE,
    Mobile VARCHAR(13),
    Email VARCHAR(50) unique key,
    Address VARCHAR(50),
    Relation_Victim VARCHAR(50),
    Any_Id_of_Victim VARCHAR(50),
    Additional_Info VARCHAR(140)
);
CREATE TABLE AnonyComplaints (
    Complaint_Id VARCHAR(50) PRIMARY KEY,
    Category VARCHAR(50),
    AppDate Date,
    AppTime Time,
    Delay_Reason VARCHAR(50),
    Incident_Occur VARCHAR(50),
    Evidence Longblob,
    EvidenceType VARCHAR(50),
    State VARCHAR(50),
    District VARCHAR(50),
    Police_Station VARCHAR(50),
    Additinal_Info VARCHAR(500),
    Status VARCHAR(15) default 'waiting',
    DOC DATE
);
CREATE TABLE SuspectDetails (
    Complaint_Id VARCHAR(50) PRIMARY KEY,
    Suspect_Name VARCHAR(50) Not Null,
    Suspect_Id VARCHAR(20) Not Null,
    Id_Number VARCHAR(20),
    Address VARCHAR(50),
    Additional_Info VARCHAR(500)
);

CREATE TABLE test (
    AppDate DATE,
    AppTime TIME
);
insert into admin
values(
        'kash786',
        'kash313',
        'Kashif Husain',
        'kashifhusainjee@gmail.com',
        '917769869980'
    );
insert into admin
values(
        'sanket786',
        'sanket313',
        'Sanket Pempakwar',
        'pempakwarsanket@gmail.com',
        '918657353524'
    );
    
    
    
















DELIMITER / /
CREATE PROCEDURE ShowAnonymous()
BEGIN
	select  Complaint_Id,Category from anonycomplaints ORDER BY  doc desc;
END / / 

CREATE PROCEDURE getAnoComplaints(Id varchar(50)) BEGIN
select Complaint_Id, Category, AppDate, AppTime, Delay_Reason, Incident_Occur, EvidenceType, State, District, Police_Station, Additinal_Info, Status, DOC
 from anonycomplaints where Complaint_Id=Id;
END / /

 CREATE PROCEDURE DeleteAnonymous(id varchar(50)) BEGIN
	 delete from anonycomplaints where Complaint_Id=id;
	 delete from suspectdetails where Complaint_Id=id;
END / / 

CREATE PROCEDURE UpdateAnonymous(id varchar(50),statec varchar(50)) BEGIN
update anonycomplaints set Status=statec where Complaint_Id=id;
END / /

 CREATE PROCEDURE InsertsAnonymous(    Complaint_Id VARCHAR(50),    Category varchar(50),    AppDate Date,    AppTime Time,    Delay_Reason varchar(50),    Incident_Occur varchar(50),    Evidence longblob,    EvidenceType varchar(50),    State varchar(50),    District varchar(50),    Police_Station varchar(50),    Additinal_Info varchar(500),    Status varchar(15),    DOC varchar(10),    Suspect_Name varchar(50),    Suspect_Id varchar(20),    Id_Number varchar(20),    Address varchar(50),    Additional_Info varchar(500)) BEGIN
insert into AnonyComplaints values (        Complaint_Id,        Category,        AppDate,        AppTime,        Delay_Reason,        Incident_Occur,        Evidence,        EvidenceType,        State,        District,        Police_Station,        Additinal_Info,        Status,        NOW()    );
insert into SuspectDetails values (        Complaint_Id,        Suspect_Name,        Suspect_Id,        Id_Number,        Address,        Additional_Info     );
END / /


 CREATE PROCEDURE ANOtrack(id varchar(255)) BEGIN
select Status,    DOC,    Police_Station,    District from anonycomplaints where Complaint_Id = id; 
END / / 














CREATE PROCEDURE ShowG() BEGIN
	select Complaint_Id,Category,Sub_Category from complaints ORDER BY  doc desc;
END / / 

CREATE PROCEDURE getComplaintsG(i varchar(50))
BEGIN
	select  Complaint_Id, Category, Sub_Category, AppDate, AppTime, Delay_Reason, Incident_Occur, EvidenceType, Additional_Info, Status, DOC from complaints where Complaint_Id=i;
    select * from complainants where  Complaint_Id=i;
    select * from suspectdetails where Complaint_Id=i;
END / / 

 CREATE PROCEDURE Deletes(id varchar(50)) BEGIN
	 delete from complaints where Complaint_Id=id;
	 delete from suspectdetails where Complaint_Id=id;
	 delete from complainants where Complaint_Id=id;
END / /

CREATE PROCEDURE UpdateS(id varchar(50),Statec varchar(50)) BEGIN	
update complaints set Status=statec where Complaint_Id=id;
END / /

CREATE PROCEDURE Inserts(    Complaint_Id varchar(50),    Category varchar(50),    Sub_Category varchar(50),    AppDate date,    AppTime time,    Delay_Reason varchar(50),    Incident_Occur varchar(50),    Evidence longblob,    EvidenceType VARCHAR(50),    Additional_Info varchar(500),       Suspect_Id varchar(50),    Id_Number varchar(50),    Address varchar(50),    Additional_Info2 varchar(50),    Complainant_Name varchar(50),    Gender varchar(50),    DOB date,    Mobile varchar(50),    Email varchar(50),    Address2 varchar(50),    Relation_Victim varchar(50),    Any_Id_of_Victim varchar(50),    Additional_Info3 varchar(50),    Suspect_Name varchar(50)) BEGIN
insert into complaints values(Complaint_Id, Category, Sub_Category, AppDate, AppTime, Delay_Reason, Incident_Occur, Evidence,EvidenceType, Additional_Info, default, NOW());
insert into SuspectDetails values (      Complaint_Id,        Suspect_Name,        Suspect_Id,        Id_Number,        Address,        Additional_Info2    );
insert into complainants values(Complaint_Id, Complainant_Name, Gender, DOB, Mobile, Email, Address2, Relation_Victim, Any_Id_of_Victim, Additional_Info3);
END / /

CREATE PROCEDURE COtrack(id varchar(255)) BEGIN
select Status,    DOC,    Appdate,    Apptime,    category from complaints where Complaint_Id = id;
END / / 
DELIMITER ;