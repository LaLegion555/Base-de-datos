sp_helptext 'sp_help';
sp_who2;
sp_helpdb;
select * from matricula;
sp_help;
select * from sysobjects;
use matricula;
select * from [INFORMATION_SCHEMA].[TABLES];
use HOSPITAL;
use master;
select * from sys.triggers;
select * from sys.sysusers;
create procedure SALUDANDO as print 'Hola';
go
exec SALUDANDO;
create procedure saludo @palabra char(40) as print @palabra;
go
exec saludo 'Hola Soy LA LEGION555';
exec saludo 'Hola jugamos?';
exec saludo 'Hola estudio Sistemas';
use HOSPITAL;
create procedure sp_lstPERSONAS2 @apellidos varchar(25) as select * from dbo.MEDICO 
where @apellidos=Apellidos;
go
exec sp_lstPERSONAS2 'ROJAS GALLO';
select * from dbo.MEDICO;
create procedure sp_LSTMEDICOS AS select * from dbo.MEDICO;
go
exec sp_LSTMEDICOS;
select * from dbo.INGRESO;
create procedure sp_lstReporte AS select I.NUM_INGRESO,P.Apellidos ,p.nombre 
,I.diagnostico , m.Apellidos AS 'MEDICO'
from dbo.INGRESO I, dbo.MEDICO M, dbo.PACIENTE P
where p.num_historial=I.num_historial and M.IDMEDICO =I.IDMEDICO;
go
exec sp_lstReporte;
select * from dbo.PACIENTE;
create procedure sp_lstClientes1 @Apellidos varchar(30) AS select * from
dbo.PACIENTE where Apellidos=@Apellidos;
go
exec sp_lstClientes1 'HUERTAS HUERTAS';
create procedure sp_lstClientes2 @domicilio varchar(50) AS select * from
dbo.PACIENTE where domicilio=@domicilio;
go
exec sp_lstClientes2 'CALLE AYACUCHO';
create procedure sp_lstREPORTEP @DIAGNOSTICO varchar (50)
AS select I.NUM_INGRESO,P.Apellidos ,p.nombre ,I.diagnostico , m.Apellidos AS
'MEDICO'
from dbo.INGRESO I, dbo.MEDICO M, dbo.PACIENTE P
where p.num_historial=I.num_historial and M.IDMEDICO =I.IDMEDICO and
I.diagnostico =@DIAGNOSTICO;
go
exec sp_lstREPORTEP 'LEUCEMIA'
