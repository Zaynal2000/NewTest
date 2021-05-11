//
//  NetworkService.swift
//  NNNnnn
//
//  Created by Зайнал Гереев on 05.03.2021.
//

import Foundation


class NetworkService {
    
    func request(urlString: String, completion: @escaping (Result<Data, Error>) -> Void){
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, respons, error) in
            DispatchQueue.main.async {
                if let error = error{
                    completion(.failure(error))
                    return
                }
                guard let data = data else {return}
                completion(.success(data))
            }
        }.resume()
    }
}
