//
//  RequestService.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Foundation
import Combine

struct RequestService {
    private let environment: ServiceEnvironment
    
    init(environment: ServiceEnvironment) {
        self.environment = environment
    }
    
    func fetchData<T: Decodable>(request: RequestProtocol) -> AnyPublisher<T, Error>{
       let URLString = environment.baseURL(endpoint: request.endpoint)
        // Validate URL
        guard let url = URL(string: URLString) else {
            preconditionFailure("Can't create url for query")
        }
        // Create URLRequest
        var requestURL = URLRequest(url: url)
        
        switch request.httpMethod {
          case .post:
            for method in request.headers {
                requestURL.setValue(method.value, forHTTPHeaderField: method.key)
            }
            requestURL.httpMethod = request.httpMethod.rawValue
            requestURL.httpBody = try? JSONSerialization.data(withJSONObject: request.parameters, options: .prettyPrinted)
        case .get:
            break
        }
        
        return URLSession.shared.dataTaskPublisher(for: requestURL)
            .map { $0.data }
            .decode(type: T.self, decoder: JSONDecoder())
            .receive(on: RunLoop.main)
            .eraseToAnyPublisher()
    }
}
