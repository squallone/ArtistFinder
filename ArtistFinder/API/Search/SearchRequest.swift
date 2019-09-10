//
//  SearchRequest.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

enum SearchRequest: RequestProtocol {
    case search(_ text: String)
    
    var endpoint: String{
        switch self {
        case .search(let text):
            return "/search?term=\(text)"
        }
    }
    var httpMethod: HTTPMethod {
        switch self {
        case .search:
            return .get
        }
    }
    var parameters: [String: Any] {
        switch self {
        case .search:
            return [:]
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .search:
            return [:]
        }
    }
}
