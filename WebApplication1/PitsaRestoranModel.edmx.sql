
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/22/2026 10:59:30
-- Generated from EDMX file: C:\Users\opilane\source\repos\PitsaRestoran\WebApplication1\PitsaRestoranModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Pitsarestoran];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AmetiTootaja_Ametikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tootaja_AmetikohtSet] DROP CONSTRAINT [FK_AmetiTootaja_Ametikoht];
GO
IF OBJECT_ID(N'[dbo].[FK_kategooriaToode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ToodeSet] DROP CONSTRAINT [FK_kategooriaToode];
GO
IF OBJECT_ID(N'[dbo].[FK_KlientTellimus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TellimusSet] DROP CONSTRAINT [FK_KlientTellimus];
GO
IF OBJECT_ID(N'[dbo].[FK_KoostisosaPitsa_Koostisosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pitsa_KoostisosaSet] DROP CONSTRAINT [FK_KoostisosaPitsa_Koostisosa];
GO
IF OBJECT_ID(N'[dbo].[FK_KoostisosaTarnija_Koostisosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tarnija_KoostisosaSet] DROP CONSTRAINT [FK_KoostisosaTarnija_Koostisosa];
GO
IF OBJECT_ID(N'[dbo].[FK_LaudTellimus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TellimusSet] DROP CONSTRAINT [FK_LaudTellimus];
GO
IF OBJECT_ID(N'[dbo].[FK_PitsaPitsa_Koostisosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Pitsa_KoostisosaSet] DROP CONSTRAINT [FK_PitsaPitsa_Koostisosa];
GO
IF OBJECT_ID(N'[dbo].[FK_TarnijaTarnija_Koostisosa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tarnija_KoostisosaSet] DROP CONSTRAINT [FK_TarnijaTarnija_Koostisosa];
GO
IF OBJECT_ID(N'[dbo].[FK_Tellimuskohaletoimetamine]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[kohaletoimetamineSet] DROP CONSTRAINT [FK_Tellimuskohaletoimetamine];
GO
IF OBJECT_ID(N'[dbo].[FK_TellimusTellimus_Toode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tellimus_ToodeSet] DROP CONSTRAINT [FK_TellimusTellimus_Toode];
GO
IF OBJECT_ID(N'[dbo].[FK_ToodePitsa]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[PitsaSet] DROP CONSTRAINT [FK_ToodePitsa];
GO
IF OBJECT_ID(N'[dbo].[FK_ToodeTellimus_Toode]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tellimus_ToodeSet] DROP CONSTRAINT [FK_ToodeTellimus_Toode];
GO
IF OBJECT_ID(N'[dbo].[FK_TootajaTootaja_Ametikoht]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tootaja_AmetikohtSet] DROP CONSTRAINT [FK_TootajaTootaja_Ametikoht];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AmetiSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AmetiSet];
GO
IF OBJECT_ID(N'[dbo].[kategooriaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kategooriaSet];
GO
IF OBJECT_ID(N'[dbo].[KlientSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KlientSet];
GO
IF OBJECT_ID(N'[dbo].[kohaletoimetamineSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[kohaletoimetamineSet];
GO
IF OBJECT_ID(N'[dbo].[KoostisosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[KoostisosaSet];
GO
IF OBJECT_ID(N'[dbo].[LaudSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LaudSet];
GO
IF OBJECT_ID(N'[dbo].[Pitsa_KoostisosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pitsa_KoostisosaSet];
GO
IF OBJECT_ID(N'[dbo].[PitsaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PitsaSet];
GO
IF OBJECT_ID(N'[dbo].[Tarnija_KoostisosaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tarnija_KoostisosaSet];
GO
IF OBJECT_ID(N'[dbo].[TarnijaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TarnijaSet];
GO
IF OBJECT_ID(N'[dbo].[Tellimus_ToodeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tellimus_ToodeSet];
GO
IF OBJECT_ID(N'[dbo].[TellimusSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TellimusSet];
GO
IF OBJECT_ID(N'[dbo].[ToodeSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ToodeSet];
GO
IF OBJECT_ID(N'[dbo].[Tootaja_AmetikohtSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tootaja_AmetikohtSet];
GO
IF OBJECT_ID(N'[dbo].[TootajaSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TootajaSet];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TootajaSet'
CREATE TABLE [dbo].[TootajaSet] (
    [TootajaID] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [isikukood] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'AmetiSet'
CREATE TABLE [dbo].[AmetiSet] (
    [AmetiID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL
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

-- Creating table 'kategooriaSet'
CREATE TABLE [dbo].[kategooriaSet] (
    [kategooriaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'ToodeSet'
CREATE TABLE [dbo].[ToodeSet] (
    [ToodeID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kirjeldus] nvarchar(max)  NOT NULL,
    [hind] nvarchar(max)  NOT NULL,
    [kategooria_kategooriaID] int  NOT NULL
);
GO

-- Creating table 'PitsaSet'
CREATE TABLE [dbo].[PitsaSet] (
    [PitsaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [Toode_ToodeID] int  NOT NULL
);
GO

-- Creating table 'KoostisosaSet'
CREATE TABLE [dbo].[KoostisosaSet] (
    [KoostisosaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [kehtivusaeg] datetime  NOT NULL
);
GO

-- Creating table 'Pitsa_KoostisosaSet'
CREATE TABLE [dbo].[Pitsa_KoostisosaSet] (
    [Pitsa_KoostisosaID] int IDENTITY(1,1) NOT NULL,
    [kogus] nvarchar(max)  NOT NULL,
    [Koostisosa_KoostisosaID] int  NOT NULL,
    [Pitsa_PitsaID] int  NOT NULL
);
GO

-- Creating table 'KlientSet'
CREATE TABLE [dbo].[KlientSet] (
    [KlientID] int IDENTITY(1,1) NOT NULL,
    [eesnimi] nvarchar(max)  NOT NULL,
    [perenimi] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TellimusSet'
CREATE TABLE [dbo].[TellimusSet] (
    [TellimusID] int IDENTITY(1,1) NOT NULL,
    [kuupaev] datetime  NOT NULL,
    [kellaaeg] time  NOT NULL,
    [staatus] nvarchar(max)  NOT NULL,
    [Klient_KlientID] int  NOT NULL,
    [Laud_LaudID] int  NOT NULL
);
GO

-- Creating table 'LaudSet'
CREATE TABLE [dbo].[LaudSet] (
    [LaudID] int IDENTITY(1,1) NOT NULL,
    [number] int  NOT NULL,
    [kohtade_arv] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tellimus_ToodeSet'
CREATE TABLE [dbo].[Tellimus_ToodeSet] (
    [Tellimus_ToodeID] int IDENTITY(1,1) NOT NULL,
    [kogus] nvarchar(max)  NOT NULL,
    [Tellimus_TellimusID] int  NOT NULL,
    [Toode_ToodeID] int  NOT NULL
);
GO

-- Creating table 'kohaletoimetamineSet'
CREATE TABLE [dbo].[kohaletoimetamineSet] (
    [kohaletoimetamineID] int IDENTITY(1,1) NOT NULL,
    [aadress] nvarchar(max)  NOT NULL,
    [staatus] nvarchar(max)  NOT NULL,
    [Tellimus_TellimusID] int  NOT NULL
);
GO

-- Creating table 'TarnijaSet'
CREATE TABLE [dbo].[TarnijaSet] (
    [TarnijaID] int IDENTITY(1,1) NOT NULL,
    [nimetus] nvarchar(max)  NOT NULL,
    [telefon] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tarnija_KoostisosaSet'
CREATE TABLE [dbo].[Tarnija_KoostisosaSet] (
    [Tarnija_KoostisosaID] int IDENTITY(1,1) NOT NULL,
    [tarneriik] nvarchar(max)  NOT NULL,
    [tarnekuupaev] datetime  NOT NULL,
    [kogus] nvarchar(max)  NOT NULL,
    [Tarnija_TarnijaID] int  NOT NULL,
    [Koostisosa_KoostisosaID] int  NOT NULL
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

-- Creating primary key on [kategooriaID] in table 'kategooriaSet'
ALTER TABLE [dbo].[kategooriaSet]
ADD CONSTRAINT [PK_kategooriaSet]
    PRIMARY KEY CLUSTERED ([kategooriaID] ASC);
GO

-- Creating primary key on [ToodeID] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [PK_ToodeSet]
    PRIMARY KEY CLUSTERED ([ToodeID] ASC);
GO

-- Creating primary key on [PitsaID] in table 'PitsaSet'
ALTER TABLE [dbo].[PitsaSet]
ADD CONSTRAINT [PK_PitsaSet]
    PRIMARY KEY CLUSTERED ([PitsaID] ASC);
GO

-- Creating primary key on [KoostisosaID] in table 'KoostisosaSet'
ALTER TABLE [dbo].[KoostisosaSet]
ADD CONSTRAINT [PK_KoostisosaSet]
    PRIMARY KEY CLUSTERED ([KoostisosaID] ASC);
GO

-- Creating primary key on [Pitsa_KoostisosaID] in table 'Pitsa_KoostisosaSet'
ALTER TABLE [dbo].[Pitsa_KoostisosaSet]
ADD CONSTRAINT [PK_Pitsa_KoostisosaSet]
    PRIMARY KEY CLUSTERED ([Pitsa_KoostisosaID] ASC);
GO

-- Creating primary key on [KlientID] in table 'KlientSet'
ALTER TABLE [dbo].[KlientSet]
ADD CONSTRAINT [PK_KlientSet]
    PRIMARY KEY CLUSTERED ([KlientID] ASC);
GO

-- Creating primary key on [TellimusID] in table 'TellimusSet'
ALTER TABLE [dbo].[TellimusSet]
ADD CONSTRAINT [PK_TellimusSet]
    PRIMARY KEY CLUSTERED ([TellimusID] ASC);
GO

-- Creating primary key on [LaudID] in table 'LaudSet'
ALTER TABLE [dbo].[LaudSet]
ADD CONSTRAINT [PK_LaudSet]
    PRIMARY KEY CLUSTERED ([LaudID] ASC);
GO

-- Creating primary key on [Tellimus_ToodeID] in table 'Tellimus_ToodeSet'
ALTER TABLE [dbo].[Tellimus_ToodeSet]
ADD CONSTRAINT [PK_Tellimus_ToodeSet]
    PRIMARY KEY CLUSTERED ([Tellimus_ToodeID] ASC);
GO

-- Creating primary key on [kohaletoimetamineID] in table 'kohaletoimetamineSet'
ALTER TABLE [dbo].[kohaletoimetamineSet]
ADD CONSTRAINT [PK_kohaletoimetamineSet]
    PRIMARY KEY CLUSTERED ([kohaletoimetamineID] ASC);
GO

-- Creating primary key on [TarnijaID] in table 'TarnijaSet'
ALTER TABLE [dbo].[TarnijaSet]
ADD CONSTRAINT [PK_TarnijaSet]
    PRIMARY KEY CLUSTERED ([TarnijaID] ASC);
GO

-- Creating primary key on [Tarnija_KoostisosaID] in table 'Tarnija_KoostisosaSet'
ALTER TABLE [dbo].[Tarnija_KoostisosaSet]
ADD CONSTRAINT [PK_Tarnija_KoostisosaSet]
    PRIMARY KEY CLUSTERED ([Tarnija_KoostisosaID] ASC);
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

-- Creating foreign key on [kategooria_kategooriaID] in table 'ToodeSet'
ALTER TABLE [dbo].[ToodeSet]
ADD CONSTRAINT [FK_kategooriaToode]
    FOREIGN KEY ([kategooria_kategooriaID])
    REFERENCES [dbo].[kategooriaSet]
        ([kategooriaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_kategooriaToode'
CREATE INDEX [IX_FK_kategooriaToode]
ON [dbo].[ToodeSet]
    ([kategooria_kategooriaID]);
GO

-- Creating foreign key on [Toode_ToodeID] in table 'PitsaSet'
ALTER TABLE [dbo].[PitsaSet]
ADD CONSTRAINT [FK_ToodePitsa]
    FOREIGN KEY ([Toode_ToodeID])
    REFERENCES [dbo].[ToodeSet]
        ([ToodeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodePitsa'
CREATE INDEX [IX_FK_ToodePitsa]
ON [dbo].[PitsaSet]
    ([Toode_ToodeID]);
GO

-- Creating foreign key on [Koostisosa_KoostisosaID] in table 'Pitsa_KoostisosaSet'
ALTER TABLE [dbo].[Pitsa_KoostisosaSet]
ADD CONSTRAINT [FK_KoostisosaPitsa_Koostisosa]
    FOREIGN KEY ([Koostisosa_KoostisosaID])
    REFERENCES [dbo].[KoostisosaSet]
        ([KoostisosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KoostisosaPitsa_Koostisosa'
CREATE INDEX [IX_FK_KoostisosaPitsa_Koostisosa]
ON [dbo].[Pitsa_KoostisosaSet]
    ([Koostisosa_KoostisosaID]);
GO

-- Creating foreign key on [Pitsa_PitsaID] in table 'Pitsa_KoostisosaSet'
ALTER TABLE [dbo].[Pitsa_KoostisosaSet]
ADD CONSTRAINT [FK_PitsaPitsa_Koostisosa]
    FOREIGN KEY ([Pitsa_PitsaID])
    REFERENCES [dbo].[PitsaSet]
        ([PitsaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PitsaPitsa_Koostisosa'
CREATE INDEX [IX_FK_PitsaPitsa_Koostisosa]
ON [dbo].[Pitsa_KoostisosaSet]
    ([Pitsa_PitsaID]);
GO

-- Creating foreign key on [Klient_KlientID] in table 'TellimusSet'
ALTER TABLE [dbo].[TellimusSet]
ADD CONSTRAINT [FK_KlientTellimus]
    FOREIGN KEY ([Klient_KlientID])
    REFERENCES [dbo].[KlientSet]
        ([KlientID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KlientTellimus'
CREATE INDEX [IX_FK_KlientTellimus]
ON [dbo].[TellimusSet]
    ([Klient_KlientID]);
GO

-- Creating foreign key on [Laud_LaudID] in table 'TellimusSet'
ALTER TABLE [dbo].[TellimusSet]
ADD CONSTRAINT [FK_LaudTellimus]
    FOREIGN KEY ([Laud_LaudID])
    REFERENCES [dbo].[LaudSet]
        ([LaudID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LaudTellimus'
CREATE INDEX [IX_FK_LaudTellimus]
ON [dbo].[TellimusSet]
    ([Laud_LaudID]);
GO

-- Creating foreign key on [Tellimus_TellimusID] in table 'Tellimus_ToodeSet'
ALTER TABLE [dbo].[Tellimus_ToodeSet]
ADD CONSTRAINT [FK_TellimusTellimus_Toode]
    FOREIGN KEY ([Tellimus_TellimusID])
    REFERENCES [dbo].[TellimusSet]
        ([TellimusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TellimusTellimus_Toode'
CREATE INDEX [IX_FK_TellimusTellimus_Toode]
ON [dbo].[Tellimus_ToodeSet]
    ([Tellimus_TellimusID]);
GO

-- Creating foreign key on [Toode_ToodeID] in table 'Tellimus_ToodeSet'
ALTER TABLE [dbo].[Tellimus_ToodeSet]
ADD CONSTRAINT [FK_ToodeTellimus_Toode]
    FOREIGN KEY ([Toode_ToodeID])
    REFERENCES [dbo].[ToodeSet]
        ([ToodeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ToodeTellimus_Toode'
CREATE INDEX [IX_FK_ToodeTellimus_Toode]
ON [dbo].[Tellimus_ToodeSet]
    ([Toode_ToodeID]);
GO

-- Creating foreign key on [Tellimus_TellimusID] in table 'kohaletoimetamineSet'
ALTER TABLE [dbo].[kohaletoimetamineSet]
ADD CONSTRAINT [FK_Tellimuskohaletoimetamine]
    FOREIGN KEY ([Tellimus_TellimusID])
    REFERENCES [dbo].[TellimusSet]
        ([TellimusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Tellimuskohaletoimetamine'
CREATE INDEX [IX_FK_Tellimuskohaletoimetamine]
ON [dbo].[kohaletoimetamineSet]
    ([Tellimus_TellimusID]);
GO

-- Creating foreign key on [Tarnija_TarnijaID] in table 'Tarnija_KoostisosaSet'
ALTER TABLE [dbo].[Tarnija_KoostisosaSet]
ADD CONSTRAINT [FK_TarnijaTarnija_Koostisosa]
    FOREIGN KEY ([Tarnija_TarnijaID])
    REFERENCES [dbo].[TarnijaSet]
        ([TarnijaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TarnijaTarnija_Koostisosa'
CREATE INDEX [IX_FK_TarnijaTarnija_Koostisosa]
ON [dbo].[Tarnija_KoostisosaSet]
    ([Tarnija_TarnijaID]);
GO

-- Creating foreign key on [Koostisosa_KoostisosaID] in table 'Tarnija_KoostisosaSet'
ALTER TABLE [dbo].[Tarnija_KoostisosaSet]
ADD CONSTRAINT [FK_KoostisosaTarnija_Koostisosa]
    FOREIGN KEY ([Koostisosa_KoostisosaID])
    REFERENCES [dbo].[KoostisosaSet]
        ([KoostisosaID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KoostisosaTarnija_Koostisosa'
CREATE INDEX [IX_FK_KoostisosaTarnija_Koostisosa]
ON [dbo].[Tarnija_KoostisosaSet]
    ([Koostisosa_KoostisosaID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------