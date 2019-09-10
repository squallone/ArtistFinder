//
//  ValidatePasswordUseCase.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Combine

class ValidatePasswordUseCase {
    @Published var password: String = ""
    
    func execute(password: String) -> AnyPublisher<Bool, Never> {
        self.password = password
        return $password
            .map {
                return $0.count > 4
            }
            .eraseToAnyPublisher()
    }
}
