🛒 2TienditaMVC
Sistema de Gestión de Tienda de tiendita
📌 Descripción
TienditaDB es un programa de gestión de inventario para tiendas de Tiendita, conectado a una base de datos. Permite administrar eficientemente información sobre productos, incluyendo su nombre, categoría, precio, cantidad en stock y proveedor asociado. Ideal para pequeños comercios, minimercados o supermercados locales.

✨ Funcionalidades
CRUD Completo:
✅ Crear nuevos registros de productos.
📝 Editar información existente (ej: cambio de precio o proveedor).
🗑️ Eliminar productos descontinuados.
🔍 Consultar registros con filtros (por categoría, proveedor, etc.).

Base de Datos Integrada:
Compatible con MySQL/PostgreSQL/SQLite.
Almacenamiento seguro y escalable.

Interfaz Intuitiva:
Menús interactivos (CLI) o interfaz gráfica (según versión).

🛠️ Tecnologías Utilizadas

Lenguaje: PHP

Base de Datos: MySQL/MariaDB

Servidor: Apache/Nginx

Control de Versiones: Git

📋 Requisitos
PHP 7.4+

MySQL/MariaDB

Servidor web (Apache/Nginx)

Composer (opcional)

🚀 Instalación
Clona el repositorio:

Crea la base de datos:
CREATE DATABASE tiendita;  

⚙️ Configurar variables
producto_id
producto_nombre
producto_categoria
producto_precio
producto_proveedor
cantidad_stock

🗂 Estructura del Proyecto
tienda-tiendita/
├── modelos/
│   ├── Producto.php
│   └── Conexion.php
├── vistas/
│   ├── layouts/
│   ├── productos/
│   │   ├── index.php
│   │   └── crear.php
├── controladores/
│   └── ProductoController.php
├── diseño/
│   ├── css/
│   ├── js/
│   └── img/
└── public/
    └── index.php

💾 Configuración de Base de Datos
class BasedeDatos {
    const servidor = "localhost";
    const usuariobd = "root";
    const clave = "";
    const nombrebd = "tienda_mvc";

    public static function Conectar() {
        try {
            $conexion = new PDO(
                "mysql:host=" . self::servidor . 
                ";dbname=" . self::nombrebd . 
                ";charset=utf8",
                self::usuariobd,
                self::clave
            );
            $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            return $conexion;
        } catch(PDOException $e) {
            die("Error de conexión: " . $e->getMessage());
        }
    }
}

🌐Primeros Pasos
Iniciar XAMPP (Apache y MySQL)

Abrir en el navegador:
http://localhost/2tienditaMVC/index.php

🧪 Insertar Datos de Prueba
INSERT INTO productos
(nombre, categoria, precio, proveedor, cantidad_stock)
VALUES
('Arroz', 'Granos', 20.50, 'Distribuidora X', 100),
('Aceite vegetal', 'Aceites', 35.00, 'Proveedor Y', 50);

🧰 Solución de Problemas
Error 404: Verifica la URL y la existencia de index.php.
Error de conexión MySQL: Asegúrate de que la base de datos esté creada y las credenciales sean correctas.
Problemas con estilos: Verifica que los archivos CSS/JS estén correctamente enlazados.

🔑 Recomendaciones de Seguridad
Cambiar las credenciales por defecto

No usar el usuario root en producción

Implementar autenticación de usuarios

📱 Interfaz Sencilla
Panel principal con listado de productos, botones para crear, editar y eliminar.

🔄 Flujo de Trabajo Típico
Registrar productos nuevos

Consultar el inventario

Editar precios o cantidades

Eliminar productos agotados o descontinuados

✏️ Funciones Principales
1. Registrar Nuevo Producto
Añade productos al inventario

Requiere nombre, categoría, precio, proveedor y cantidad

2. Ver Todos los Productos
Muestra lista completa del inventario

Permite buscar y filtrar por categoría o proveedor

3. Editar Producto
Actualiza información (excepto ID)
Guarda cambios directamente en la base

4. Eliminar Producto
Remueve registros de la base de datos

Requiere confirmación previa

💡 Consejos para Usuarios
Usa filtros para revisar productos por categoría

Verifica existencia antes de hacer pedidos

Haz copias de seguridad regularmente
