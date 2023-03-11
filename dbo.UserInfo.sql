CREATE TABLE [dbo].[UserInfo] (
    [Name]     NVARCHAR (50) NOT NULL,
    [EmailID]  NVARCHAR (50) NOT NULL,
    [Password] NVARCHAR(50)    NOT NULL,
    [MobileNo] BIGINT           NOT NULL,
    PRIMARY KEY CLUSTERED ([EmailID])
);

