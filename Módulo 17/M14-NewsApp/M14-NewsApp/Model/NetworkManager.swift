//
//  NetworkManager.swift
//  M15-NewsApp
//
//  Created by Kleiton Mendes on 13/07/22.
//

import Foundation

enum ResultNewsError: Error {
    case badURL, noData, invalidJSON
}
class NetworkManager { //Padrão de Singleton, a classe se instancia, tem uma única instancia, sempre que alguém chamar sempre vai usar a mesma classe
    
    static let shared = NetworkManager()
    
    //constante de api, para colocar o caminho/link
    struct Constants {
        static let newAPI = URL(string: "https://ebac-web-service.herokuapp.com/home")
    }
    
    private init() { }
    //uma closure, que retorna o Result sendo sucesso ou falha
    func getNews(completion: @escaping (Result<[ResultNews], ResultNewsError>) -> Void) {
        
        //Setup the url
        guard let url = Constants.newAPI else {
            completion(.failure(.badURL))
            return
        }
        
        //Create a configuration
        let configuration = URLSessionConfiguration.default
        configuration.allowsExpensiveNetworkAccess = true
        
        //Create a session
        let session = URLSession(configuration: configuration)
        
        //Create the task
        let task = session.dataTask(with: url) { (data,response, error) in
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
