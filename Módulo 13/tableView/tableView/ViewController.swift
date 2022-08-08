//
//  ViewController.swift
//  tableView
//
//  Created by Kleiton Mendes on 31/03/22.


import UIKit


class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!
    
//    var itens = ["Swift", "Apple", "iOS", "Kotlin", "Android", "Google", "Flutter", "React Native"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
        
    }
    private func delegates() {
        
        tableview.delegate = self
        tableview.dataSource = self
    
    }
}


extension ViewController: UITableViewDelegate {
    
   
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController(title: "Did Select", message: "Row at index path \(indexPath)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default))
        present(alert,animated: true)
//        print("Você clicou na célula: \(indexPath.row)")
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "EBAC"
        cell.detailTextLabel?.text = "Curso"
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
}
