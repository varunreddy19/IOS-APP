//
//  CreateProductViewController.swift
//  Gopi_ElectronicStore
//
//  Created by student on 4/26/22.
//

import UIKit

class CreateProductViewController: UIViewController {

    @IBOutlet weak var itemField: UITextField!
    
    @IBOutlet weak var CostField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func addProduct(_ sender: Any) {
        var productName =  itemField.text!
        var productCost = CostField.text!
        
        let newProduct = [productName,productCost]
        Electronic.append(newProduct)
        _ = navigationController?.popToRootViewController(animated: true)
    }
    
    

}
