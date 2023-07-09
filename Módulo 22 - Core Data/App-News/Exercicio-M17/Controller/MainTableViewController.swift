//
//  MainTableViewController.swift
//  Exercicio-M17
//
//  Created by Kleiton Mendes on 19/07/22.
//

import UIKit
import CoreData

class MainTableViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    
    var activityView: UIActivityIndicatorView?
    var dataController: DataController!
    var fetchedResultController: NSFetchedResultsController<NewsData>!
    var newsData = [NewsData]()

    fileprivate func setUpFetchedResultController() {
        let fetchRequest: NSFetchRequest<NewsData> = NewsData.fetchRequest()
        let sortDescriptor = NSSortDescriptor(key: "title", ascending: true)
        
        fetchRequest.sortDescriptors = [sortDescriptor]
        
        fetchedResultController = NSFetchedResultsController<NSFetchRequestResult>(fetchRequest: fetchRequest, managedObjectContext: dataController.viewContext, sectionNameKeyPath: nil, cacheName: nil)
        
        do{
            fetchedResultController.performFetch()
        }catch {
            print("No fetchedResultController")
        }
    }
    
    fileprivate func getNewsData() {
        NetworkManager.shared.getNews { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let response):
                deleteData()
                for item in response {
                    let newsData = NewsData(context: self.dataController.viewContext)
                    
                    newsData.url = item.url
                    newsData.title = item.title
                    newsData.byline = item.byline
                    
                    if let image = item.media.first?.mediaMetadata.last?.url {
                        guard let imageURL = URL(string: image) else { return }
                        guard let imageData = try? Data(contentsOf: imageURL) else { return }
                        
                        newsData.image = image
                        newsData.data = imageData
                    }
                    try? self.dataController.viewContext.save()
                }
            case .failure(let error):
                print("error: \(error)")
                }
            DispatchQueue.main.async {
                self.newsTableView.reloadData()
//                self.hideActivityIndicator()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.newsTableView.delegate = self
        self.newsTableView.dataSource = self
        
        self.newsTableView.register(UINib.init(nibName: "NewYorkTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
        getNewsData()
    }
    
    fileprivate func deleteData() {
        let fetchRequest: NSFetchRequest<NSFetchRequestResult> = NewsData.fetchRequest()
        
        let deleteRequest = NSBatchDeleteRequest(fetchRequest: fetchRequest)
        deleteRequest.resultType = .resultTypeObjectIDs
        
        do {
            let context = dataController.viewContext
            let result = try context.execute(deleteRequest)
            
            guard let deleteResult = result as? NSBatchDeleteRequest,
                  let ids = deleteRequest.result as? [NSManagedObjectID] else {
                      return
                  }
            let changes = [NSDeletedObjectsKey: ids]
            NSManagedObjectContext.mergeChanges(fromRemoteContextSave: changes, into: [context])
        } catch {
            print("error: \(error as Any)")
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
       }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        fetchedResultController = nil
    }

}

extension MainTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        print("count => \(newsData.count)")
        return fetchedResultController.sections?[section].numberOfObjects ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let aNewsData = fetchedResultController.object(at: indexPath)
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! NewYorkTableViewCell

        cell.title.text = aNewsData.title
        cell.by.text = aNewsData.byline
        if let imageData = aNewsData.data {
            cell.imageNews.image = UIImage(data: imageData)
        }
//        let data = newsData[indexPath.row]
//        cell.prepare(with: data)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let aNewsData = fetchedResultController.object(at: indexPath)
        
        guard let url = aNewsData.url else { return }
        
        if let url = URL(string: url) {
            UIApplication.shared.open(url)
        }
    
}
}

extension MainTableViewController: NSFetchedResultsControllerDelegate {
    func controllerWillChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.beginUpdates()
    }
    
    func controllerDidChangeContent(_ controller: NSFetchedResultsController<NSFetchRequestResult>) {
        tableView.endUpdates()
    }
    
    func controller(_ controller: NSFetchedResultsController<NSFetchRequestResult>, didChange anOnject: Any, at indexPath: IndexPath?, for type: NSFetchedResultsChangeType, newIndexPath: IndexPath?) {
        switch type {
        case. insert:
            if newIndexPath != nil {
                tableView.insertRows(at: [newIndexPath], with: .none)
            }
            break
        case .delete:
            if let newIndexPath != nil {
                tableView.deleteRows(at: [indexPath], with: .none)
            }
            break
        case .move, .update:
        break
        }
    }
}
