//
//  Venta.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 17/5/25.
//

import Foundation
import UIKit

class Venta
{
    var idVenta: String
    var nombreProd: String
    var precio: Double
    var cantidad: Int
    
    public init(idVenta: String, NombreProd: String, Precio: Double, Cantidad: Int)
    {
        self.idVenta = idVenta
        self.nombreProd = NombreProd
        self.precio = Precio
        self.cantidad = Cantidad
    }
}
