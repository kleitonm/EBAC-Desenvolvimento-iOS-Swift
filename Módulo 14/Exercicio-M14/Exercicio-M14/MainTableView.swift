//
//  MainTableView.swift
//  Exercicio-M14
//
//  Created by Kleiton Mendes on 19/06/22.
//

import UIKit

class MainTableView: UIViewController {
    
    @IBOutlet weak var newsTableView: UITableView!
    
    var news: [ResultNews] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        loadNews()
        
        self.newsTableView.delegate = self
        self.newsTableView.dataSource = self
        
        self.newsTableView.register(UINib(nibName: "NewYorkTableViewCell", bundle: nil), forCellReuseIdentifier: "NewYorkTableViewCell")
    }
    
    func loadNews() {
        let fileUrl = Bundle.main.url(forResource: "file", withExtension: "json")!
        let jsonData = try! Data(contentsOf: fileUrl)
        
        do {
            let data = try JSONDecoder().decode(RespondeNews.self, from: jsonData)

            news = data.results
        } catch {
            print("error ==> \(error.localizedDescription)")
        }
    }
}

extension MainTableView: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewYorkTableViewCell
       let newsData = news[indexPath.row]
       cell.prepare(with: newsData)
       
       return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let url = URL(string: news[indexPath.row].url) {
            UIApplication.shared.open(url)
        }
        
    }
}
