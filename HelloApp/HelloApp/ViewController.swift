//
//  ViewController.swift
//  HelloApp
//
//  Created by Pathuri,Varun Reddy on 1/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    @IBOutlet weak var gradeOutlet: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func ButtonClicked(_ sender: Any) {
        
        //Read the text from the textfield and store in a variable
        var name=nameOutlet.text!
        var grade=gradeOutlet.text!
        //assign the text to display label in the format Hello, name!
        displayLabel.text="Hello, \(name)!, Your Grade is \(grade)."
    }
    
}

