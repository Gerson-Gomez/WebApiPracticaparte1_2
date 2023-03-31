SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[carreras](
	[carrera_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_carrera] [varchar](200) NULL,
	[facultad_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[carrera_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[equipos]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[equipos](
	[id_equipos] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](200) NULL,
	[tipo_equipo_id] [int] NULL,
	[marca_id] [int] NULL,
	[modelo] [varchar](50) NULL,
	[anio_compra] [int] NULL,
	[costo] [numeric](18, 4) NULL,
	[vida_util] [int] NULL,
	[estado_equipo_id] [int] NULL,
	[estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_equipos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_equipo]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_equipo](
	[id_estados_equipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_estados_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estados_reserva]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estados_reserva](
	[estado_res_id] [int] IDENTITY(1,1) NOT NULL,
	[estado] [varchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[estado_res_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[facultades]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[facultades](
	[facultad_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre_facultad] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[facultad_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[marcas]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[marcas](
	[id_marcas] [int] IDENTITY(1,1) NOT NULL,
	[nombre_marca] [varchar](50) NULL,
	[estados] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_marcas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservas]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TABLE reservas(
	reserva_id  int identity(1,1) primary key,
	equipo_id int NULL,
	usuario_id int NULL,
	fecha_salida varchar(50) NULL,
	hora_salida varchar(50) NULL,
	tiempo_reserva int NULL,
	estado_reserva_id int NULL,
	fecha_retorno varchar(50) NULL,
	hora_retorno varchar(50) NULL
	);
go


CREATE TABLE [dbo].[tipo_equipo](
	[id_tipo_equipo] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
	[estado] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[id_tipo_equipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios]    Script Date: 18/3/2023 08:08:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios](
	[usuario_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](200) NULL,
	[documento] [varchar](50) NULL,
	[tipo] [char](1) NULL,
	[carnet] [varchar](50) NULL,
	[carrera_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[usuario_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO 

insert into carreras(nombre_carrera,facultad_id)
values ('Ing en desarrollo de software',1)
insert into equipos (nombre,descripcion,tipo_equipo_id,marca_id,modelo,anio_compra,costo,vida_util,estado_equipo_id,estado)
values ('PC01','Computadora de escritorio',1,1,'aac42',2020,140.0,1,1,'A');
insert into estados_equipo(descripcion,estado)
values('NUEVOS','A') 
insert into estados_reserva(estado)
values('DISPONIBLE')
insert into facultades(nombre_facultad)
values('INGENIERIA Y ARQUITECTURA')
insert into reservas(equipo_id,usuario_id,fecha_salida,hora_salida,tiempo_reserva,estado_reserva_id,fecha_retorno,hora_retorno)
values( 1,1,'01/03/2023','8AM',5,1,'25/03/2023','4PM');
insert into tipo_equipo(descripcion,estado)values('Ascritorio','A');
insert into marcas (nombre_marca,estados)values('ACCER','A');
insert into usuarios(nombre,documento,tipo,carnet,carrera_id)
values('Gerson Gomez','123456789',1,'A',1);

select * from carreras;
select * from equipos;
select * from estados_equipo;
select * from estados_reserva;
select * from facultades;
select * from reservas;
select * from tipo_equipo;
select * from marcas;
select * from usuarios;