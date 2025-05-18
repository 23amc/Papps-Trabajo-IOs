//
//  ProductosTableViewCell.swift
//  Papps-Trabajo-IOs
//
//  Created by Asier on 17/5/25.
//

import UIKit

class ProductosTableViewCell: UITableViewCell {

    
    @IBOutlet weak var idProd: UILabel!
    @IBOutlet weak var nomProd: UILabel!
    @IBOutlet weak var descripcion: UILabel!
    @IBOutlet weak var stock: UILabel!
    @IBOutlet weak var precio: UILabel!
    @IBOutlet weak var imagen: UIImageView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
