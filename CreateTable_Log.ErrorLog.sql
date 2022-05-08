CREATE TABLE [Log].[ErrorLog](
	[ErrorLogId] [bigint] IDENTITY(1,1) NOT NULL,
	[ErrorDate] [datetime] NULL,
	[ProcedureName] [varchar](50) NULL,
	[ErrorMessage] [varchar](250) NULL,
	[ErrorLine] [int] NULL,
	[ErrorNumber] [int] NULL,
	[ErrorSeverity] [int] NULL,
	[ErrorState] [int] NULL,
	[UserName] [varchar](25) NULL,
	[HostName] [varchar](25) NULL,
 CONSTRAINT [PK_ErrorLog] PRIMARY KEY CLUSTERED 
(
	[ErrorLogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = ON, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [LOG]
) ON [LOG]
GO