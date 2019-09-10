//
//  NetworkingCore.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Foundation

enum HTTPMethod: String {
    case post = "POST"
    case get = "GET"
}

protocol RequestProtocol {
    var endpoint: String { get }
    var httpMethod: HTTPMethod { get }
    var parameters: [String: Any] { get }
    var headers: [String: String] { get }
}

public struct ServiceEnvironment {
    var port: String
    var procotol: String
    var host: String
    var path: String
    
    func baseURL(endpoint: String) -> String {
        return  procotol + port + host + path + endpoint
    }
}
