//
//  ViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Kleiton Mendes on 09/09/2021.
//  Copyright © 2021 Kleiton Mendes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    @IBOutlet weak var button: UIButton!
    
    //MARK: - ViewDidload
    override func viewDidLoad() {
        super.viewDidLoad()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Button(_ sender: Any) {
//        button.setTitle("Button", for: .normal)
//        Label.text = "Hello"
//        Label.text = "Você tem mais uma chance"
        
        performSegue(withIdentifier: "second", sender: nil)
    }
    
    @IBAction func unwindToFist(segue: UIStoryboardSegue) {
        
    }
    //MARK: - function COlor Change
    

}

