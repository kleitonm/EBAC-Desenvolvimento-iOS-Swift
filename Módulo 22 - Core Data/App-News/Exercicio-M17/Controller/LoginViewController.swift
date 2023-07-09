//
//  LoginViewController.swift
//  Exercicio-M17
//
//  Created by Kleiton Mendes on 19/07/22.
//

import Foundation
import UIKit
import CoreData

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    var dataController: DataController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
}
    
    private func completeLogin() {
        DispatchQueue.main.async {
            let controller = self.storyboard!.instantiateViewController(withIdentifier: "MainNavagationController") as! UINavigationController
            
            let rootViewController = controller.topViewController as! UITabBarController
            
            let tableViewController = rootViewController.viewControllers![0] as! MainTableViewController
            
            tableViewController.dataController = self.dataController
            
            self.present(controller, animated: true, completion: nil)
        }
    }
    
    @IBAction func conectarButton(_ sender: UIButton) {
        
    }
    
    @IBAction func esqueceuSenhaButton(_ sender: UIButton) {
    }
    
}
