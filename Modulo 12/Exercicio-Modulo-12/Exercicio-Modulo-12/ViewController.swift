//
//  ViewController.swift
//  Exercicio-Modulo-12
//
//  Created by Kleiton Mendes on 14/03/22.
//

import UIKit

class ViewController: UIViewController {

    
    weak var delegate: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func firstButton(_ sender: Any) {
        performSegue(withIdentifier: "secondController", sender: nil)
    }
    
//        if segue.identifier == "seconddController" {
//            let controller = segue.destination as? SecondViewController
//            controller?.delegate = self
//            controller?.modalPresentationStyle = .fullScreen
//        }
    
}

//extension ViewController: SecondViewControllerDelegate {
//    func notification(msg: String) {
//    print(msg)
//    }
