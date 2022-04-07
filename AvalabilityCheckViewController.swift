//
//  ViewController.swift
//  Pathuri_BookCheckoutApp
//
//  Created by Pathuri,Varun Reddy on 4/7/22.
//

import UIKit

class AvalabilityCheckViewController: UIViewController {

    
    @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var bookIdField: UITextField!
    
    
    @IBOutlet weak var checkAvailButton: UIButton!
    
    
    @IBOutlet weak var statusLabel: UILabel!
    
    
    @IBOutlet weak var bookImagelabel: UIImageView!
    
    
    @IBOutlet weak var checkoutButton: UIButton!
    
    var bookObj=Book()
    
    var bookarr=booksArray
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        checkoutButton.isEnabled=false;
    }

    @IBAction func onClickCheckAvail(_ sender: UIButton) {
        
        let enteredid=bookIdField.text!
        var count=0;
        
        for book in bookarr{
        if(enteredid==book.bookId){
            
            statusLabel.text="Book with ID\(enteredid) is found!"
            bookImagelabel.image=UIImage(named: book.bookImage);
            count=count+1
            checkoutButton.isEnabled=true
        }
        }
        if(count==0){
            statusLabel.text="Book Not Found!"
        }
        
        
        
    }
    
    
    
    @IBAction func onClickCheckOut(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var transition = segue.identifier
        if transition == "checkoutSegue"{
            //Make the result view controller as destination
            var destination = segue.destination as! CheckoutConfirmationViewController
            
            //destination.bookLabel.text = bookObj.bookName
            //destination.imageLabel.image = UIImage(named: bookObj.bookImage)
            //destination.ch
        }
    }
    
}

