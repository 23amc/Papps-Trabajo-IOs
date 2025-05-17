//
//  Productos.swift
//  Papps-Trabajo-IOs
//
//  Created by Asier on 17/5/25.
//

import Foundation
import UIKit

class Producto {
    var idProducto: String
    var nombre: String
    var descripcion: String
    var precio: Double
    var stock: Int
    var imagen: UIImage
    
    init(idProducto: String, nombre: String, descripcion: String, precio: Double, stock: Int, imagen: UIImage) {
        self.idProducto = idProducto
        self.nombre = nombre
        self.descripcion = descripcion
        self.precio = precio
        self.stock = stock
        self.imagen = imagen
    }
}
