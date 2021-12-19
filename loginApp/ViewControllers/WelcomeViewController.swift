//
//  WelcomeViewController.swift
//  loginApp
//
//  Created by Alina Sokolova on 15.12.21.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var userNameValueLabel: UILabel!
    
    var username: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.type = .axial
        self.view.layer.insertSublayer(gradientLayer, at: 0)
        
        userNameValueLabel.text = "Welcome, \(username ?? "")!"
    }
    
  
    }
    


