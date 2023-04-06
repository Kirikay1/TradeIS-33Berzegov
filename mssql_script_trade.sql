create database [TradeIS-33Berzegov]
go
use [TradeIS-33Berzegov]
go
create table [Role]
(
	RoleID int primary key identity,
	RoleName nvarchar(100) not null
)
go
create table [Info]
(
	InfoID int primary key identity,
	UserSurname nvarchar(100) not null,
	UserName nvarchar(100) not null,
	UserPatronymic nvarchar(100) not null,
)
go
create table [User]
(
	UserID int primary key identity,
	UserInfo int foreign key references [Info](InfoID) not null,
	UserLogin nvarchar(max) not null,
	UserPassword nvarchar(max) not null,
	UserRole int foreign key references [Role](RoleID) not null
)
go
create table [Status]
(
	StatusID int primary key identity,
	StatusName nvarchar(100) not null,
)
go
create table [Street]
(
	StreetID int primary key identity,
	StreetName nvarchar(100) not null,
)
go
create table [City]
(
	CityID int primary key identity,
	CityName nvarchar(100) not null,
)
go
create table [PickupPoint]
(
	PickupPointID int primary key identity,
	IndexPickupPoint int not null,
	City int foreign key references [City](CityID) not null,
	Street int foreign key references [Street](StreetID) not null,
	House int not null
)
go
create table [Order]
(
	OrderID int primary key identity,
	OrderNumber int not null,
	Order—ontents nvarchar(max) not null,
	OrderDate datetime not null,
	OrderDeliveryDate datetime not null,
	OrderPickupPoint int foreign key references [PickupPoint](PickupPointID) not null,
	OrderInfo int foreign key references [Info](InfoID) null,
	OrderCodeToObtain int not null,
	OrderStatus int foreign key references [Status](StatusID) not null,
)
go
create table [TovarOfName]
(
	TovarNameID int primary key identity,
	TovarOfName nvarchar(150) not null,
)
go
create table [Provider]
(
	ProviderID int primary key identity,
	ProviderName nvarchar(150) not null,
)
go
create table [Manufacturer]
(
	ManufacturerID int primary key identity,
	ManufacturerName nvarchar(150) not null,
)
go
create table [Tovar]
(
	TovarID int primary key identity,
	TovarName int foreign key references [TovarOfName](TovarNameID) not null,
	TovarManufacturer int foreign key references [Manufacturer](ManufacturerID) not null,
	TovarProvider int foreign key references [Provider](ProviderID) not null,
	TovarDescription nvarchar(max) not null,
)
go
create table [Category]
(
	CategoryID int primary key identity,
	CategoryName nvarchar(150) not null,
)
go
create table [MeasurementUnit]
(
	MeasurementUnitID int primary key identity,
	MeasurementUnitName nvarchar(50) not null,
)
go
create table Product
(
	ProductArticleNumber nvarchar(100) primary key,
	ProductTovar int foreign key references [Tovar](TovarID) not null,
	ProductMeasurementUnit int foreign key references [MeasurementUnit](MeasurementUnitID) not null,
	ProductCost decimal(19,4) not null,
	ProductMaximumDiscountAmount tinyint null,
	ProductCategory int foreign key references [Category](CategoryID) not null,
	ProductDiscountAmount tinyint null,
	ProductQuantityInStock int not null,
	ProductPhoto image null,
)
go
create table OrderProduct
(
	OrderID int foreign key references [Order](OrderID) not null,
	ProductArticleNumber nvarchar(100) foreign key references Product(ProductArticleNumber) not null,
	Primary key (OrderID,ProductArticleNumber)
)
go