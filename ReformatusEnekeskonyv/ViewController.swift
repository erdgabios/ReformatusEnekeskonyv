//
//  ViewController.swift
//  ReformatusEnekeskonyv
//
//  Created by G on 03/10/2016.
//  Copyright © 2016 erdgabios. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
    
    @IBOutlet weak var warning: UILabel!

    @IBOutlet weak var enekSzamTextField: UITextField!
    
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func lapozzdFelButtonTapped(_ sender: AnyObject) {
        
    }
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        button.isEnabled = false
        enekSzamTextField.delegate = self
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        // limit to 3 characters
        let characterCountLimit = 3
        
        // We need to figure out how many characters would be in the string after the change happens
        let startingLength = enekSzamTextField.text?.characters.count ?? 0
        let lengthToAdd = string.characters.count
        let lengthToReplace = range.length
        
        let newLength = startingLength + lengthToAdd - lengthToReplace
        
        
        return newLength <= characterCountLimit
        
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        warning.isHidden = true
        button.isEnabled = false
        return true
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        warning.isHidden = true
        return true
    }
    
    
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        let enek = enekSzamTextField.text
        if let enekszam = enek {
            if let enekszamInteger = Int(enekszam) {
                if enekszamInteger > 0 && enekszamInteger < 513 {
                    warning.isHidden = true
                    button.isEnabled = true
                    return true
                    
                } else {
                
                    warning.isHidden = false
                    
                    
                }
            }
            
        }
        return false
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dalOldal: ViewEnek = segue.destination as! ViewEnek
        
        dalOldal.esz = enekSzamTextField.text!
        
        
        
        
    }
    
        

}

