//
//  DataViewController.swift
//  Papps-Trabajo-IOs
//
//  Created by Asier on 18/5/25.
//

import UIKit

class DataViewController: UIViewController {
    
    @IBOutlet weak var dataNom: UILabel!
    @IBOutlet weak var dataStock: UILabel!
    @IBOutlet weak var dataDesc: UITextView!
    @IBOutlet weak var dataImg: UIImageView!
    
    
    var idProd: String?
    var nomProd: String?
    var imgProd: UIImage?
    var descProd: String?
    var precioProd: Double?
    var stockProd: Int?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.dataNom!.text = self.nomProd
        self.dataDesc!.text = self.descProd
        self.dataImg!.image = self.imgProd
        self.dataStock!.text = "\(self.stockProd!)"
    }
}
