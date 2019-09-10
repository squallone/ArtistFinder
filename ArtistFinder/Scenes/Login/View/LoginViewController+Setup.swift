//
//  LoginViewController+Setup.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/8/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

extension LogInViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Setup
    
    func setupComponents()  {
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
    
    func setupUI()  {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
