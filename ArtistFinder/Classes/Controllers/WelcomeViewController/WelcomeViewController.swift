//
//  WelcomeViewController.swift
//  ArtistFinder
//
//  Created by Abdiel Soto.
//  Copyright © 2018 iOSDevsMx. All rights reserved.
//

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Import

import UIKit
import Pulsator
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class WelcomeViewController: UIViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties

    @IBOutlet weak var walkthroughIdentifyView: UIView!
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var identifyTheMediaPLabel: UILabel!
    @IBOutlet weak var illustrationView: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var muzikaLogoButton: SupernovaButton!
    var allGradientLayers: [CAGradientLayer] = []
    let pulsator: Pulsator = {
        let pulsator = Pulsator()
        pulsator.backgroundColor = UIColor(red: 252/255, green: 41/255, blue: 97/255, alpha: 1).cgColor
        pulsator.numPulse = 6
        pulsator.animationDuration = 8.0
        pulsator.radius = 200.0
        return pulsator
    }()
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        setupComponents()
        setupUI()        
    }

    override public func viewDidAppear(_ animated: Bool)  {
        super.viewDidAppear(animated)
        
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
        
        view.layer.layoutIfNeeded()
        pulsator.position = illustrationView.layer.position
    }

    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .lightContent
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onMuzikaLogoPressed(_ sender: UIButton)  {
        performSegue(withIdentifier: "Modal LogIn", sender: nil)
        animationOne()
    }
}
