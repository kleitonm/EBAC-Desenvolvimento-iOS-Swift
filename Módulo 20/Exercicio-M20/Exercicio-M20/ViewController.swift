//
//  ViewController.swift
//  Exercicio-M20
//
//  Created by Kleiton Mendes on 12/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var nameTextFiel: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let defaults = UserDefaults.standard
    let nighKey: String = "isNight"
    let nameKey: String = "name"
    let passwordKey: String = "password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let isNight = defaults.value(forKey: nighKey) {
            if isNight as! Bool {
                switchToNight()
            }
        }
    }
    
    @IBAction func switchFlipped(_ sender: Any) {
        if themeSwitch.isOn {
            switchToNight()
            defaults.set(true, forKey: nighKey)
        } else {
            switchToDay()
            defaults.set(false, forKey: nighKey)
        }
    }
    
    func switchToNight() {
        themeSwitch.setOn(true, animated: false)
        overrideUserInterfaceStyle = .dark
    }
    
    func switchToDay() {
        themeSwitch.setOn(false, animated: false)
        overrideUserInterfaceStyle = .light
    }
    
    @IBAction func signButton(_ sender: UIButton) {
        
        let nameText = nameTextFiel.text ?? ""
        let passwordText = passwordTextField.text ?? ""
        
            defaults.set(nameText, forKey: nameKey)
            defaults.set(passwordText, forKey: passwordKey)
        print("==> Dados Salvos")
        }
    
}

