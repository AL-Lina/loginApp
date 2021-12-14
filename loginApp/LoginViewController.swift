//
//  ViewController.swift
//  loginApp
//
//  Created by Alina Sokolova on 15.12.21.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
   
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(title: "Oops!", message: "Your name is ALina")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops", message: "Your password is Fox" )
    }
    
}

// MARK: -
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
