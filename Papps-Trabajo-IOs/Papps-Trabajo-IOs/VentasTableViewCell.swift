//
//  VentasTableViewCell.swift
//  Papps-Trabajo-IOs
//
//  Created by Gonzalo_gm on 17/5/25.
//

import UIKit

class VentasTableViewCell: UITableViewCell
{

    @IBOutlet weak var Id: UILabel!
    @IBOutlet weak var Nombre: UILabel!
    @IBOutlet weak var Precio: UILabel!
    @IBOutlet weak var Cantidad: UILabel!
    
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)

    }

}
