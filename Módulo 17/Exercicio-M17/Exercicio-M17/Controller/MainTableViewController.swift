//
//  MainTableViewController.swift
//  Exercicio-M17
//
//  Created by Kleiton Mendes on 19/07/22.
//

import Foundation
import UIKit

class MainTableViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    
    var newsData = [NewsData]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.newsTableView.delegate = self
        self.newsTableView.dataSource = self
        
        self.newsTableView.register(UINib.init(nibName: "NewYorkTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        

        
        NetworkManager.shared.getNews { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let response):
            for item in response {
                if let imageURL = item.media.first?.mediaMetadata.last?.url {
                    let data = NewsData(title: item.title, byline: item.byline, image: imageURL, url: item.url)
                    self.newsData.append(data)
                }
            }
            DispatchQueue.main.async {
                self.newsTableView.reloadData()
            }
            
        case .failure(let error):
            print("error: \(error)")
        }
    }
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
       }


}

extension MainTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count => \(newsData.count)")
        return newsData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewYorkTableViewCell

        let data = newsData[indexPath.row]
        cell.prepare(with: data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let url = URL(string: newsData[indexPath.row].url) {
            UIApplication.shared.open(url)
        }
    
}
}
