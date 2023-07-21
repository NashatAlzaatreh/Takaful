﻿CREATE TABLE [dbo].[HRSheetData] (
    [HRSD_ID]                              BIGINT         IDENTITY (1, 1) NOT NULL,
    [HRS_ID]                               INT            NOT NULL,
    [Emp_ID]                               BIGINT         NOT NULL,
    [HRSD_FullName]                        NVARCHAR (100) NULL,
    [HRSD_Department]                      NVARCHAR (300) NULL,
    [HRSD_Position]                        NVARCHAR (100) NULL,
    [HRSD_JoiningDate]                     DATE           NULL,
    [HRSD_Salary]                          INT            NULL,
    [HRSD_SubsAmount]                      INT            NULL,
    [HRSD_FundAmount]                      INT            NULL,
    [HRSD_LoanAmount]                      INT            NULL,
    [HRSD_LoanInstallment]                 INT            NULL,
    [HRSD_LoanPaidAmount]                  INT            NULL,
    [HRSD_LoanRemainingAmount]             INT            NULL,
    [HRSD_IsNewSubscription]               BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsNewSubscription] DEFAULT ((0)) NOT NULL,
    [HRSD_IsModifiedSubscription]          BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsModifiedSubscription] DEFAULT ((0)) NOT NULL,
    [HRSD_IsCancelledSubscription]         BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsCancelledSubscription] DEFAULT ((0)) NOT NULL,
    [HRSD_IsNewLoan]                       BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsNewLoan] DEFAULT ((0)) NOT NULL,
    [HRSD_IsModifiedLoan]                  BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsModifiedLoan] DEFAULT ((0)) NOT NULL,
    [HRSD_IsCancelledLoan]                 BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsCancelledLoan] DEFAULT ((0)) NOT NULL,
    [HRSD_IsIncludedInNormalSheet]         BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsIncludedInNormalSheet] DEFAULT ((0)) NOT NULL,
    [HRSD_IsIncludedInNewSubsSheet]        BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsIncludedInNormalSheet1] DEFAULT ((0)) NOT NULL,
    [HRSD_IsIncludedInCancelledSubsSheet]  BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsIncludedInNewSubsSheet1] DEFAULT ((0)) NOT NULL,
    [HRSD_IsIncludedInModificationSheet]   BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsIncludedInCancelledSubsSheet1] DEFAULT ((0)) NOT NULL,
    [HRSD_IsIncludedInNewLoansSheet]       BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsIncludedInNewLoansSheet] DEFAULT ((0)) NOT NULL,
    [HRSD_IsIncludedInCancelledLoansSheet] BIT            CONSTRAINT [DF_HRSheetData_HRSD_IsIncludedInCancelledLoansSheet] DEFAULT ((0)) NOT NULL,
    [HRSD_NewSheetID_NS]                   INT            NULL,
    [HRSD_NewSheetID_MS]                   INT            NULL,
    [HRSD_NewSheetID_CS]                   INT            NULL,
    [HRSD_NewSheetID_NL]                   INT            NULL,
    [HRSD_NewSheetID_ML]                   INT            NULL,
    [HRSD_NewSheetID_CL]                   INT            NULL,
    [HRSD_NewSheetID_Normal]               INT            NULL,
    CONSTRAINT [PK_HRSheetData] PRIMARY KEY CLUSTERED ([HRSD_ID] ASC),
    CONSTRAINT [FK_HRSheetData_Employee] FOREIGN KEY ([Emp_ID]) REFERENCES [dbo].[Employee] ([Emp_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet] FOREIGN KEY ([HRS_ID]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet1] FOREIGN KEY ([HRSD_NewSheetID_NS]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet2] FOREIGN KEY ([HRSD_NewSheetID_MS]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet3] FOREIGN KEY ([HRSD_NewSheetID_CS]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet4] FOREIGN KEY ([HRSD_NewSheetID_NL]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet5] FOREIGN KEY ([HRSD_NewSheetID_ML]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet6] FOREIGN KEY ([HRSD_NewSheetID_CL]) REFERENCES [dbo].[HRSheet] ([HRS_ID]),
    CONSTRAINT [FK_HRSheetData_HRSheet7] FOREIGN KEY ([HRSD_NewSheetID_Normal]) REFERENCES [dbo].[HRSheet] ([HRS_ID])
);

