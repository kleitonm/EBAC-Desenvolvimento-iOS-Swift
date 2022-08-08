//
//  SecondViewController.swift
//  Exercicio-Modulo-12
//
//  Created by Kleiton Mendes on 14/03/22.
//

import Foundation
import UIKit

protocol SecondControllerDelegate: AnyObject {
    func notification(msg: String)
}

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegate?.notification(msg: "Você esta na segunda tela")
    }
    
    @IBAction func secondButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "thirdController" {
            let controller = segue.destination as? ThirdViewController
            controller?.delegate = self
            controller?.modalPresentationStyle = .fullScreen
        }
    }
    
}

extension SecondViewController: ThirdViewControllerDelegate {
    func notification(msg: String) {
    print(msg)
    }
}
