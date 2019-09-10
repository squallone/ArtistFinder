//
//  LoginControllerViewModel+Protocols.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit
import Combine

public protocol LoginViewModelInputs {
    var email: CurrentValueSubject<String, Never> { get }
    var password: CurrentValueSubject<String, Never> { get }
    func login() -> CurrentValueSubject<Bool, Never>
}

public protocol LoginViewModelOutputs {
//    var isLoginEnabled: Driver<Bool> { get }
//    var invalidEmailText: Driver<String?> { get }
//    var invalidPasswordText: Driver<String?> { get }
//    var isLoading: BehaviorRelay<Bool> { get }
}

public protocol LoginViewModel {
    var inputs: LoginViewModelInputs { get }
    var outputs: LoginViewModelOutputs { get }
}


