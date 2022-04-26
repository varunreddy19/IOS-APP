//
//  DetailViewController.swift
//  Gopi_ElectronicStore
//
//  Created by student on 4/26/22.
//

import UIKit

class DetailViewController: UIViewController {
var prod = ""
    var cost = ""
    @IBOutlet weak var itemName: UILabel!
    
    @IBOutlet weak var itemCost: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        itemName.text = prod
        itemCost.text = cost
    }
    

   

}
