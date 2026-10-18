create database if not exists negocio;
use negocio;

create table categorias (
    id int auto_increment primary key,
    nombre varchar(100) not null unique
);

create table productos (
    id int auto_increment primary key,
    nombre varchar(100) not null,
    categoria_id int not null,
    precio decimal(10,2) not null,
    stock int not null,
    foreign key (categoria_id) references categorias(id)
);

create table clientes (
    id int auto_increment primary key,
    nombre varchar(100) not null,
    telefono varchar(20),
    email varchar(100) not null unique
);

create table pedidos (
    id int auto_increment primary key,
    cliente_id int not null,
    fecha date not null,
    estado varchar(30) not null,
    foreign key (cliente_id) references clientes(id)
);

create table detalle_pedido (
    id int auto_increment primary key,
    pedido_id int not null,
    producto_id int not null,
    cantidad int not null,
    precio_unitario decimal(10,2) not null,
    foreign key (pedido_id) references pedidos(id),
    foreign key (producto_id) references productos(id)
);
