//
//  ViewController.swift
//  Exercício Módulo 2
//
//  Created by Kleiton Mendes on 24/09/2021.
//  Copyright © 2021 Kleiton Mendes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var size: UISlider!
    @IBOutlet weak var transparency: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func imagesize(_ sender: Any) {
        imageView.font = UIFont(size: CGFloat(size.value))
    }
    
    @IBAction func imagetransparency(_ sender: Any) {
        imageView.alpha = CGFloat(transparency.value)
    }
    
}


