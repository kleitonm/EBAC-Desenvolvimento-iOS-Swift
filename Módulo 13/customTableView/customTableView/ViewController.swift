//
//  ViewController.swift
//  customTableView
//
//  Created by Kleiton Mendes on 31/03/22.
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegates()
    }
    
    private func delegates() {
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

}

extension ViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Você clicou na celula: \(indexPath.row)")
    }
    
}


extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: <#T##IndexPath#>)
        
        cell.detailTextLabel?.text = "EBAC"
        cell.detailTextLabel?.text = "Nome do Curs"
    
        cell.imageView?.image = UIImage(systemName: "folder")
        cell.imageView?.tintColor = .orange
        
        return cell
}

}
