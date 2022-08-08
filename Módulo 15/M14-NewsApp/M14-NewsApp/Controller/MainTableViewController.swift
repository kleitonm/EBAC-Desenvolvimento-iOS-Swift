//
//  ViewController.swift
//  M14-NewsApp
//
//  Created by Kleiton Mendes on 09/05/22.
//

import UIKit

class MainTableViewController: UITableViewController {


    var news: [ResultNews] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadNews()
        // Do any additional setup after loading the view.
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

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count => \(news.count)")
        return news.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewYorkTableViewCell
        let newsData = news[indexPath.row]
        cell.prepare(with: newsData)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let url = URL(string: news[indexPath.row].url) {
            UIApplication.shared.open(url)
        }
//         print("indexPath => \(indexPath.row)")
    }
    
}

