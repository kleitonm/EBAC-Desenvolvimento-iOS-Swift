//
//  File.swift
//  EBAC
//
//  Created by Kleiton Mendes on 28/03/22.
//

import Foundation
import UIKit
import PlaygroundSupport
import CoreGraphics


class MainViewCOntroller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var tableView: UITableView!
    let item = ["Ebac" , "Curso", "iOS", "Mobile", "Develop", "Android", "Kotlin", "Flutter", "React Native"]
                
        override func viewDidLoad() {
        super.viewDidLoad()
            self.view.frame = CGRect(x: 0, y: 0, width: 220, height: 300)
        
        self.tableView = UITableView(frame: self.view.frame)
        self.tableView!.dataSource = self
        self.tableView!.delegate = self
        self.tableView!.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
            self.view.addSubview(self.tableView)
    }

    // MARK: UITableViewDataSourse
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.item.count
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableView {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableView
        cell.textLabel?.text = "\(self.items[indexPath.row])"
        
        return cell
    }
        
        // MARK: UITableViewDelegate
        func tableView(_ tableView: <#T##UITableView#>, didSelectRowAt indexPath: IndexPath) {
            let alert = UIAlertController(title: "Did Select", message: "Row at index", path \(IndexPath):)
            alert.addAction(UIAlertAction(title: "OK", style: .default))
            present(alert, animated: true)
        }

}
                
var mainView = MainViewController()
PlaygroundPage.current.liveView = mainView.view
