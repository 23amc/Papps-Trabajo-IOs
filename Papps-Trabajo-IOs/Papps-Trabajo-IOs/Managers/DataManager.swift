//
//  DataManager.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 18/5/25.
//

import Foundation

class DataManager
{
    static let shared = DataManager()
    var productos: [Producto] = []
    var ventas = [Venta]()

    private init() {}
}
