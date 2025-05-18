//
//  ProductosTableViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Asier on 17/5/25.
//

import UIKit

class ProductosTableViewController: UITableViewController
{
    var productos = [Producto]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let producto1 = Producto(idProducto: "P001", nombre: "Camiseta básica", descripcion: "Camiseta de algodón 100% disponible en varios colores. Perfecta para uso diario gracias a su tejido transpirable y cómodo. Costuras reforzadas y corte unisex adaptado a diferentes tipos de cuerpo.", precio: 9.99, stock: 20, imagen: UIImage(named: "camiseta")!)

        let producto2 = Producto(idProducto: "P002", nombre: "Pantalón vaquero", descripcion: "Pantalón vaquero clásico de corte recto y color azul oscuro. Fabricado con tejido denim resistente, ideal para uso casual o diario. Incluye cinco bolsillos funcionales y cierre con cremallera y botón.", precio: 29.99, stock: 15, imagen: UIImage(named: "pantalon")!)

        let producto3 = Producto(idProducto: "P003", nombre: "Sudadera con capucha", descripcion: "Sudadera de estilo urbano con capucha ajustable, bolsillo frontal tipo canguro y forro interior afelpado. Ideal para días fríos o actividades al aire libre.", precio: 39.90, stock: 10, imagen: UIImage(named: "sudadera")!)

        let producto4 = Producto(idProducto: "P004", nombre: "Zapatillas deportivas", descripcion: "Zapatillas ligeras y cómodas diseñadas para caminar o entrenar. Suela antideslizante, plantilla ergonómica y materiales transpirables que garantizan confort durante todo el día.", precio: 49.95, stock: 8, imagen: UIImage(named: "zapatillas")!)

        let producto5 = Producto(idProducto: "P005", nombre: "Gorra ajustable", descripcion: "Gorra de estilo beisbol fabricada en algodón con cierre ajustable. Protección contra el sol con visera curva, ideal para actividades deportivas o looks casuales.", precio: 12.00, stock: 25, imagen: UIImage(named: "gorra")!)

        let producto6 = Producto(idProducto: "P006", nombre: "Mochila escolar", descripcion: "Mochila ergonómica con múltiples compartimentos. Espalda acolchada, tirantes ajustables y espacio para portátil de hasta 15 pulgadas.", precio: 34.50, stock: 12, imagen: UIImage(named: "mochila")!)

        let producto7 = Producto(idProducto: "P007", nombre: "Reloj digital", descripcion: "Reloj resistente al agua con funciones de cronómetro, alarma y luz LED. Correa de silicona cómoda para el uso diario.", precio: 19.95, stock: 7, imagen: UIImage(named: "reloj")!)

        let producto8 = Producto(idProducto: "P008", nombre: "Bufanda de lana", descripcion: "Bufanda larga de lana suave. Ideal para climas fríos. Diseño clásico y elegante disponible en varios colores.", precio: 14.99, stock: 18, imagen: UIImage(named: "bufanda")!)

        let producto9 = Producto(idProducto: "P009", nombre: "Cartera de piel", descripcion: "Cartera de piel genuina con espacio para tarjetas, billetes y monedas. Diseño compacto y elegante.", precio: 24.95, stock: 10, imagen: UIImage(named: "cartera")!)

        let producto10 = Producto(idProducto: "P010", nombre: "Auriculares inalámbricos", descripcion: "Auriculares Bluetooth con estuche de carga. Sonido estéreo y control táctil. Compatibles con iOS y Android.", precio: 59.99, stock: 5, imagen: UIImage(named: "cascos")!)

        let producto11 = Producto(idProducto: "P011", nombre: "Agenda 2025", descripcion: "Agenda con tapa dura, separadores mensuales y espacio diario para notas. Ideal para estudiantes y profesionales.", precio: 11.90, stock: 30, imagen: UIImage(named: "agenda")!)

        let producto12 = Producto(idProducto: "P012", nombre: "Lámpara LED escritorio", descripcion: "Lámpara con brazo flexible, regulación táctil de luz y puerto USB. Bajo consumo y diseño moderno.", precio: 22.75, stock: 9, imagen: UIImage(named: "lampara")!)

        let producto13 = Producto(idProducto: "P013", nombre: "Termo acero inoxidable", descripcion: "Termo de doble pared que mantiene las bebidas calientes hasta 12h y frías hasta 24h. Capacidad: 500 ml.", precio: 17.80, stock: 14, imagen: UIImage(named: "termo")!)

        let producto14 = Producto(idProducto: "P014", nombre: "Teclado inalámbrico", descripcion: "Teclado Bluetooth compacto, silencioso y compatible con múltiples dispositivos. Ideal para tablet o móvil.", precio: 27.60, stock: 6, imagen: UIImage(named: "teclado")!)

        let producto15 = Producto(idProducto: "P015", nombre: "Cámara instantánea", descripcion: "Cámara compacta que imprime al instante en papel fotográfico. Incluye flash automático y diseño retro.", precio: 74.99, stock: 3, imagen: UIImage(named: "camara")!)


        productos = [producto1,producto2,producto3,producto4,producto5,producto6,producto7,producto8,producto9,producto10,producto11,producto12,producto13,producto14,producto15]
        
        DataManager.shared.productos = productos
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        return 151
    }

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return productos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductoCell", for: indexPath) as! ProductosTableViewCell
        cell.idProd.text = productos[indexPath.row].idProducto
        cell.nomProd.text = productos[indexPath.row].nombre
        cell.descripcion.text = productos[indexPath.row].descripcion
        cell.precio.text = String(productos[indexPath.row].precio)
        cell.stock.text = String(productos[indexPath.row].stock)
        cell.imagen.image = productos[indexPath.row].imagen

        return cell
    }


}
