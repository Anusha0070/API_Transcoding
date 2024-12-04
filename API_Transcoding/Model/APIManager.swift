//
//  APIManager.swift
//  API_Transcoding
//
//  Created by Anusha Raju on 12/3/24.
//

import Foundation

protocol APIManagerProtocol {
    func fetchData<T: Decodable>( from url:String, closure: @escaping ([T]) -> Void)
}

class APIManager: APIManagerProtocol {
    
    static let sharedInstance = APIManager()
    
    private init() {}
    
    func fetchData<T: Decodable>(from url: String, closure: @escaping ([T]) -> Void) {
        
        guard let serverURL = URL(string: url) else { return }
        
        URLSession.shared.dataTask(with: serverURL){ data, response, error in
            
            guard let data, error == nil else { return }
            
            do{
                let receivedData = try JSONDecoder().decode([T].self, from:data)

                closure(receivedData)

                print("Received Data successfully!!")
                
            } catch {
                print("Unable to fetch data \(error)")
                
            }
            
        }.resume()
        
    }
}
