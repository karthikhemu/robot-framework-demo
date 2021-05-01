USE [gfpPRM]

delete CriticalResource where ResourceID in (SELECT ID from Resources where badge in (select trim(cast(([Employee Id] + ' ') as nvarchar(20))) from dummy))
delete Employees where badge in (select trim(cast(([Employee Id] + ' ') as nvarchar(20))) from dummy)
delete Resources where badge in (select trim(cast(([Employee Id] + ' ') as nvarchar(20))) from dummy)


insert Employees
select trim(cast((b.[Employee Id] + ' ') as nvarchar(20))), a.DEPARTMENT, b.[First Name], b.[Last Name], a.MI, a.Shift, a.Person_Type, a.EE_Group, a.Sch_Hours, a.FTEs, a.Title,
a.Hire_Date, concat(b.[First Name], '_', b.[Last Name], '@amat.com'), a.Standard_ID, a.Supv_Badge, a.Supv_Name, a.Supv_EMAIL, a.Functional_Area, a.Ext, a.WorkPhone, a.active, a.termWeek, a.varian_badge,
concat(b.[First Name], ' ', b.[Last Name]), a.payRate_type, a.jobFamily1, a.jobFamily2, a.jobFamily3, a.contWorkerType, a.cwJobCode, a.Cost_Center_Name,
a.employee_type, a.location, a.AGUSessionCount
from Employees a, dummy b
where a.badge = '11271' AND b.isActive=1--arif
delete actualsResources where badge in (select trim(cast(([Employee Id] + ' ') as nvarchar(20))) from dummy)