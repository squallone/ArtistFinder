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


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class WelcomeViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var walkthroughIdentifyView: UIView!
    @IBOutlet weak var textView: UIView!
    @IBOutlet weak var identifyTheMediaPLabel: UILabel!
    @IBOutlet weak var illustrationView: UIView!
    @IBOutlet weak var circle3View: UIView!
    @IBOutlet weak var circle2View: UIView!
    @IBOutlet weak var circle1View: UIView!
    @IBOutlet weak var buttonView: UIView!
    @IBOutlet weak var muzikaLogoButton: SupernovaButton!
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
        // Animations
        self.animationTwo()
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup walkthroughIdentifyView
        let viewGradient = CAGradientLayer()
        viewGradient.colors = [UIColor(red: 0.129, green: 0.161, blue: 0.224, alpha: 1).cgColor /* #212939 */, UIColor(red: 0.086, green: 0.102, blue: 0.141, alpha: 1).cgColor /* #161A24 */]
        viewGradient.locations = [0, 1]
        viewGradient.startPoint = CGPoint(x: 0.689, y: -0.098)
        viewGradient.endPoint = CGPoint(x: 0.311, y: 1.098)
        viewGradient.frame = self.view.bounds
        self.view.layer.insertSublayer(viewGradient, at: 0)
        self.allGradientLayers.append(viewGradient)
        
        
        // Setup textView
        
        // Setup identifyTheMediaPLabel
        let identifyTheMediaPLabelAttrString = NSMutableAttributedString(string: "Identify the media playing around you and discover lyrics.", attributes: [
            .font : UIFont.systemFont(ofSize: 18),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: 22, paragraphSpacing: 0)
        ])
        self.identifyTheMediaPLabel.attributedText = identifyTheMediaPLabelAttrString
        
        // Setup illustrationView
        let illustrationViewGradient = CAGradientLayer()
        illustrationViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        illustrationViewGradient.locations = [0, 1]
        illustrationViewGradient.startPoint = CGPoint(x: -0, y: 1)
        illustrationViewGradient.endPoint = CGPoint(x: 1, y: 0)
        illustrationViewGradient.frame = self.illustrationView.bounds
        self.illustrationView.layer.insertSublayer(illustrationViewGradient, at: 0)
        self.allGradientLayers.append(illustrationViewGradient)
        
        self.illustrationView.layer.cornerRadius = 205
        self.illustrationView.layer.masksToBounds = true
        
        // Setup circle3View
        let circle3ViewGradient = CAGradientLayer()
        circle3ViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        circle3ViewGradient.locations = [0, 1]
        circle3ViewGradient.startPoint = CGPoint(x: -0, y: 1)
        circle3ViewGradient.endPoint = CGPoint(x: 1, y: 0)
        circle3ViewGradient.frame = self.circle3View.bounds
        self.circle3View.layer.insertSublayer(circle3ViewGradient, at: 0)
        self.allGradientLayers.append(circle3ViewGradient)
        
        self.circle3View.layer.cornerRadius = 165
        self.circle3View.layer.masksToBounds = true
        
        // Setup circle2View
        let circle2ViewGradient = CAGradientLayer()
        circle2ViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        circle2ViewGradient.locations = [0, 1]
        circle2ViewGradient.startPoint = CGPoint(x: -0, y: 1)
        circle2ViewGradient.endPoint = CGPoint(x: 1, y: 0)
        circle2ViewGradient.frame = self.circle2View.bounds
        self.circle2View.layer.insertSublayer(circle2ViewGradient, at: 0)
        self.allGradientLayers.append(circle2ViewGradient)
        
        self.circle2View.layer.cornerRadius = 125
        self.circle2View.layer.masksToBounds = true
        
        // Setup circle1View
        let circle1ViewGradient = CAGradientLayer()
        circle1ViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        circle1ViewGradient.locations = [0, 1]
        circle1ViewGradient.startPoint = CGPoint(x: -0, y: 1)
        circle1ViewGradient.endPoint = CGPoint(x: 1, y: 0)
        circle1ViewGradient.frame = self.circle1View.bounds
        self.circle1View.layer.insertSublayer(circle1ViewGradient, at: 0)
        self.allGradientLayers.append(circle1ViewGradient)
        
        self.circle1View.layer.cornerRadius = 85
        self.circle1View.layer.masksToBounds = true
        
        // Setup buttonView
        self.buttonView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.buttonView.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.buttonView.layer.shadowRadius = 40
        self.buttonView.layer.shadowOpacity = 1
        
        let buttonViewGradient = CAGradientLayer()
        buttonViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        buttonViewGradient.locations = [0, 1]
        buttonViewGradient.startPoint = CGPoint(x: -0, y: 1)
        buttonViewGradient.endPoint = CGPoint(x: 1, y: 0)
        buttonViewGradient.frame = self.buttonView.bounds
        self.buttonView.layer.insertSublayer(buttonViewGradient, at: 0)
        self.allGradientLayers.append(buttonViewGradient)
        
        self.buttonView.layer.cornerRadius = 55
        self.buttonView.layer.masksToBounds = true
        
        // Setup muzikaLogoButton
        self.muzikaLogoButton.snImageTextSpacing = 10
        
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
        return false
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onMuzikaLogoPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Modal LogIn", sender: nil)
        self.animationOne()
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    private func animationOne()  {
        let animationElement1 = CAAnimationGroup()
        animationElement1.isRemovedOnCompletion = false
        animationElement1.fillMode = .removed
        animationElement1.duration = 1
        animationElement1.animations = []
        
        let animationProperty1 = CAKeyframeAnimation()
        animationProperty1.beginTime = 0
        animationProperty1.repeatCount = Float(1)
        animationProperty1.duration = 1
        animationProperty1.autoreverses = false
        animationProperty1.isRemovedOnCompletion = false
        animationProperty1.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty1.keyPath = "transform.scale"
        animationProperty1.keyTimes = [ 0, 0.2, 0.4, 0.6, 0.8, 1 ]
        animationProperty1.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationElement1.animations?.append(animationProperty1)
        
        
        let animationProperty2 = CAKeyframeAnimation()
        animationProperty2.beginTime = 0
        animationProperty2.repeatCount = Float(1)
        animationProperty2.duration = 1
        animationProperty2.autoreverses = false
        animationProperty2.isRemovedOnCompletion = false
        animationProperty2.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty2.keyPath = "opacity"
        animationProperty2.keyTimes = [ 0, 0.6, 1 ]
        animationProperty2.values = [ 0, 1, 1 ]
        animationElement1.animations?.append(animationProperty2)
        
        
        self.muzikaLogoButton.layer.add(animationElement1, forKey: nil)
    }

    private func animationTwo()  {
        let animationElement1 = CAAnimationGroup()
        animationElement1.isRemovedOnCompletion = false
        animationElement1.fillMode = .removed
        animationElement1.duration = 1
        animationElement1.animations = []
        
        let animationProperty1 = CAKeyframeAnimation()
        animationProperty1.beginTime = 0
        animationProperty1.repeatCount = Float(1)
        animationProperty1.duration = 1
        animationProperty1.autoreverses = false
        animationProperty1.isRemovedOnCompletion = false
        animationProperty1.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty1.keyPath = "transform.scale"
        animationProperty1.keyTimes = [ 0, 0.2, 0.4, 0.6, 0.8, 1 ]
        animationProperty1.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationElement1.animations?.append(animationProperty1)
        
        
        let animationProperty2 = CAKeyframeAnimation()
        animationProperty2.beginTime = 0
        animationProperty2.repeatCount = Float(1)
        animationProperty2.duration = 1
        animationProperty2.autoreverses = false
        animationProperty2.isRemovedOnCompletion = false
        animationProperty2.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty2.keyPath = "opacity"
        animationProperty2.keyTimes = [ 0, 0.6, 1 ]
        animationProperty2.values = [ 0, 1, 1 ]
        animationElement1.animations?.append(animationProperty2)
        
        
        self.muzikaLogoButton.layer.add(animationElement1, forKey: nil)
        let animationElement2 = CAAnimationGroup()
        animationElement2.isRemovedOnCompletion = false
        animationElement2.fillMode = .removed
        animationElement2.duration = 1.5
        animationElement2.animations = []
        
        let animationProperty3 = CAKeyframeAnimation()
        animationProperty3.beginTime = 0
        animationProperty3.repeatCount = Float(1)
        animationProperty3.duration = 1.5
        animationProperty3.autoreverses = false
        animationProperty3.isRemovedOnCompletion = false
        animationProperty3.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty3.keyPath = "transform.scale"
        animationProperty3.keyTimes = [ 0, 0.47, 0.6, 0.73, 0.87, 1 ]
        animationProperty3.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationElement2.animations?.append(animationProperty3)
        
        
        let animationProperty4 = CAKeyframeAnimation()
        animationProperty4.beginTime = 0
        animationProperty4.repeatCount = Float(1)
        animationProperty4.duration = 1.5
        animationProperty4.autoreverses = false
        animationProperty4.isRemovedOnCompletion = false
        animationProperty4.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty4.keyPath = "opacity"
        animationProperty4.keyTimes = [ 0, 0.73, 1 ]
        animationProperty4.values = [ 0, 1, 1 ]
        animationElement2.animations?.append(animationProperty4)
        
        
        self.textView.layer.add(animationElement2, forKey: nil)
    }
}
