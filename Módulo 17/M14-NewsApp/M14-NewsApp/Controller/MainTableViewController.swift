//
//  ViewController.swift
//  M14-NewsApp
//
//  Created by Kleiton Mendes on 09/05/22.
//

import UIKit

class MainTableViewController: UITableViewController {


    var newsData = [NewsData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        loadNews()
        
        
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
                self.tableView.reloadData()
            }
            
        case .failure(let error):
            print("error: \(error)")
        }
    }
    }
    
    //usa com um Json
//    func loadNews() {
//        let fileUrl = Bundle.main.url(forResource: "file", withExtension: "json")!
//        let jsonData = try! Data(contentsOf: fileUrl)
//
//        do {
//            let data = try JSONDecoder().decode(RespondeNews.self, from: jsonData)
//
//            news = data.results
//        } catch {
//            print("error ==> \(error.localizedDescription)    ")
//        }
//    }
   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("count => \(newsData.count)")
        return newsData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewYorkTableViewCell
        
        let data = newsData[indexPath.row]
        cell.prepare(with: data)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let url = URL(string: newsData[indexPath.row].url) {
            UIApplication.shared.open(url)
        }
//         print("indexPath => \(indexPath.row)")
    }
    
}

