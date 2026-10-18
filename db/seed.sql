use negocio;

insert into categorias (nombre) values
('Electronica'),
('Ropa'),
('Hogar');

insert into productos (nombre, categoria_id, precio, stock) values
('Laptop', 1, 4500.00, 8),
('Mouse inalambrico', 1, 120.00, 15),
('Teclado mecanico', 1, 350.00, 4),
('Monitor 24 pulgadas', 1, 1100.00, 3),
('Audifonos', 1, 180.00, 12),
('Cargador USB-C', 1, 90.00, 20),
('Camisa', 2, 100.00, 10),
('Pantalon jeans', 2, 220.00, 6),
('Chaqueta', 2, 300.00, 4),
('Zapatillas', 2, 400.00, 9),
('Licuadora', 3, 280.00, 5),
('Lampara de mesa', 3, 150.00, 2);

insert into clientes (nombre, telefono, email) values
('Carlos Perez', '70123456', 'carlos.perez@gmail.com'),
('Maria Lopez', '71234567', 'maria.lopez@gmail.com'),
('Luis Gomez', '72345678', 'luis.gomez@gmail.com'),
('Ana Rodriguez', '73456789', 'ana.rodriguez@gmail.com'),
('Pedro Flores', '74567890', 'pedro.flores@gmail.com'),
('Sofia Morales', '75678901', 'sofia.morales@gmail.com');

insert into pedidos (cliente_id, fecha, estado) values
(1, '2026-10-01', 'Entregado'),
(2, '2026-10-02', 'Pendiente'),
(3, '2026-10-03', 'Entregado'),
(1, '2026-10-04', 'Enviado'),
(4, '2026-10-05', 'Entregado'),
(5, '2026-10-06', 'Pendiente'),
(2, '2026-10-07', 'Entregado'),
(5, '2026-10-08', 'Enviado'),
(3, '2026-10-09', 'Entregado'),
(1, '2026-10-10', 'Pendiente');

insert into detalle_pedido
(pedido_id, producto_id, cantidad, precio_unitario) values
(1, 1, 1, 4500.00),
(1, 2, 2, 120.00),
(1, 5, 1, 180.00),
(2, 7, 2, 100.00),
(2, 8, 1, 220.00),
(3, 3, 1, 350.00),
(3, 4, 1, 1100.00),
(3, 6, 2, 90.00),
(4, 1, 1, 4500.00),
(4, 9, 1, 300.00),
(5, 10, 1, 400.00),
(5, 11, 2, 280.00),
(5, 12, 1, 150.00),
(6, 2, 1, 120.00),
(6, 7, 3, 100.00),
(7, 4, 1, 1100.00),
(7, 5, 2, 180.00),
(7, 8, 1, 220.00),
(8, 6, 1, 90.00),
(8, 12, 2, 150.00),
(9, 3, 2, 350.00),
(9, 10, 1, 400.00),
(10, 1, 1, 4500.00),
(10, 11, 1, 280.00),
(10, 2, 1, 120.00);
