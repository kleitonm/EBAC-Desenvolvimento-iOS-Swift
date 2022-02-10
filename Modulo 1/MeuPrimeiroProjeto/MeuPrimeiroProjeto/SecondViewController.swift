//
//  SecondViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Kleiton Mendes on 22/09/2021.
//  Copyright © 2021 Kleiton Mendes. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //Botao voltar
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
        override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "ThirdScreen" {
            let controller = segue.destination as? ThirdViewController
                controller?.modalPresentationStyle = .fullScreen
//            controller?.receivedValue = "Hello!"
        }
    }
    
   
}
