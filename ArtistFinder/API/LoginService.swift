//
//  API.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Foundation
import Combine

protocol LoginAPI {
    func login(_ email: String, _ password: String) -> AnyPublisher<User, Error>
}

struct LoginService: LoginAPI {
    private let requestService: RequestService
    
    // MARK: - Initilization
    public init(requestService: RequestService = RequestService(environment: Environment.baseURL)) {
        self.requestService = requestService
    }
    
    func login(_ email: String, _ password: String) -> AnyPublisher<User, Error>  {
        return requestService
            .fetchData(request: LoginRequest.login(email, password))
    }
}
