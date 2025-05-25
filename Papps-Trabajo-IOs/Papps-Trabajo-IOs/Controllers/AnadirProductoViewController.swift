//
//  AnadirProductoViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Asier on 20/5/25.
//

import UIKit

class AnadirProductoViewController: UIViewController {

    @IBOutlet weak var idProdTF: UITextField!
    @IBOutlet weak var NomTF: UITextField!
    @IBOutlet weak var StockTF: UITextField!
    @IBOutlet weak var precioTF: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func guardarProd(_ sender: UIButton) {
        guard let idProd = idProdTF.text, !idProd.isEmpty,
              let nom = NomTF.text, !nom.isEmpty,
              let stockStr = StockTF.text, !stockStr.isEmpty, let stock = Int(stockStr),
              let precioStr = precioTF.text, !precioStr.isEmpty, let precio = Double(precioStr)
              else {
            mostrarAlerta(mensaje: "Complete todos los campos correctamente")
            return
        }

        let nuevoProducto = Producto(
            idProducto: idProd,
            nombre: nom,
            precio: precio,
            stock: stock
        )

        DataManager.shared.productos.append(nuevoProducto)

        let alerta = UIAlertController(title: "Éxito", message: "Producto añadido correctamente.", preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "OK", style: .default) { _ in
            self.navigationController?.popViewController(animated: true)
        })
        present(alerta, animated: true)
    }

    func mostrarAlerta(mensaje: String) {
        let alerta = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alerta, animated: true)
    }
}
