//
//  AnadirVentaViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 18/5/25.
//

import UIKit


class AnadirVentaViewController: UIViewController
{
    
    @IBOutlet weak var cantidad: UITextField!
    @IBOutlet weak var pickerProducto: UIPickerView!
    
    private var pickerHandler: ProductoPickerHandler!
    
    var productosDisponibles = [Producto]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        cantidad.keyboardType = .numberPad
        
        productosDisponibles = DataManager.shared.productos
        
        pickerHandler = ProductoPickerHandler(productos: productosDisponibles)
        pickerProducto.delegate = pickerHandler
        pickerProducto.dataSource = pickerHandler
    }
    
    @IBAction func confirmarVenta(_ sender: UIButton)
    {
        let index = pickerProducto.selectedRow(inComponent: 0)
        let producto = productosDisponibles[index]
                
        guard let cantidadTexto = cantidad.text, let cantidadInt = Int(cantidadTexto),cantidadInt > 0
        else
        {
            mostrarAlerta(mensaje: "Ingresa una cantidad válida.")
            return
        }
        
        let venta = Venta( idVenta: "V\(UUID().uuidString.prefix(4))",
                           NombreProd: producto.nombre,
                           Precio: producto.precio,
                           Cantidad: cantidadInt )
                
        DataManager.shared.ventas.append(venta)
                
        navigationController?.popViewController(animated: true)
    }

    func mostrarAlerta(mensaje: String)
    {
        let alerta = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alerta, animated: true)
    }
}



