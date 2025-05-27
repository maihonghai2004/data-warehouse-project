/*
DROP DATABASE HospitalDW
GO
CREATE DATABASE HospitalDW
GO
*/
USE HospitalDW
;
CREATE TABLE [dbo].[DimComorbidity](
	[RAISED CARDIAC ENZYMES] [bit] NULL,
	[SEVERE ANAEMIA] [bit] NULL,
	[ANAEMIA] [bit] NULL,
	[DM] [bit] NULL,
	[CAD] [bit] NULL,
	[HTN] [bit] NULL,
	[PRIOR CMP] [bit] NULL,
	[CKD] [bit] NULL,
	[ComorbidityID] [int] IDENTITY(1,1) primary key,
)
GO


CREATE TABLE [dbo].[DimDiagnosis](
	[STABLE ANGINA] BIT NULL,
	[ACS] BIT NULL,
	[STEMI] BIT NULL,
	[ATYPICAL CHEST PAIN] BIT NULL,
	[HEART FAILURE] BIT NULL,
	[HFREF] BIT NULL,
	[HFNEF] BIT NULL,
	[VALVULAR] BIT NULL,
	[CHB] BIT NULL,
	[SSS] BIT NULL,
	[AKI] BIT NULL,
	[CVA INFRACT] BIT NULL,
	[CVA BLEED] BIT NULL,
	[AF] BIT NULL,
	[VT] BIT NULL,
	[PSVT] BIT NULL,
	[CONGENITAL] BIT NULL,
	[UTI] BIT NULL,
	[NEURO CARDIOGENIC SYNCOPE] BIT NULL,
	[ORTHOSTATIC] BIT NULL,
	[INFECTIVE ENDOCARDITIS] BIT NULL,
	[DVT] BIT NULL,
	[CARDIOGENIC SHOCK] BIT NULL,
	[SHOCK] BIT NULL,
	[PULMONARY EMBOLISM] BIT NULL,
	[CHEST INFECTION] BIT NULL,
	[DiagnosisID] INT IDENTITY(1,1) PRIMARY KEY
)
GO



CREATE TABLE [dbo].[DimHabit](
	[HabitID] INT IDENTITY(1,1) PRIMARY KEY,
	[HabbitName] VARCHAR(50) NULL,
	[SMOKING] BIT NULL,
	[ALCOHO] BIT NULL
)
GO


CREATE TABLE [dbo].[DimPersonHealth](
	[HB] DECIMAL(7,2) NULL,
	[TLC] DECIMAL(7,2) NULL,
	[PLATELETS] DECIMAL(7,2) NULL,
	[GLUCOSE] DECIMAL(7,2) NULL,
	[UREA] DECIMAL(7,2) NULL,
	[CREATININE] DECIMAL(7,2) NULL,
	[BNP] INT NULL,
	[PersonHealthID] INT IDENTITY(1,1) PRIMARY KEY
)
GO


CREATE TABLE [dbo].[DimPerson](
	[AGE] INT NULL,
	[GENDER] NVARCHAR(255) NULL,
	[RURAL] NVARCHAR(255) NULL,
	[PersonID] INT IDENTITY(1,1) PRIMARY KEY
)
GO



CREATE TABLE dbo.DimDate (
   [DateKey]  int   NOT NULL
,  [Date]  smalldatetime   NULL
,  [DayOfWeek]  tinyint   NOT NULL
,  [DayName]  varchar(9)   NOT NULL
,  [DayOfMonth]  tinyint   NOT NULL
,  [DayOfYear]  smallint   NOT NULL
,  [WeekOfYear]  tinyint   NOT NULL
,  [MonthName]  varchar(9)   NOT NULL
,  [MonthOfYear]  tinyint   NOT NULL
,  [Quarter]  tinyint   NOT NULL
,  [Year]  smallint   NOT NULL
,  [IsWeekday]  char(7)  DEFAULT '0' NOT NULL
, CONSTRAINT [PK_dbo.DimDate] PRIMARY KEY CLUSTERED 
( [DateKey] )
) ON [PRIMARY]
;
GO

CREATE TABLE [dbo].[FactAdmissionReport](
	[SNO] [int] primary key,
	[MRD No#] [int],
	[AdmissionDateID] [int] references DimDate(DateKey),
	[DischargeDateID] [int] references DimDate(DateKey),
	[PersonID] [int] references DimPerson(PersonID) ,
	[PersonHealthID] [int] references DimPersonHealth(PersonHealthID),
	[ComorbidityID] [int] references DimComorbidity(ComorbidityID),
	[HabitID] [int] references DimHabit(HabitID),
	[TYPE OF ADMISSION-EMERGENCY/OPD] nvarchar(255),
    [OUTCOME] nvarchar(255)
)

GO
CREATE TABLE [dbo].[FactDiagnosisReport](
	[SNO] [int] primary key,
	[MRD No#] [int],
	[AdmissionDateID] [int] references DimDate(DateKey),
	[DischargeDateID] [int] references DimDate(DateKey),
	[PersonID] [int] references DimPerson(PersonID),
	[PersonHealthID] [int] references DimPersonHealth(PersonHealthID),
	[ComorbidityID] [int] references DimComorbidity(ComorbidityID),
	[DiagnosisID] [int] references DimDiagnosis(DiagnosisID)
)
