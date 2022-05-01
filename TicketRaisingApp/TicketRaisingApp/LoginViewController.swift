//
//  ViewController.swift
//  TicketRaisingApp
//
//  Created by student on 4/7/22.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var IconImage: UIImageView!
  
    @IBOutlet weak var userNameTextField: UITextField!

    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        IconImage.image=UIImage(named: "ticket")
    }

    
    @IBAction func onClickLogin(_ sender: UIButton) {
    }
    

    @IBAction func onClickSignUp(_ sender: UIButton) {
    }
    
}

