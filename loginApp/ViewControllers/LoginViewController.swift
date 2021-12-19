//
//  ViewController.swift
//  loginApp
//
//  Created by Alina Sokolova on 15.12.21.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var usernameValueTF: UITextField!
    @IBOutlet weak var passwordValueTF: UITextField!
    
    let user = User.init(userName: "Alina", password: "Fox")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.usernameValueTF.delegate = self
        self.passwordValueTF.delegate = self
        usernameValueTF.clearButtonMode = .always
        passwordValueTF.clearButtonMode = .always
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.switchBaseNextTextField(textField)
        return true
    }
    
    private func switchBaseNextTextField(_ textField: UITextField){
        switch textField {
        case self.usernameValueTF:
            self.passwordValueTF.becomeFirstResponder()
        default:
            self.passwordValueTF.resignFirstResponder()
        }
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = user.userName
    }
   
    @IBAction func logInButtonTapped() {
        guard let inputTextForName = usernameValueTF.text, !inputTextForName.isEmpty else {
            showAlert(title: "Text field for username is empty",
                      message: "Please enter your name")
            return
        }
        
        guard let inputTextForPassword = passwordValueTF.text, !inputTextForPassword.isEmpty else {
            showAlert(title: "Text field for password is empty",
                      message: "Please enter your password")
            return
        }
       
        if usernameValueTF.text != user.userName && passwordValueTF.text != user.password {
            showAlert(title: "Invalid username or password",
                      message: "Please enter your name or password correctly")
        }
    
    }
    
    @IBAction func forgotUserNameButtonTapped() {
        showAlert(title: "Oops!", message: "Your name is ALina")
    }
    
    @IBAction func forgotPasswordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is Fox" )
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController else { return }
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
