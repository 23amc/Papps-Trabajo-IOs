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


}
