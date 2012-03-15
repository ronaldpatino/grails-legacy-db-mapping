/*
Navicat SQL Server Data Transfer

Source Server         : sqlserv
Source Server Version : 100000
Source Host           : localhost:1433
Source Database       : test
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 100000
File Encoding         : 65001

Date: 2012-03-15 17:04:39
*/


-- ----------------------------
-- Table structure for [dbo].[CAB020]
-- ----------------------------
DROP TABLE [dbo].[CAB020]
GO
CREATE TABLE [dbo].[CAB020] (
[CODCABECERA] int NOT NULL IDENTITY(1,1) ,
[CODCLIENTE] int NULL ,
[FECHA] varchar(255) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[CAB020]', RESEED, 4)
GO

-- ----------------------------
-- Records of CAB020
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CAB020] ON
GO
INSERT INTO [dbo].[CAB020] ([CODCABECERA], [CODCLIENTE], [FECHA]) VALUES (N'1', N'1', N'12-12-12');
GO
INSERT INTO [dbo].[CAB020] ([CODCABECERA], [CODCLIENTE], [FECHA]) VALUES (N'2', N'2', N'12-12-12');
GO
INSERT INTO [dbo].[CAB020] ([CODCABECERA], [CODCLIENTE], [FECHA]) VALUES (N'3', N'1', N'12-13-12');
GO
INSERT INTO [dbo].[CAB020] ([CODCABECERA], [CODCLIENTE], [FECHA]) VALUES (N'4', N'1', N'12-14-12');
GO
SET IDENTITY_INSERT [dbo].[CAB020] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[CLI030]
-- ----------------------------
DROP TABLE [dbo].[CLI030]
GO
CREATE TABLE [dbo].[CLI030] (
[CODCLIENTE] int NOT NULL IDENTITY(1,1) ,
[NOMBRE] varchar(255) NULL ,
[APELLIDO] varchar(255) NULL ,
[CODCIUDAD] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[CLI030]', RESEED, 3)
GO

-- ----------------------------
-- Records of CLI030
-- ----------------------------
SET IDENTITY_INSERT [dbo].[CLI030] ON
GO
INSERT INTO [dbo].[CLI030] ([CODCLIENTE], [NOMBRE], [APELLIDO], [CODCIUDAD]) VALUES (N'1', N'juan', N'perez', N'1');
GO
INSERT INTO [dbo].[CLI030] ([CODCLIENTE], [NOMBRE], [APELLIDO], [CODCIUDAD]) VALUES (N'2', N'test', N'test', N'2');
GO
INSERT INTO [dbo].[CLI030] ([CODCLIENTE], [NOMBRE], [APELLIDO], [CODCIUDAD]) VALUES (N'3', N'aDSd', N'dad', N'1');
GO
SET IDENTITY_INSERT [dbo].[CLI030] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[DET010]
-- ----------------------------
DROP TABLE [dbo].[DET010]
GO
CREATE TABLE [dbo].[DET010] (
[CODDETALLE] int NOT NULL IDENTITY(1,1) ,
[CODCABECERA] int NULL ,
[CODPROD] int NULL ,
[CANTIDAD] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[DET010]', RESEED, 8)
GO

-- ----------------------------
-- Records of DET010
-- ----------------------------
SET IDENTITY_INSERT [dbo].[DET010] ON
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'1', N'1', N'1', N'12');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'2', N'1', N'2', N'13');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'3', N'1', N'5', N'10');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'4', N'2', N'1', N'5');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'5', N'3', N'2', N'5');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'6', N'3', N'3', N'11');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'7', N'3', N'4', N'9');
GO
INSERT INTO [dbo].[DET010] ([CODDETALLE], [CODCABECERA], [CODPROD], [CANTIDAD]) VALUES (N'8', N'4', N'5', N'45');
GO
SET IDENTITY_INSERT [dbo].[DET010] OFF
GO

-- ----------------------------
-- Table structure for [dbo].[PROD010]
-- ----------------------------
DROP TABLE [dbo].[PROD010]
GO
CREATE TABLE [dbo].[PROD010] (
[CODPROD] int NOT NULL IDENTITY(1,1) ,
[NOMBRE] varchar(255) NULL ,
[PRECIO] decimal(10,2) NULL ,
[IVA] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[PROD010]', RESEED, 5)
GO

-- ----------------------------
-- Records of PROD010
-- ----------------------------
SET IDENTITY_INSERT [dbo].[PROD010] ON
GO
INSERT INTO [dbo].[PROD010] ([CODPROD], [NOMBRE], [PRECIO], [IVA]) VALUES (N'1', N'MESA', N'11.56', N'12');
GO
INSERT INTO [dbo].[PROD010] ([CODPROD], [NOMBRE], [PRECIO], [IVA]) VALUES (N'2', N'SILLA', N'12.40', N'12');
GO
INSERT INTO [dbo].[PROD010] ([CODPROD], [NOMBRE], [PRECIO], [IVA]) VALUES (N'3', N'MESA CENTRO', N'15.99', N'12');
GO
INSERT INTO [dbo].[PROD010] ([CODPROD], [NOMBRE], [PRECIO], [IVA]) VALUES (N'4', N'SILLON', N'13.23', N'12');
GO
INSERT INTO [dbo].[PROD010] ([CODPROD], [NOMBRE], [PRECIO], [IVA]) VALUES (N'5', N'SILLA RELAX', N'14.22', N'12');
GO
SET IDENTITY_INSERT [dbo].[PROD010] OFF
GO

-- ----------------------------
-- Indexes structure for table CAB020
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[CAB020]
-- ----------------------------
ALTER TABLE [dbo].[CAB020] ADD PRIMARY KEY ([CODCABECERA])
GO

-- ----------------------------
-- Indexes structure for table CLI030
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[CLI030]
-- ----------------------------
ALTER TABLE [dbo].[CLI030] ADD PRIMARY KEY ([CODCLIENTE])
GO

-- ----------------------------
-- Indexes structure for table DET010
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[DET010]
-- ----------------------------
ALTER TABLE [dbo].[DET010] ADD PRIMARY KEY ([CODDETALLE])
GO

-- ----------------------------
-- Indexes structure for table PROD010
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[PROD010]
-- ----------------------------
ALTER TABLE [dbo].[PROD010] ADD PRIMARY KEY ([CODPROD])
GO
