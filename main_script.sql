-- Create database evaluacion_continua;
-- use evaluacion_continua;

-- KEVIN DANIEL CRUZ SOLORZANO

drop table if exists productos;
CREATE TABLE Productos (
    id_producto INT PRIMARY KEY,
    nombre VARCHAR(255),
    precio DECIMAL(10,2),
    categoría VARCHAR(255)
);

-- Insertar productos
INSERT INTO Productos VALUES (1, 'Laptop', 1200.00, 'Electrónica');
INSERT INTO Productos VALUES (2, 'Smartphone', 800.00, 'Electrónica');
INSERT INTO Productos VALUES (3, 'Teclado', 100.00, 'Accesorios');
INSERT INTO Productos VALUES (4, 'Mouse', 50.00, 'Accesorios');
INSERT INTO Productos VALUES (5, 'Monitor', 300.00, 'Electrónica');
INSERT INTO Productos VALUES (6, 'Impresora', 150.00, 'Oficina');
INSERT INTO Productos VALUES (7, 'Tablet', 250.00, 'Electrónica');
INSERT INTO Productos VALUES (8, 'Cámara', 500.00, 'Electrónica');
INSERT INTO Productos VALUES (9, 'Silla de oficina', 120.00, 'Muebles');
INSERT INTO Productos VALUES (10, 'Escritorio', 220.00, 'Muebles');
INSERT INTO Productos VALUES (11, 'Router', 95.00, 'Electrónica');
INSERT INTO Productos VALUES (12, 'Disco Duro Externo', 120.00, 'Accesorios');
INSERT INTO Productos VALUES (13, 'Altavoces', 70.00, 'Electrónica');
INSERT INTO Productos VALUES (14, 'Micrófono', 85.00, 'Accesorios');
INSERT INTO Productos VALUES (15, 'Teclado Mecánico', 130.00, 'Accesorios');
INSERT INTO Productos VALUES (16, 'Monitor Curvo', 320.00, 'Electrónica');
INSERT INTO Productos VALUES (17, 'Mochila', 90.00, 'Accesorios');
INSERT INTO Productos VALUES (18, 'Power Bank', 50.00, 'Electrónica');
INSERT INTO Productos VALUES (19, 'Lámpara de escritorio', 45.00, 'Muebles');
INSERT INTO Productos VALUES (20, 'Silla ergonómica', 180.00, 'Muebles');

select * from productos;

drop table if exists Clientes;
CREATE TABLE Clientes (
    id_cliente INT PRIMARY KEY,
    nombre VARCHAR(255),
    email VARCHAR(255),
    ciudad VARCHAR(255)
);

-- Insertar clientes
INSERT INTO Clientes VALUES (1, 'Juan Pérez', 'juanperez@mail.com', 'Madrid');
INSERT INTO Clientes VALUES (2, 'Ana Gómez', 'anagomez@mail.com', 'Barcelona');
INSERT INTO Clientes VALUES (3, 'Luisa Fernández', 'luisafern@mail.com', 'Valencia');
INSERT INTO Clientes VALUES (4, 'Carlos Ruiz', 'carlosruiz@mail.com', 'Sevilla');
INSERT INTO Clientes VALUES (5, 'Marta López', 'martalopez@mail.com', 'Madrid');
INSERT INTO Clientes VALUES (6, 'Andrea Jiménez', 'andreajimenez@mail.com', 'Málaga');
INSERT INTO Clientes VALUES (7, 'Pablo Martínez', 'pablomartinez@mail.com', 'Bilbao');
INSERT INTO Clientes VALUES (8, 'Sofía Castro', 'sofiacastro@mail.com', 'Zaragoza');
INSERT INTO Clientes VALUES (9, 'Raúl Navarro', 'raulnavarro@mail.com', 'Alicante');
INSERT INTO Clientes VALUES (10, 'Irene Molina', 'irenemolina@mail.com', 'Coruña');
INSERT INTO Clientes VALUES (11, 'Jorge Esteban', 'jorgeesteban@mail.com', 'Granada');
INSERT INTO Clientes VALUES (12, 'Clara Sanz', 'clarasanz@mail.com', 'Santander');
INSERT INTO Clientes VALUES (13, 'Mario Redondo', 'marroredondo@mail.com', 'Toledo');
INSERT INTO Clientes VALUES (14, 'Lucía Marín', 'luciamarin@mail.com', 'Cádiz');

select * from clientes;

