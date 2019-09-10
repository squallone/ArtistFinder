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
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class LogInViewController: UIViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

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
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        setupComponents()
        setupUI()
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
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return true
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }

    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Actions

    @IBAction public func onButtonPressed(_ sender: UIButton)  {
        performSegue(withIdentifier: "Modal Home", sender: nil)
        animationTwo()
    }
}
