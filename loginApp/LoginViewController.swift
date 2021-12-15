//
//  ViewController.swift
//  loginApp
//
//  Created by Alina Sokolova on 15.12.21.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var usernameValueTF: UITextField!
    @IBOutlet weak var passwordValueTF: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = usernameValueTF.text
    }
   
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(title: "Oops!", message: "Your name is ALina")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops", message: "Your password is Fox" )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController else { return }
        usernameValueTF.text = ""
        passwordValueTF.text = ""
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
