//
//  WelcomeViewController+Setup.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/8/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

extension WelcomeViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Setup
    
    func setupComponents()  {
        // Setup walkthroughIdentifyView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.129, green: 0.161, blue: 0.224, alpha: 1).cgColor /* #212939 */, UIColor(red: 0.086, green: 0.102, blue: 0.141, alpha: 1).cgColor /* #161A24 */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.endPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.frame = view.bounds
        view.layer.insertSublayer(viewGradient, at: 0)
        allGradientLayers.append(viewGradient)
        
        // Setup IllustrationView
        
        illustrationView.layer.addSublayer(pulsator)
        pulsator.start()
        
        // Setup identifyTheMediaPLabel
        let identifyTheMediaPLabelAttrString = NSMutableAttributedString(string: "Search and meet talented musicians near you.", attributes: [
            .font : UIFont.systemFont(ofSize: 18),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 22, paragraphSpacing: 0)
            ])
        identifyTheMediaPLabel.attributedText = identifyTheMediaPLabelAttrString
        
        
        // Setup muzikaLogoButton
        muzikaLogoButton.snImageTextSpacing = 10
        
    }
    
    func setupUI()  {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}
