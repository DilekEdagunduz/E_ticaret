-- ETicaret Veritabanı
-- Ürünün kendine ait 5 kolonu olacak
-- ÜRünün birden fazla kategorisi olabilir.
-- Her kategorinin üst veya alt kategorisi olabilir.
-- Kullanıcıların en az 4 kolonu olacak.
-- Kullanıcılar ürünleri favoriye ekleyebilecek. ( Favori tablosu )
-- Kullanıcılar siteden bir veya birden fazla ürün alabilir. (Sipariş, sipariş detay tabloları)
-- Şehir ve ilçe tabloları olacak. siparişin ilçe id si olacak **

Create table Product (
ID int PRIMARY KEY IDENTITY (1,1),
productName Nvarchar(MAX),
CategoryID int,
UnitPrice int,
Stock int
)

Create table Category (
ID int PRIMARY KEY IDENTITY (1,1),
CategoryName Nvarchar(MAX),
SubCategryId int,
)

Create table Customer (
ID int PRIMARY KEY IDENTITY (1,1),
FirstName Nvarchar(MAX),
LastName Nvarchar(MAX),
Adress Nvarchar(MAX),
CityID int,
districtID int
)

Create table Fovaries (
ID int PRIMARY KEY IDENTITY (1,1),
UserID int,
ProductId int,
)
Create table Orders (
ID int PRIMARY KEY IDENTITY (1,1),
CustomerID int,
RequiredDate Date,
ShippedDate Date
)
Create table OrdersDetails (
ID int PRIMARY KEY IDENTITY (1,1),
OrderID int,
ProductID int,
UnitPrice money,
Quantity int
)


-- Şehir ve ilçe tabloları olacak. siparişin ilçe id si olacak **

Create table City (
ID int PRIMARY KEY IDENTITY (1,1),
CityName nvarcahr(MAX),
)
Create table district (
ID int PRIMARY KEY IDENTITY (1,1),
districtName nvarcahr(MAX),
)