//
//  AboutMyselfViewController.swift
//  loginApp
//
//  Created by Alina Sokolova on 19.12.21.
//

import UIKit

class AboutMyselfViewController: UIViewController {
    let person = Person.init(name: "Алина", surname: "Саковская", age: "21", citizenship: "РБ", city: "Минсск", education: "БГАА", work: "ООО 'Авиакомпания Рада'", position: "Инженер", email: "lina-sokolova00@mail.ru")

    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.yellow.cgColor]
        gradientLayer.startPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.type = .axial
        self.view.layer.insertSublayer(gradientLayer, at: 0)

        // Do any additional setup after loading the view.
    }
    

   

}
