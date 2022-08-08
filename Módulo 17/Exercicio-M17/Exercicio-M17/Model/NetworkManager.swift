//
//  NetworkManager.swift
//  Exercicio-M17
//
//  Created by Kleiton Mendes on 19/07/22.
//

import Foundation

enum ResultNewError: Error {
     case badURL, noData, invalidJSON
}

class NetworkManager {
    
    static let shared = NetworkManager()
    
    struct Constants {
        static let newsAPI = URL(string: "https://ebac-web-service.herokuapp.com/home")
    }
    
    private init() { }
    
    func getNews(completion: @escaping (Result<[ResultNews], ResultNewError>) -> Void) {
        
        guard let url = Constants.newsAPI else {
            completion(.failure(.badURL))
            return
        }
        
        let configuration = URLSessionConfiguration.default
//        configuration.allowsExpensiveNetworkAccess = true
        
        let session = URLSession(configuration: configuration)
        
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                completion(.failure(.invalidJSON))
                return
            }
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(RespondeElement.self, from: data)
                completion(.success(result.home.results))
            } catch {
                print("Error info: \(error.localizedDescription)")
                completion(.failure(.noData))
            }
        }
        task.resume()
    }
}