drop table if exists Pedidos;
CREATE TABLE Pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    fecha_pedido DATE,
    estado VARCHAR(100),
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Insertar pedidos
INSERT INTO Pedidos VALUES (1, 1, '2021-03-15', 'Entregado');
INSERT INTO Pedidos VALUES (2, 2, '2021-03-17', 'Pendiente');
INSERT INTO Pedidos VALUES (3, 3, '2021-03-20', 'Cancelado');
INSERT INTO Pedidos VALUES (4, 4, '2021-03-22', 'Entregado');
INSERT INTO Pedidos VALUES (5, 5, '2021-03-24', 'Pendiente');
INSERT INTO Pedidos VALUES (6, 6, '2021-03-25', 'Entregado');
INSERT INTO Pedidos VALUES (7, 7, '2021-03-28', 'Cancelado');
INSERT INTO Pedidos VALUES (8, 8, '2021-03-30', 'Entregado');
INSERT INTO Pedidos VALUES (9, 9, '2021-04-01', 'Entregado');
INSERT INTO Pedidos VALUES (10, 10, '2021-04-02', 'Entregado');
INSERT INTO Pedidos VALUES (11, 11, '2021-04-03', 'Entregado');
INSERT INTO Pedidos VALUES (12, 12, '2021-04-05', 'Pendiente');
INSERT INTO Pedidos VALUES (13, 13, '2021-04-05', 'Cancelado');
INSERT INTO Pedidos VALUES (14, 14, '2021-04-06', 'Entregado');
INSERT INTO Pedidos VALUES (15, 10, '2021-04-07', 'Entregado');
INSERT INTO Pedidos VALUES (16, 10, '2021-04-08', 'Entregado');
INSERT INTO Pedidos VALUES (17, 11, '2021-04-09', 'Entregado');
INSERT INTO Pedidos VALUES (18, 12, '2021-04-10', 'Pendiente');

select * from pedidos;

drop table if exists Detalles_Pedidos;
CREATE TABLE Detalles_Pedidos (
    id_detalle INT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
);

-- Insertar detalles de pedidos
INSERT INTO Detalles_Pedidos VALUES (1, 1, 1, 1);
INSERT INTO Detalles_Pedidos VALUES (2, 1, 2, 2);
INSERT INTO Detalles_Pedidos VALUES (3, 2, 1, 1);
INSERT INTO Detalles_Pedidos VALUES (4, 3, 4, 1);
INSERT INTO Detalles_Pedidos VALUES (5, 4, 5, 2);
INSERT INTO Detalles_Pedidos VALUES (6, 5, 6, 1);
INSERT INTO Detalles_Pedidos VALUES (7, 5, 7, 1);
INSERT INTO Detalles_Pedidos VALUES (8, 6, 8, 1);
INSERT INTO Detalles_Pedidos VALUES (9, 7, 9, 1);
INSERT INTO Detalles_Pedidos VALUES (10, 8, 10, 1);
INSERT INTO Detalles_Pedidos VALUES (11, 9, 5, 2);
INSERT INTO Detalles_Pedidos VALUES (12, 9, 6, 3);
INSERT INTO Detalles_Pedidos VALUES (13, 10, 11, 1);
INSERT INTO Detalles_Pedidos VALUES (14, 11, 12, 1);
INSERT INTO Detalles_Pedidos VALUES (15, 11, 13, 2);
INSERT INTO Detalles_Pedidos VALUES (16, 12, 14, 1);
INSERT INTO Detalles_Pedidos VALUES (17, 13, 15, 1);
INSERT INTO Detalles_Pedidos VALUES (18, 14, 16, 1);
INSERT INTO Detalles_Pedidos VALUES (19, 15, 17, 1);
INSERT INTO Detalles_Pedidos VALUES (20, 15, 18, 2);
INSERT INTO Detalles_Pedidos VALUES (21, 16, 19, 1);
INSERT INTO Detalles_Pedidos VALUES (22, 17, 20, 1);
INSERT INTO Detalles_Pedidos VALUES (23, 17, 11, 1);
INSERT INTO Detalles_Pedidos VALUES (24, 18, 12, 2);
INSERT INTO Detalles_Pedidos VALUES (25, 18, 10, 3);
INSERT INTO Detalles_Pedidos VALUES (26, 18, 6, 4);

select * from detalles_pedidos;


-- QUERIES A REALIZAR --

/*
1. Total de Ventas por Producto:
Calcula el total de ventas para cada producto, ordenado de mayor a menor.
*/
select productos.id_producto, productos.nombre, productos.precio, sum(detalles_pedidos.cantidad) as cantidad, pedidos.estado, sum(productos.precio * detalles_pedidos.cantidad) as venta_total
from productos
inner join detalles_pedidos on productos.id_producto = detalles_pedidos.id_producto
inner join pedidos on detalles_pedidos.id_pedido = pedidos.id_pedido
where estado not in ('Cancelado', 'Pendiente')
group by id_producto, nombre, precio, cantidad, estado
order by venta_total desc;
-- En esta query no se toman en cuenta los productos que tienen estado 'Cancelado' o 'Pendiente', por lo que solo se muestran los que han sido "Entregados'.

