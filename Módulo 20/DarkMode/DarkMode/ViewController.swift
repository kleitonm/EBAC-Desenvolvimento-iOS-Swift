//
//  ViewController.swift
//  DarkMode
//
//  Created by Kleiton Mendes on 07/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var themeSwitch: UISwitch!
    let defaults = UserDefaults.standard
    let nightKey: String = "isNight"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let isNight = defaults.value(forKey: nightKey) {
            if isNight as! Bool {
                switchToNight()
        }
    }
    }

    @IBAction func switchFlipped(sender: Any) {
        if themeSwitch.isOn {
            switchToNight()
            defaults.set(true, forKey: nightKey)
        } else {
            switchToDay()
            defaults.set(false, forKey: nightKey)
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

}

