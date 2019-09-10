//
//  LogInViewController.swift
//  ArtistFinder
//
//  Created by Abdiel Soto.
//  Copyright © 2018 iOSDevsMx. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import
import UIKit
import SkyFloatingLabelTextField
import Combine
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation
class LogInViewController: UIViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties (View)
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var donTHaveAnAccounLabel: UILabel!
    @IBOutlet weak var loginButtonButton: SupernovaButton!
    @IBOutlet weak var formView: UIView!
    @IBOutlet weak var backgroundTwoView: UIView!
    @IBOutlet weak var emailAdressLabel: SkyFloatingLabelTextField!
    @IBOutlet weak var passwordLabel: SkyFloatingLabelTextField!
    @IBOutlet weak var forgotYourPasswordLabel: UILabel!
    @IBOutlet weak var muzikaLogoImageView: UIImageView!
    var allGradientLayers: [CAGradientLayer] = []
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties (Controller)
    let viewModel =
        LoginViewControllerViewModel(emailUseCase: ValidateEmailUseCase(),
                                     passwordUseCase: ValidatePasswordUseCase(),
                                     loginAPI: LoginService())
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Lifecycle
    override public func viewDidLoad()  {
        super.viewDidLoad()
        setupComponents()
        setupUI()
        setupBindings()
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Navigation bar, if any
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Animations
        animationOne()
        animationTwo()
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout
    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in allGradientLayers {
            layer.frame = layer.superlayer?.frame ?? CGRect.zero
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Binding
    private func setupBindings() {
        _ = emailAdressLabel.textPublisher
            .receive(on: DispatchQueue.main)
            .assign(to: \.email, on: viewModel)
        
        _ = passwordLabel.textPublisher
            .receive(on: DispatchQueue.main)
            .assign(to: \.password, on: viewModel)
        
        _ = viewModel.enabledButton
            .receive(on: DispatchQueue.main)
            .assign(to: \.isEnabled, on: loginButtonButton)
        
        _ = viewModel.$state
            .receive(on: DispatchQueue.main)
            .sink {  state in
                switch state {
                case .successLogin:
                    Loader.hide()
                    self.showHome()
                case .loading:
                    Loader.show()
                case .finishedLoading:
                    Loader.hide()
                case .error(let error):
                    Loader.hide()
                    print(error)
                case .idle:
                    break
                }
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Actions
    
    @IBAction public func onButtonPressed(_ sender: UIButton)  {
        viewModel.login()
        animationTwo()
    }
    
    private func showHome() {
        performSegue(withIdentifier: "Modal Home", sender: nil)
    }
}
