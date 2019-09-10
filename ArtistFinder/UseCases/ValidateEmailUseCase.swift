//
//  ValidateEmailUseCase.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Combine

class ValidateEmailUseCase {
    @Published var email: String = ""
    
    func execute(email: String) -> AnyPublisher<Bool, Never> {
        self.email = email
        return $email
            .map {
               return $0.count > 4
            }
            .eraseToAnyPublisher()
    }
}
