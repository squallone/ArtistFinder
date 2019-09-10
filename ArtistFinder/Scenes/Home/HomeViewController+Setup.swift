//
//  HomeViewController+Setup.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

extension HomeViewController {
    // MARK: - Setup

    func setupComponents()  {
        // Setup backgroundView
        let backgroundViewGradient = CAGradientLayer()
        backgroundViewGradient.colors = [UIColor(red: 0.129, green: 0.161, blue: 0.224, alpha: 1).cgColor /* #212939 */, UIColor(red: 0.086, green: 0.102, blue: 0.141, alpha: 1).cgColor /* #161A24 */]
        backgroundViewGradient.locations = [0, 1]
        backgroundViewGradient.startPoint = CGPoint(x: 0.689, y: -0.098)
        backgroundViewGradient.endPoint = CGPoint(x: 0.311, y: 1.098)
        backgroundViewGradient.frame = self.backgroundView.bounds
        self.backgroundView.layer.insertSublayer(backgroundViewGradient, at: 0)
        self.allGradientLayers.append(backgroundViewGradient)
        
        
        // Setup latestView
        
        // Setup latestArtistsLabel
        let latestArtistsLabelAttrString = NSMutableAttributedString(string: "LATEST ARTISTS", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.latestArtistsLabel.attributedText = latestArtistsLabelAttrString
        
        // Setup viewAllLabel
        let viewAllLabelAttrString = NSMutableAttributedString(string: "VIEW ALL", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .right, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.viewAllLabel.attributedText = viewAllLabelAttrString
        
        // Setup tableviewTableView
        tableviewTableView.rowHeight = 120
        
        // Setup popularView
        
        // Setup popularArtistsLabel
        let popularArtistsLabelAttrString = NSMutableAttributedString(string: "POPULAR ARTISTS", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.popularArtistsLabel.attributedText = popularArtistsLabelAttrString
        
        // Setup viewAllTwoLabel
        let viewAllTwoLabelAttrString = NSMutableAttributedString(string: "VIEW ALL", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .right, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.viewAllTwoLabel.attributedText = viewAllTwoLabelAttrString
        
        // Setup collectionViewCollectionView
        
        // Setup searchView
        self.searchView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.searchView.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.searchView.layer.shadowRadius = 10
        self.searchView.layer.shadowOpacity = 1
        
        self.searchView.layer.cornerRadius = 30
        self.searchView.layer.masksToBounds = true
        
        // Setup searchForArtistSLabel
        let searchForArtistSLabelAttrString = NSMutableAttributedString(string: "Search for artist, song or lyrics…", attributes: [
            .font : UIFont.systemFont(ofSize: 14),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 22, paragraphSpacing: 0)
        ])
        self.searchTextField.attributedText = searchForArtistSLabelAttrString
        
        // Setup homeLabel
        let homeLabelAttrString = NSMutableAttributedString(string: "HOME", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.homeLabel.attributedText = homeLabelAttrString
    }

    func setupUI()  {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

}
