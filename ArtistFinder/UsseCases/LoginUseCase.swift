//
//  LoginUseCase.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit
import Combine

class LoginUseCase {
    @Published var password = ""
    @Published var passwordRepeat = ""
    
    var willChange = PassthroughSubject<Void, Never>()
    
    var isValid = false {
        didSet {
            willChange.send()
        }
    }
    
    var validPassword: AnyPublisher<Bool, Never> {
        Publishers.CombineLatest($password, $passwordRepeat)
            .map { password, passwordRepeat in
                return !password.isEmpty && password == passwordRepeat
            }
            .eraseToAnyPublisher()
    }
}
