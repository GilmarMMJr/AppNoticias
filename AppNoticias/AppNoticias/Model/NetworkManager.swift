//
//  NetworkManager.swift
//  AppNoticias
//
//  Created by Gilmar Junior on 23/01/22.
//

import Foundation

enum ResultNewsError: Error {
    case badURL
    case noData
    case invalidJSON
}

class NetworkManger {
    
    static let shared = NetworkManger()
    
    struct Constants {
        static let newsAPi = URL(string: "https://web-ebac.herokuapp.com/Home")
    }
    
    private init() { }
    
    func getNews(completion: @escaping (Result<[ResultNews], ResultNewsError>) -> Void){
        
        // setup url
        guard let url = Constants.newsAPi else {
            completion(.failure(.badURL))
            return
        }
        
        // create a configuration
        let configuration = URLSessionConfiguration.default
        
        // create a session
        let session = URLSession(configuration: configuration)
        
        // create the task
        let task = session.dataTask(with: url) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let data = data else {
                completion(.failure(.invalidJSON))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let result = try decoder.decode(ResponseElement.self, from: data)
                completion(.success(result.home.results))
            } catch {
                print("Error info: \(error.localizedDescription)")
                completion(.failure(.noData))
            }
        }
        
        task.resume()
        
    }
    
    

}
