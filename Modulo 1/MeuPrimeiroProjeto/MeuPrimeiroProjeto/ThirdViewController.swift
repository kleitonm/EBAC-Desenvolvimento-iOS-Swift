//
//  ThirdViewController.swift
//  MeuPrimeiroProjeto
//
//  Created by Kleiton Mendes on 22/09/2021.
//  Copyright © 2021 Kleiton Mendes. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var fontSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var label: UILabel!
//    var receivedValue: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
//        label.text = receivedValue
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func fontSize(_ sender: Any) {
        label.font = UIFont(name: "helvetica", size: CGFloat(fontSlider.value))
    }
    @IBAction func alphaLabel(_ sender: Any) {
       label.alpha = CGFloat(alphaSlider.value)
        
    }
    
    

}
