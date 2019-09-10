//
//  LoginRequest.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

enum LoginRequest: RequestProtocol {
    case login(_ email: String, _ password: String)
    
    var endpoint: String{
        switch self {
        case .login:
            return "api/blob/27f22463-d377-11e9-9a9e-2500248313e9"
        }
    }
    var httpMethod: HTTPMethod {
        switch self {
        case .login:
            return .post
        }
    }
    var parameters: [String: Any] {
        switch self {
        case .login:
            return [:]
        }
    }
    
    var headers: [String : String] {
        switch self {
        case .login:
            return [:]
        }
    }
}
