//
//  ViewController.swift
//  Discount App
//
//  Created by Pathuri,Varun Reddy on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount: UITextField!
    
    
    @IBOutlet weak var discount: UITextField!
    
    @IBOutlet weak var displayOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onSubmit(_ sender: UIButton) {
        let discountamount=(Double(amount.text!)!*Double(discount.text!)!)/100
        let dis=Double(amount.text!)!-discountamount
        displayOutlet.text="For the Amount \(amount.text!) a discount of \(discount.text!)% is applied. The amount after discount is \(dis)"
    }
    
}

