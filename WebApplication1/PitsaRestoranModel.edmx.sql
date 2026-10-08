
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2026 12:32:59
-- Generated from EDMX file: C:\Users\opilane\source\repos\WebApplication1\WebApplication1\PitsaRestoranModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [modelDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TootajaSet'
CREATE TABLE [dbo].[TootajaSet] (
    [TootajaID] int IDENTITY(1,1) NOT NULL,
    [nimiPereNimi] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AmetiSet'
CREATE TABLE [dbo].[AmetiSet] (
    [AmetiID] int IDENTITY(1,1) NOT NULL,
    [AmetiNimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tootaja_AmetikohtSet'
CREATE TABLE [dbo].[Tootaja_AmetikohtSet] (
    [Tootaja_AmetikohtID] int IDENTITY(1,1) NOT NULL,
    [AmetiNimetus] nvarchar(max)  NOT NULL,
    [Tootaja_TootajaID] int  NOT NULL,
    [Ameti_AmetiID] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [TootajaID] in table 'TootajaSet'
ALTER TABLE [dbo].[TootajaSet]
ADD CONSTRAINT [PK_TootajaSet]
    PRIMARY KEY CLUSTERED ([TootajaID] ASC);
GO

-- Creating primary key on [AmetiID] in table 'AmetiSet'
ALTER TABLE [dbo].[AmetiSet]
ADD CONSTRAINT [PK_AmetiSet]
    PRIMARY KEY CLUSTERED ([AmetiID] ASC);
GO

-- Creating primary key on [Tootaja_AmetikohtID] in table 'Tootaja_AmetikohtSet'
ALTER TABLE [dbo].[Tootaja_AmetikohtSet]
ADD CONSTRAINT [PK_Tootaja_AmetikohtSet]
    PRIMARY KEY CLUSTERED ([Tootaja_AmetikohtID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Tootaja_TootajaID] in table 'Tootaja_AmetikohtSet'
ALTER TABLE [dbo].[Tootaja_AmetikohtSet]
ADD CONSTRAINT [FK_TootajaTootaja_Ametikoht]
    FOREIGN KEY ([Tootaja_TootajaID])
    REFERENCES [dbo].[TootajaSet]
        ([TootajaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TootajaTootaja_Ametikoht'
CREATE INDEX [IX_FK_TootajaTootaja_Ametikoht]
ON [dbo].[Tootaja_AmetikohtSet]
    ([Tootaja_TootajaID]);
GO

-- Creating foreign key on [Ameti_AmetiID] in table 'Tootaja_AmetikohtSet'
ALTER TABLE [dbo].[Tootaja_AmetikohtSet]
ADD CONSTRAINT [FK_AmetiTootaja_Ametikoht]
    FOREIGN KEY ([Ameti_AmetiID])
    REFERENCES [dbo].[AmetiSet]
        ([AmetiID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AmetiTootaja_Ametikoht'
CREATE INDEX [IX_FK_AmetiTootaja_Ametikoht]
ON [dbo].[Tootaja_AmetikohtSet]
    ([Ameti_AmetiID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------