//
//  ArtistProfile2ViewController.swift
//  ArtistFinder
//
//  Created by Abdiel Soto.
//  Copyright © 2018 iOSDevsMx. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class ArtistProfile2ViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var popularSongsLabel: UILabel!
    @IBOutlet weak var coldplayAreABritiLabel: UILabel!
    @IBOutlet weak var alternativeRockLabel: UILabel!
    @IBOutlet weak var playAllButtonView: UIView!
    @IBOutlet weak var artistLabel: UILabel!
    private var allGradientLayers: [CAGradientLayer] = []


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
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
        backgroundViewGradient.frame = self.backgroundView.bounds
        self.backgroundView.layer.insertSublayer(backgroundViewGradient, at: 0)
        self.allGradientLayers.append(backgroundViewGradient)
        
        
        // Setup gradientView
        let gradientViewGradient = CAGradientLayer()
        gradientViewGradient.colors = [UIColor(red: 0.114, green: 0.141, blue: 0.192, alpha: 0).cgColor /* #1D2431 */, UIColor(red: 0.114, green: 0.137, blue: 0.192, alpha: 1).cgColor /* #1D2331 */]
        gradientViewGradient.locations = [0, 1]
        gradientViewGradient.startPoint = CGPoint(x: 0.5, y: 0)
        gradientViewGradient.endPoint = CGPoint(x: 0.5, y: 1)
        gradientViewGradient.frame = self.gradientView.bounds
        self.gradientView.layer.insertSublayer(gradientViewGradient, at: 0)
        self.allGradientLayers.append(gradientViewGradient)
        
        
        // Setup popularSongsLabel
        let popularSongsLabelAttrString = NSMutableAttributedString(string: "POPULAR SONGS", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.popularSongsLabel.attributedText = popularSongsLabelAttrString
        
        // Setup coldplayAreABritiLabel
        let coldplayAreABritiLabelAttrString = NSMutableAttributedString(string: "Coldplay are a British rock band formed in 1996 by lead vocalist and keyboardist Chris Martin.", attributes: [
            .font : UIFont.systemFont(ofSize: 18),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 22, paragraphSpacing: 0)
        ])
        self.coldplayAreABritiLabel.attributedText = coldplayAreABritiLabelAttrString
        
        // Setup alternativeRockLabel
        let alternativeRockLabelAttrString = NSMutableAttributedString(string: "ALTERNATIVE ROCK", attributes: [
            .font : UIFont.systemFont(ofSize: 12),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 2,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.alternativeRockLabel.attributedText = alternativeRockLabelAttrString
        
        // Setup playAllButtonView
        self.playAllButtonView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor /* #000000 */
        self.playAllButtonView.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.playAllButtonView.layer.shadowRadius = 20
        self.playAllButtonView.layer.shadowOpacity = 1
        
        let playAllButtonViewGradient = CAGradientLayer()
        playAllButtonViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        playAllButtonViewGradient.locations = [0, 1]
        playAllButtonViewGradient.startPoint = CGPoint(x: -0, y: 1)
        playAllButtonViewGradient.endPoint = CGPoint(x: 1, y: 0)
        playAllButtonViewGradient.frame = self.playAllButtonView.bounds
        self.playAllButtonView.layer.insertSublayer(playAllButtonViewGradient, at: 0)
        self.allGradientLayers.append(playAllButtonViewGradient)
        
        self.playAllButtonView.layer.cornerRadius = 30
        self.playAllButtonView.layer.masksToBounds = true
        
        // Setup artistLabel
        let artistLabelAttrString = NSMutableAttributedString(string: "ARTIST", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.artistLabel.attributedText = artistLabelAttrString
        
    }

    private func setupUI()  {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in self.allGradientLayers {
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
}
