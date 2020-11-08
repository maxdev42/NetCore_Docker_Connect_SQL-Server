USE MyDatabase;

CREATE TABLE [dbo].[tb_country](  
   [id] [int] IDENTITY(1,1) NOT NULL,  
   [country] [varchar](100) NOT NULL,  
   [active] [bit] NOT NULL,  
   CONSTRAINT [PK_tb_country] PRIMARY KEY CLUSTERED  
   (  
   [id] ASC  
   )WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,    ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]  
) ON [PRIMARY] 

GO

INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'The United States', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'Germany', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'England', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'Netherlands', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'Italy', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'Brazil', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'South Africa', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'Japan', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'South Korea', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'North Korea', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'India', 1)  
INSERT [dbo].[tb_country] ([country], [active]) VALUES (N'Russia', 1) 

GO

CREATE PROCEDURE [dbo].[SP_COUNTRY_GET_LIST]  
AS  
   BEGIN  
   SELECT id  
    ,country  
    ,active 
   FROM tb_country  
END  