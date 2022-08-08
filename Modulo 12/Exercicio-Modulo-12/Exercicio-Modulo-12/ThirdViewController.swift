//
//  ThirdViewController.swift
//  Exercicio-Modulo-12
//
//  Created by Kleiton Mendes on 14/03/22.
//

import UIKit

protocol ThirdViewControllerDelegate: AnyObject {
    func notification(msg: String)
}

class ThirdViewController: UIViewController {

    weak var delegate: ThirdViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.notification(msg: "Você esta na terceira tela")
    }
    
    
    @IBAction func thirdButton(_ sender: Any) {
        delegate?.notification(msg: "Você esta na terceira tela")
        performSegue(withIdentifier: "firstController", sender: nil)
    }
    
}

