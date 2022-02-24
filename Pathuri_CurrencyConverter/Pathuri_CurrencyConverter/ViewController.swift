//
//  ViewController.swift
//  Pathuri_CurrencyConverter
//
//  Created by Pathuri,Varun Reddy on 2/24/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textName: UITextField!
    
    @IBOutlet weak var IndCur: UITextField!
 
    
    @IBOutlet weak var USDCur: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func convertCurrency(_ sender: UIButton) {
        
        let name=textName.text!
        let inr = Double (IndCur.text!)
        let usd = Double (USDCur.text!)
        
        let conusd=round(100 * inr!/74.64)/100;
        let conind=round(100 * usd!*74.64)/100;
        
        displayLabel.text = "Hello \(name), \r\r Amount Rs.\(IndCur.text!) in USD is $\(conusd) \r\r Amount $\(USDCur.text!) in INR is Rs.\(conind)"
        
        
        
        
    }
    

}

