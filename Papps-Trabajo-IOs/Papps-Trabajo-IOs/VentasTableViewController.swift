//
//  VentasTableViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 17/5/25.
//

import UIKit

class VentasTableViewController: UITableViewController
{
    var ventas = [Venta]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let venta1 = Venta(idVenta: "V001", NombreProd: "Camiseta básica", Precio: 9.99, Cantidad: 10)
        let venta2 = Venta(idVenta: "V005", NombreProd: "Gorra ajustable", Precio: 12.00, Cantidad: 2)
        let venta3 = Venta(idVenta: "V006", NombreProd: "Mochila escolar", Precio: 34.50, Cantidad: 5)
        let venta4 = Venta(idVenta: "V007", NombreProd: "Reloj digital", Precio: 19.95, Cantidad: 7)
        let venta5 = Venta(idVenta: "V008", NombreProd: "Bufanda de lana", Precio: 14.99, Cantidad: 20)

        ventas = [venta1,venta2,venta3,venta4,venta5]
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
        return ventas.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "VentaCell", for: indexPath) as! VentasTableViewCell
        
        cell.Id.text = ventas[indexPath.row].idVenta
        cell.Nombre.text = ventas[indexPath.row].nombreProd
        cell.Precio.text = String(ventas[indexPath.row].precio)
        cell.Cantidad.text = String(ventas[indexPath.row].cantidad)

        return cell
    }


}
