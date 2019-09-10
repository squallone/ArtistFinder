//
//  LoginControllerViewModel.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/8/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Combine

enum LoginViewModelState {
    case idle
    case successLogin
    case loading
    case finishedLoading
    case error(Error)
}

final class LoginViewModel {
    // MARK: - Properties
    private let emailUseCase: ValidateEmailUseCase
    private let passwordUseCase: ValidatePasswordUseCase
    private let loginAPI: LoginAPI
    private var cancellable: AnyCancellable?
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Inputs
    @Published var email: String = ""
    @Published var password: String = ""
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Outputs
    @Published private(set) var state: LoginViewModelState = .idle
    
    lazy var isValidEmail: AnyPublisher<Bool, Never> =
        $email.removeDuplicates()
            .flatMap { email in
                return self.emailUseCase.execute(email: email)
        }
        .eraseToAnyPublisher()
    
    lazy var isValidPassword: AnyPublisher<Bool, Never> =
        $password.removeDuplicates()
            .flatMap { email in
                return self.passwordUseCase.execute(password: email)
        }
        .eraseToAnyPublisher()
    
    lazy var enabledButton: AnyPublisher<Bool, Never> =
        Publishers.CombineLatest(isValidEmail, isValidPassword)
            .map { $0 && $1 }
            .eraseToAnyPublisher()
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Initialization
    init(emailUseCase: ValidateEmailUseCase,
         passwordUseCase: ValidatePasswordUseCase,
         loginAPI: LoginAPI) {
        self.emailUseCase = emailUseCase
        self.passwordUseCase = passwordUseCase
        self.loginAPI = loginAPI
    }
    
    // MARK: - Actions
    func login() {
        state = .loading
        _ = loginAPI
            .login(email, password)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let error):
                    self?.state = .error(error)
                case .finished:
                    self?.state = .finishedLoading
                }
                
                }, receiveValue: { [weak self] user in
                    self?.state = .successLogin
            })
    }
}