/*
2. Último Pedido de Cada Cliente:
Identifica el último pedido realizado por cada cliente.
*/
select pedidos.id_cliente, pedidos.id_pedido, clientes.nombre, pedidos.fecha_pedido
from pedidos
inner join clientes on pedidos.id_cliente = clientes.id_cliente
where pedidos.fecha_pedido = (select max(fecha_pedido) from pedidos where pedidos.id_cliente = clientes.id_cliente);

/*
3. Número de Pedidos por Ciudad:
Determina el número total de pedidos realizados por clientes en cada ciudad.
*/
select count(clientes.id_cliente) as pedidos_por_cliente, clientes.nombre, clientes.ciudad
from pedidos
inner join clientes on pedidos.id_cliente = clientes.id_cliente
group by clientes.ciudad, clientes.nombre;

/*
4. Productos que Nunca se Han Vendido:
Lista todos los productos que nunca han sido parte de un pedido.
*/
select id_producto, nombre, precio, categoría
from productos prod
where not exists (
select id_producto
from detalles_pedidos dp
where prod.id_producto = dp.id_producto
);

/*
5. Productos Más Vendidos por Cantidad:
Encuentra los productos más vendidos en términos de cantidad total vendida.
*/
select productos.id_producto, productos.nombre, sum(detalles_pedidos.cantidad) as cantidad
from detalles_pedidos
inner join productos on detalles_pedidos.id_producto = productos.id_producto
group by productos.id_producto, productos.nombre
order by cantidad desc;

/*
6. Clientes con Compras en Múltiples Categorías:
Identifica a los clientes que han realizado compras en más de una categoría de producto.
*/
select clientes.id_cliente, clientes.nombre, count(categoría) as categoria_compradas
from detalles_pedidos
inner join productos on detalles_pedidos.id_producto = productos.id_producto
inner join pedidos on detalles_pedidos.id_pedido = pedidos.id_pedido
inner join clientes on pedidos.id_cliente = clientes.id_cliente
group by clientes.id_cliente, clientes.nombre
having count(categoría) > 1;

/*
7. Ventas Totales por Mes:
Muestra las ventas totales agrupadas por mes y año.
*/
select case when month(pedidos.fecha_pedido) = 1 then 'Enero'
when month(pedidos.fecha_pedido) = 2 then 'Febrero'
when month(pedidos.fecha_pedido) = 3 then 'Marzo'
when month(pedidos.fecha_pedido) = 4 then 'Abril'
when month(pedidos.fecha_pedido) = 5 then 'Mayo'
end as meses,
year(pedidos.fecha_pedido) as anyo,
sum(productos.precio * detalles_pedidos.cantidad) as venta_total
from productos
inner join detalles_pedidos on productos.id_producto = detalles_pedidos.id_producto
inner join pedidos on detalles_pedidos.id_pedido = pedidos.id_pedido
where estado not in ('Cancelado', 'Pendiente')
group by meses, anyo
order by venta_total desc;

/*
8. Promedio de Productos por Pedido:
Calcula la cantidad promedio de productos por pedido.
*/
select id_pedido, round(avg(cantidad),2) as promedio from detalles_pedidos
group by id_pedido;

/*
9. Tasa de Retención de Clientes:
Determina cuántos clientes han realizado pedidos en más de una ocasión. 
*/
select clientes.id_cliente, clientes.nombre, count(pedidos.id_pedido) as numero_de_pedidos
from clientes
inner join pedidos on clientes.id_cliente = pedidos.id_cliente
group by clientes.id_cliente, clientes.nombre
having count(pedidos.id_pedido) > 1;

/*
10. Tiempo Promedio entre Pedidos:
Calcula el tiempo promedio que pasa entre pedidos para cada cliente. 
*/

select clientes.id_cliente, clientes.nombre, avg(datediff(pedidos.fecha_pedido,(select MIN(fecha_pedido) from pedidos where pedidos.id_cliente = clientes.id_cliente))) AS DIFERENCIA
from detalles_pedidos
inner join productos on detalles_pedidos.id_producto = productos.id_producto
inner join pedidos on detalles_pedidos.id_pedido = pedidos.id_pedido
inner join clientes on pedidos.id_cliente = clientes.id_cliente
group by clientes.id_cliente, clientes.nombre
having diferencia > 0;



