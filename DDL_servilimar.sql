CREATE TABLE ciudad (
	ciudad_id INT NOT NULL PRIMARY KEY,
	nombre_ciudad VARCHAR(100) NOT NULL,
	codigo_postal INT NOT NULL
);

CREATE TABLE servicio (
	servicio_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	descripcion TEXT,
	estado VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_usuario (
	tipo_usuario_id INT NOT NULL PRIMARY KEY,
	nombre_tipo_usuario VARCHAR(100) NOT NULL
);

CREATE TABLE usuario (
	usuario_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL,
	apellido VARCHAR(100),
	tipo_usuario_id INT NOT NULL,
	condicion_especial VARCHAR(100),
	ciudad_id INT NOT NULL,
	FOREIGN KEY(tipo_usuario_id) REFERENCES tipo_usuario(tipo_usuario_id),
	FOREIGN KEY(ciudad_id) REFERENCES ciudad(ciudad_id)

);

CREATE TABLE empleado (
	empleado_id INT NOT NULL PRIMARY KEY,
	usuario_id INT NOT NULL,
	cargos        VARCHAR(100) NOT NULL,
	departamentos VARCHAR(100) NOT NULL,
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id)
);

CREATE TABLE turno (
	turno_id INT NOT NULL PRIMARY KEY,
	usuario_id INT NOT NULL,
	servicio_id INT NOT NULL, 
	empleado_id INT  NOT NULL, 
	fecha DATE NOT NULL,
	hora_inicio TIME NOT NULL,
	hora_fin TIME NOT NULL,
	estado VARCHAR(20) NOT NULL,
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
	FOREIGN KEY(servicio_id) REFERENCES servicio(servicio_id),
	FOREIGN KEY(empleado_id) REFERENCES empleado(empleado_id)
);

CREATE TABLE medio_notificacion (
	medio_id INT NOT NULL PRIMARY KEY,
	nombre VARCHAR(100) NOT NULL
);

CREATE TABLE notificacion (
	notificacion_id INT NOT NULL PRIMARY KEY,
	usuario_id INT NOT NULL,
	medio_id INT NOT NULL,
	mensaje TEXT NOT NULL,
	fecha_envio TIMESTAMP NOT NULL,
	estado VARCHAR(20) NOT NULL,
	FOREIGN KEY(usuario_id) REFERENCES usuario(usuario_id),
	FOREIGN KEY(medio_id) REFERENCES medio_notificacion(medio_id)
);
