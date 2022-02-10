//
//  ViewController.swift
//  Pathuri_Calculator
//
//  Created by Pathuri,Varun Reddy on 2/9/22.
//

import UIKit

class ViewController: UIViewController {
    
    var numberOnScreen: Double = 0;

    var prevNumber: Double = 0;

    var Math = false;

    var op = 0;

    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonAC(_ sender: UIButton) {
        displayLabel.text=""
        numberOnScreen=0;
        prevNumber=0;
                                
        
        
    }

    
    @IBAction func ButtonC(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonChangeSign(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonDivision(_ sender: UIButton) {
    }
    
    
    @IBAction func Button7(_ sender: UIButton) {
    }
    
    @IBAction func Button8(_ sender: UIButton) {
    }
  
    
    @IBAction func button9(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonX(_ sender: UIButton) {
    }
    
   
    @IBAction func button4(_ sender: UIButton) {
    }
    
    
    @IBAction func button5(_ sender: UIButton) {
    }
    
    
    @IBAction func button6(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonMinus(_ sender: UIButton) {
    }
    
    
    
    @IBAction func button1(_ sender: UIButton) {
    }
    
    
    @IBAction func button2(_ sender: UIButton) {
    }
    
    
    @IBAction func button3(_ sender: UIButton) {
    }
    
    @IBAction func buttonAdd(_ sender: UIButton) {
    }
    
    
    @IBAction func button0(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonDot(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonPercent(_ sender: UIButton) {
    }
    
    
    @IBAction func buttonEquals(_ sender: UIButton) {
    }
    
}

