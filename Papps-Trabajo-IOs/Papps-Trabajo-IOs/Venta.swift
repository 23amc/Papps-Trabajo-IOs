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
    var NombreProd: String
    var Precio: Double
    var Cantidad: Int
    
    public init(idVenta: String, NombreProd: String, Precio: Double, Cantidad: Int)
    {
        self.idVenta = idVenta
        self.NombreProd = NombreProd
        self.Precio = Precio
        self.Cantidad = Cantidad
    }
}
