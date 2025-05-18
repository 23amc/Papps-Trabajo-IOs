//
//  ProductoPickerHandler.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 18/5/25.
//

import UIKit

class ProductoPickerHandler: NSObject, UIPickerViewDelegate, UIPickerViewDataSource {
    var productos: [Producto]

    init(productos: [Producto]) {
        self.productos = productos
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return productos.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return productos[row].nombre
    }
}

