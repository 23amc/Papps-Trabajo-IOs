//
//  AnadirVentaViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 18/5/25.
//

import UIKit

protocol AnadirVentaDelegate: AnyObject
{
    func didAgregarVenta(_ venta: Venta)
}

class AnadirVentaViewController: UIViewController
{
    @IBOutlet weak var cantidad: UITextField!
    @IBOutlet weak var pickerProducto: UIPickerView!
    
    weak var delegate: AnadirVentaDelegate?
    private var pickerHandler: ProductoPickerHandler!
    
    var productosDisponibles = [Producto]()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        pickerHandler = ProductoPickerHandler(productos: productosDisponibles)
        pickerProducto.delegate = pickerHandler
        pickerProducto.dataSource = pickerHandler
    }
    
    @IBAction func confirmarVenta(_ sender: UIButton)
    {
        let index = pickerProducto.selectedRow(inComponent: 0)
        let producto = productosDisponibles[index]

        guard let cantidadTexto = cantidad.text, let cantidadInt = Int(cantidadTexto), cantidadInt > 0
        else
        {
            return
        }

        let venta = Venta(
            idVenta: "V\(UUID().uuidString.prefix(4))",
            NombreProd: producto.nombre,
            Precio: producto.precio,
            Cantidad: cantidadInt )

            delegate?.didAgregarVenta(venta)
            navigationController?.popViewController(animated: true)
        }

    func mostrarAlerta(mensaje: String)
    {
        let alerta = UIAlertController(title: "Error", message: mensaje, preferredStyle: .alert)
        alerta.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alerta, animated: true)
    }
}



