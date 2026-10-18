use negocio;

--1. Productos con el nombre de su categoria, ordenados por nombre
select productos.nombre, categorias.nombre as categoria, productos.precio, productos.stock
from productos
inner join categorias on productos.categoria_id = categorias.id
order by productos.nombre;

--2. Productos con menos de 5 unidades en stock
select nombre, stock
from productos
where stock < 5;

--3. Precio promedio por categoria
select categorias.nombre as categoria, avg(productos.precio) as precio_promedio
from productos
inner join categorias on productos.categoria_id = categorias.id
group by categorias.id, categorias.nombre;

--4. Pedidos de un cliente con su fecha y estado
select pedidos.id, clientes.nombre as cliente, pedidos.fecha, pedidos.estado
from pedidos
inner join clientes on pedidos.cliente_id = clientes.id
where clientes.id = 1;

--5. Total en dinero de cada pedido
select pedidos.id as pedido,
sum(detalle_pedido.cantidad * detalle_pedido.precio_unitario) as total
from pedidos
inner join detalle_pedido on pedidos.id = detalle_pedido.pedido_id
group by pedidos.id;

--6. Clientes con mas de 2 pedidos
select clientes.id, clientes.nombre, count(pedidos.id) as cantidad_pedidos
from clientes
inner join pedidos on clientes.id = pedidos.cliente_id
group by clientes.id, clientes.nombre
having count(pedidos.id) > 2;

--7. Eliminar un cliente sin pedidos
delete from clientes
where id = 6
and not exists (
    select 1
    from pedidos
    where pedidos.cliente_id = clientes.id
);
