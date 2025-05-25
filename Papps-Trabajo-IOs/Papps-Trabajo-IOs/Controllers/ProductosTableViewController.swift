//
//  ProductosTableViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Asier on 17/5/25.
//

import UIKit

class ProductosTableViewController: UITableViewController {
    
    var productos = [Producto]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if DataManager.shared.productos.isEmpty {
            let producto1 = Producto(idProducto: "P001", nombre: "Camiseta básica", descripcion: "Camiseta de algodón 100% disponible en varios colores.", precio: 9.99, stock: 20, imagen: UIImage(named: "camiseta")!)
            let producto2 = Producto(idProducto: "P002", nombre: "Pantalón vaquero", descripcion: "Pantalón vaquero clásico de corte recto.", precio: 29.99, stock: 15, imagen: UIImage(named: "pantalon")!)
            let producto3 = Producto(idProducto: "P003", nombre: "Sudadera con capucha", descripcion: "Sudadera de estilo urbano con capucha.", precio: 39.90, stock: 10, imagen: UIImage(named: "sudadera")!)
            let producto4 = Producto(idProducto: "P004", nombre: "Zapatillas deportivas", descripcion: "Zapatillas ligeras y cómodas.", precio: 49.95, stock: 8, imagen: UIImage(named: "zapatillas")!)
            let producto5 = Producto(idProducto: "P005", nombre: "Gorra ajustable", descripcion: "Gorra de estilo beisbol con cierre ajustable.", precio: 12.00, stock: 25, imagen: UIImage(named: "gorra")!)
            let producto6 = Producto(idProducto: "P006", nombre: "Mochila escolar", descripcion: "Mochila con múltiples compartimentos.", precio: 34.50, stock: 12, imagen: UIImage(named: "mochila")!)
            let producto7 = Producto(idProducto: "P007", nombre: "Reloj digital", descripcion: "Reloj resistente al agua con cronómetro.", precio: 19.95, stock: 7, imagen: UIImage(named: "reloj")!)
            let producto8 = Producto(idProducto: "P008", nombre: "Bufanda de lana", descripcion: "Bufanda larga de lana suave.", precio: 14.99, stock: 18, imagen: UIImage(named: "bufanda")!)
            let producto9 = Producto(idProducto: "P009", nombre: "Cartera de piel", descripcion: "Cartera con espacio para tarjetas y billetes.", precio: 24.95, stock: 10, imagen: UIImage(named: "cartera")!)
            let producto10 = Producto(idProducto: "P010", nombre: "Auriculares inalámbricos", descripcion: "Auriculares Bluetooth con estuche de carga.", precio: 59.99, stock: 5, imagen: UIImage(named: "cascos")!)
            let producto11 = Producto(idProducto: "P011", nombre: "Agenda 2025", descripcion: "Agenda con tapa dura y espacio diario para notas.", precio: 11.90, stock: 30, imagen: UIImage(named: "agenda")!)
            let producto12 = Producto(idProducto: "P012", nombre: "Lámpara LED escritorio", descripcion: "Lámpara con brazo flexible y luz regulable.", precio: 22.75, stock: 9, imagen: UIImage(named: "lampara")!)
            let producto13 = Producto(idProducto: "P013", nombre: "Termo acero inoxidable", descripcion: "Termo de doble pared, 500 ml.", precio: 17.80, stock: 14, imagen: UIImage(named: "termo")!)
            let producto14 = Producto(idProducto: "P014", nombre: "Teclado inalámbrico", descripcion: "Teclado Bluetooth compacto y silencioso.", precio: 27.60, stock: 6, imagen: UIImage(named: "teclado")!)
            let producto15 = Producto(idProducto: "P015", nombre: "Cámara instantánea", descripcion: "Cámara que imprime al instante en papel fotográfico.", precio: 74.99, stock: 3, imagen: UIImage(named: "camara")!)

            productos = [producto1, producto2, producto3, producto4, producto5, producto6, producto7, producto8, producto9, producto10, producto11, producto12, producto13, producto14, producto15]
            DataManager.shared.productos = productos
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        productos = DataManager.shared.productos
        tableView.reloadData()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailVC = segue.destination as! DataViewController
        let selectedRow = tableView.indexPathForSelectedRow!.row
        let productoSeleccionado = productos[selectedRow]

        detailVC.nomProd = productoSeleccionado.nombre
        detailVC.descProd = productoSeleccionado.descripcion
        detailVC.imgProd = productoSeleccionado.imagen
        detailVC.idProd = productoSeleccionado.idProducto
        detailVC.precioProd = productoSeleccionado.precio
        detailVC.stockProd = productoSeleccionado.stock
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 151
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productos.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductoCell", for: indexPath) as! ProductosTableViewCell
        let producto = productos[indexPath.row]
        
        cell.idProd.text = producto.idProducto
        cell.nomProd.text = producto.nombre
        cell.descripcion.text = producto.descripcion
        cell.precio.text = String(producto.precio)
        cell.stock.text = String(producto.stock)
        cell.imagen.image = producto.imagen

        return cell
    }
}
