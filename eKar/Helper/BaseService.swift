//
//  BaseService.swift
//  eKar
//
//  Created by Ahmet Öztemiz on 24.04.2022.
//

import UIKit

protocol BaseServiceProtocol: AnyObject {
    func responseService <T: Decodable> (params: [(urlParameters, String)],
                                         completion: @escaping ((T?) -> Void))
}

enum urlParameters: String {
    case key
    case vin
}

class BaseService: BaseServiceProtocol {
    private func getURLComponents(params: [(type: urlParameters, value: String)]? = nil) -> URL? {
        let baseURL = "http://api.carsxe.com/specs"
        var component = URLComponents(string: baseURL)
        if let params = params {
            let queryItems = params.map {
                URLQueryItem(name: $0.type.rawValue, value: $0.value)
            }
            component?.queryItems = queryItems
        }
        
        return component?.url
    }
    
    func responseService <T: Decodable> (params: [(urlParameters, String)],
                                         completion: @escaping ((T?) -> Void)) {
        
        guard let url = getURLComponents(params: params) else { return }
                
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let _ = error { completion(nil) }
            guard let data = data else { return }
            
            if let dataModel = try? JSONDecoder().decode(T.self, from: data) {
                completion(dataModel)
            } else {
                completion(nil)
            }
        }
        task.resume()
    }
    
    static func downloadImage(from url: URL, completion: @escaping ((UIImage?) -> Void)) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let httpURLResponse = response as? HTTPURLResponse, httpURLResponse.statusCode == 200,
                  let mimeType = response?.mimeType, mimeType.hasPrefix("image"),
                  let data = data, error == nil,
                  let image = UIImage(data: data) else {

                let emptyImage = UIImage()
                DispatchQueue.main.async {
                    completion(emptyImage)
                }
                return
            }
            DispatchQueue.main.async {
                completion(image)
            }
        }.resume()
    }
}
