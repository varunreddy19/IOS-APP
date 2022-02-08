//
//  ViewController.swift
//  EvenOdd
//
//  Created by Pathuri,Varun Reddy on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    
    
    @IBOutlet weak var displayOutlet: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButton(_ sender: UIButton) {
        let input = Int(inputText.text!)
        if (input!%2==0)
        {
            displayOutlet.text="\(input!) is a even number"
        }
        else{
            displayOutlet.text="\(input!) is a odd number"
        }
        
        if(input!%3==0)
        {
            displayOutlet.text="\(input!) is a multiple of 3"
        }
        
    }
    
}

