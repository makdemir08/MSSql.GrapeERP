CREATE TABLE [Log].[DbChangeLog](
	[DbChangeLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[EventType] [nvarchar](50) NULL,
	[PostTime] [datetime] NULL,
	[SPID] [int] NULL,
	[ServerName] [nvarchar](50) NULL,
	[LoginName] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[DatabaseName] [nvarchar](50) NULL,
	[SchemaName] [nvarchar](10) NULL,
	[ObjectName] [nvarchar](150) NULL,
	[ObjectType] [nvarchar](50) NULL,
	[CommandText] [text] NULL,
	[AuditDateTime] [datetime] NULL,
 CONSTRAINT [PK_DbChangeLog] PRIMARY KEY CLUSTERED 
(
	[DbChangeLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LOG]
) ON [LOG] TEXTIMAGE_ON [LOG]

