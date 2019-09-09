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
    private var allGradientLayers: [CAGradientLayer] = []

    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        setupComponents()
        setupUI()
        setupGestureRecognizers()
        setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
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
    // MARK: - Setup

    private func setupComponents()  {
        // Setup backgroundView
        let backgroundViewGradient = CAGradientLayer()
        backgroundViewGradient.colors = [UIColor(red: 0.129, green: 0.161, blue: 0.224, alpha: 1).cgColor /* #212939 */, UIColor(red: 0.086, green: 0.102, blue: 0.141, alpha: 1).cgColor /* #161A24 */]
        backgroundViewGradient.locations = [0, 1]
        backgroundViewGradient.startPoint = CGPoint(x: 0.689, y: -0.098)
        backgroundViewGradient.endPoint = CGPoint(x: 0.311, y: 1.098)
        backgroundViewGradient.frame = backgroundView.bounds
        backgroundView.layer.insertSublayer(backgroundViewGradient, at: 0)
        allGradientLayers.append(backgroundViewGradient)
        
        
        // Setup donTHaveAnAccounLabel
        let donTHaveAnAccounLabelAttrString = NSMutableAttributedString(string: "DON’T HAVE AN ACCOUNT?", attributes: [
            .font : UIFont.systemFont(ofSize: 12),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 2,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        donTHaveAnAccounLabel.attributedText = donTHaveAnAccounLabelAttrString
        
        // Setup loginButtonButton
        loginButtonButton.snImageTextSpacing = 10
        
        // Setup formView
        
        // Setup backgroundTwoView
        backgroundTwoView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor /* #000000 */
        backgroundTwoView.layer.shadowOffset = CGSize(width: 0, height: 10)
        backgroundTwoView.layer.shadowRadius = 20
        backgroundTwoView.layer.shadowOpacity = 1
        
        let backgroundTwoViewGradient = CAGradientLayer()
        backgroundTwoViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        backgroundTwoViewGradient.locations = [0, 1]
        backgroundTwoViewGradient.startPoint = CGPoint(x: -0.36, y: 1.603)
        backgroundTwoViewGradient.endPoint = CGPoint(x: 1.303, y: 1.174)
        backgroundTwoViewGradient.frame = backgroundTwoView.bounds
        backgroundTwoView.layer.insertSublayer(backgroundTwoViewGradient, at: 0)
        allGradientLayers.append(backgroundTwoViewGradient)
        
        backgroundTwoView.layer.cornerRadius = 10
        backgroundTwoView.layer.masksToBounds = true
        
        // Setup emailAdressLabel
        emailAdressLabel.font = UIFont.systemFont(ofSize: 10)
        emailAdressLabel.textAlignment = .center
        emailAdressLabel.titleLabel.textAlignment = .center
        emailAdressLabel.titleFont = UIFont.systemFont(ofSize: 10)
        emailAdressLabel.selectedTitleColor = .white
        emailAdressLabel.titleColor = .white

        passwordLabel.font = UIFont.systemFont(ofSize: 10)
        passwordLabel.textAlignment = .center
        passwordLabel.titleLabel.textAlignment = .center
        passwordLabel.titleFont = UIFont.systemFont(ofSize: 10)
        passwordLabel.selectedTitleColor = .white
        passwordLabel.titleColor = .white
        passwordLabel.isSecureTextEntry = true

        
        // Setup forgotYourPasswordLabel
        let forgotYourPasswordLabelAttrString = NSMutableAttributedString(string: "FORGOT YOUR PASSWORD?", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        forgotYourPasswordLabel.attributedText = forgotYourPasswordLabelAttrString
        
        // Setup muzikaLogoImageView
        
    }

    private func setupUI()  {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
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
        animationOne()
        animationTwo()
    }


}
