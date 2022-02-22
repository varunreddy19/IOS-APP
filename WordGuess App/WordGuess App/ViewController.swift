//
//  ViewController.swift
//  WordGuess App
//
//  Created by Pathuri,Varun Reddy on 2/22/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayLbel: UILabel!
    
    @IBOutlet weak var hintLabel: UILabel!
    
    @IBOutlet weak var letterEntered: UITextField!
    
    @IBOutlet weak var CheckButton: UIButton!
    
    @IBOutlet weak var statusLabel: UILabel!

    @IBOutlet weak var PlayAgainButton: UIButton!
    
    
    var words = [["SWIFT","Programming Language"],
                 ["DOG","Animal"],["CYCLE","Two Wheeler"],["IPHONE","Apple Device"]]
    var count=0;
    var word="";
    var lettersGuessed = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Onload check button is disabled;
        CheckButton.isEnabled=false;
        
        word=words[count][0]
        
        displayLbel.text="";
        
        //Populate the display label with the underscores. The # of underscores is equal to the # of characters in the word.
        updateUnderscores();
        
        //Get the first hint from the array
               hintLabel.text = "Hint: "+words[count][1]
        
        //Clear the status label intially.
                statusLabel.text = ""
    }
    
    
    @IBAction func checkButtonClicked(_ sender: UIButton) {
        
        var letter = letterEntered.text!
                
                //Replace the guessed letter if the letter is part of the word.
                lettersGuessed = lettersGuessed + letter
                 var revealedWord = ""
                for l in word{
                    if lettersGuessed.contains(l){
                        revealedWord += "\(l)"
                    }
                    else{
                        revealedWord += "_ "
                    }
                }
                //Assigning the word to displayLbel after a guess
                displayLbel.text = revealedWord
                letterEntered.text = ""
                
                //If the word is guessed correctly, we are enabling play again button and disabling the check button.
                if displayLbel.text!.contains("_") == false{
                    PlayAgainButton.isHidden = false;
                    CheckButton.isEnabled = false;
                }
                CheckButton.isEnabled = false
    }
    
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        //Reset the button to disable initially.
               PlayAgainButton.isHidden = true
               //clear the label
               lettersGuessed = ""
               count += 1
               //if count reaches the end of the array (all the words are guessed sucessfully), then print Congratualtions in the status label.
               if count == words.count{
                   
                   statusLabel.text = "Congruations! You are done with the game!"
                   //clearing the labels.
                   displayLbel.text = ""
                   hintLabel.text = ""
               }
               else{
                   //fetch the next word from the array
                   word = words[count][0]
                   //fetch the hint related to the word
                   hintLabel.text = "Hint: "
                   hintLabel.text! += words[count][1]
                   //Enabling the check button.
                   CheckButton.isEnabled = true
                   
                   displayLbel.text = ""
                   updateUnderscores()
               }
    }
    
    @IBAction func enterLabelChanged(_ sender: UITextField) {
        var textEnterd = letterEntered.text!;
                //Consider only the last character by calling textEntered.last and trimming the white spaces.
                textEnterd = String(textEnterd.last ?? " ").trimmingCharacters(in: .whitespaces)
                letterEntered.text = textEnterd
                
                //Check whether the entered text is empty or not to enable check button.
                if textEnterd.isEmpty{
                    CheckButton.isEnabled = false
                }
                else{
                    CheckButton.isEnabled = true
                }
                
    }
    
    func updateUnderscores(){
           for letter in word{
               displayLbel.text! += "- "
           }
       }
}

