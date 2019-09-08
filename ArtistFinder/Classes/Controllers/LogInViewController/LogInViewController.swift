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
    @IBOutlet weak var emailAdressLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet weak var forgotYourPasswordLabel: UILabel!
    @IBOutlet weak var muzikaLogoImageView: UIImageView!
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
        self.animationOne()
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
        
        
        // Setup donTHaveAnAccounLabel
        let donTHaveAnAccounLabelAttrString = NSMutableAttributedString(string: "DON’T HAVE AN ACCOUNT?", attributes: [
            .font : UIFont.systemFont(ofSize: 12),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 2,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.donTHaveAnAccounLabel.attributedText = donTHaveAnAccounLabelAttrString
        
        // Setup loginButtonButton
        self.loginButtonButton.snImageTextSpacing = 10
        
        // Setup formView
        
        // Setup backgroundTwoView
        self.backgroundTwoView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor /* #000000 */
        self.backgroundTwoView.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.backgroundTwoView.layer.shadowRadius = 20
        self.backgroundTwoView.layer.shadowOpacity = 1
        
        let backgroundTwoViewGradient = CAGradientLayer()
        backgroundTwoViewGradient.colors = [UIColor(red: 0.275, green: 0.204, blue: 0.663, alpha: 1).cgColor /* #4634A9 */, UIColor(red: 0.965, green: 0.212, blue: 0.412, alpha: 1).cgColor /* #F63669 */]
        backgroundTwoViewGradient.locations = [0, 1]
        backgroundTwoViewGradient.startPoint = CGPoint(x: -0.36, y: 1.603)
        backgroundTwoViewGradient.endPoint = CGPoint(x: 1.303, y: 1.174)
        backgroundTwoViewGradient.frame = self.backgroundTwoView.bounds
        self.backgroundTwoView.layer.insertSublayer(backgroundTwoViewGradient, at: 0)
        self.allGradientLayers.append(backgroundTwoViewGradient)
        
        self.backgroundTwoView.layer.cornerRadius = 10
        self.backgroundTwoView.layer.masksToBounds = true
        
        // Setup emailAdressLabel
        let emailAdressLabelAttrString = NSMutableAttributedString(string: "EMAIL ADRESS", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.emailAdressLabel.attributedText = emailAdressLabelAttrString
        
        // Setup passwordLabel
        let passwordLabelAttrString = NSMutableAttributedString(string: "PASSWORD", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.passwordLabel.attributedText = passwordLabelAttrString
        
        // Setup forgotYourPasswordLabel
        let forgotYourPasswordLabelAttrString = NSMutableAttributedString(string: "FORGOT YOUR PASSWORD?", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.forgotYourPasswordLabel.attributedText = forgotYourPasswordLabelAttrString
        
        // Setup muzikaLogoImageView
        
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


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Actions

    @IBAction public func onButtonPressed(_ sender: UIButton)  {
        self.performSegue(withIdentifier: "Modal Home", sender: nil)
        self.animationTwo()
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    private func animationOne()  {
        let animationElement1 = CAAnimationGroup()
        animationElement1.isRemovedOnCompletion = false
        animationElement1.fillMode = .removed
        animationElement1.duration = 1.25
        animationElement1.animations = []
        
        let animationProperty1 = CAKeyframeAnimation()
        animationProperty1.beginTime = 0
        animationProperty1.repeatCount = Float(1)
        animationProperty1.duration = 1.25
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
        animationProperty2.keyTimes = [ 0, 0.4, 1 ]
        animationProperty2.values = [ 0, 1, 1 ]
        animationElement1.animations?.append(animationProperty2)
        
        
        self.muzikaLogoImageView.layer.add(animationElement1, forKey: nil)
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
        animationProperty3.keyTimes = [ 0, 0.43, 0.57, 0.73, 0.87, 1 ]
        animationProperty3.values = [ 0.3, 1.1, 0.9, 1, 1.03, 0.97 ]
        animationElement2.animations?.append(animationProperty3)
        
        
        let animationProperty4 = CAKeyframeAnimation()
        animationProperty4.beginTime = 0
        animationProperty4.repeatCount = Float(1)
        animationProperty4.duration = 1.5
        animationProperty4.autoreverses = false
        animationProperty4.isRemovedOnCompletion = false
        animationProperty4.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty4.keyPath = "opacity"
        animationProperty4.keyTimes = [ 0, 0.6, 1 ]
        animationProperty4.values = [ 0, 1, 1 ]
        animationElement2.animations?.append(animationProperty4)
        
        
        self.loginButtonButton.layer.add(animationElement2, forKey: nil)
        let animationElement3 = CAAnimationGroup()
        animationElement3.isRemovedOnCompletion = false
        animationElement3.fillMode = .removed
        animationElement3.duration = 1.45
        animationElement3.animations = []
        
        let animationProperty5 = CAKeyframeAnimation()
        animationProperty5.beginTime = 0
        animationProperty5.repeatCount = Float(1)
        animationProperty5.duration = 1.4
        animationProperty5.autoreverses = false
        animationProperty5.isRemovedOnCompletion = false
        animationProperty5.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty5.keyPath = "transform.scale"
        animationProperty5.keyTimes = [ 0, 0.32, 0.57, 0.71, 0.86, 1 ]
        animationProperty5.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationElement3.animations?.append(animationProperty5)
        
        
        let animationProperty6 = CAKeyframeAnimation()
        animationProperty6.beginTime = 0
        animationProperty6.repeatCount = Float(1)
        animationProperty6.duration = 1.45
        animationProperty6.autoreverses = false
        animationProperty6.isRemovedOnCompletion = false
        animationProperty6.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty6.keyPath = "opacity"
        animationProperty6.keyTimes = [ 0, 0.45, 1 ]
        animationProperty6.values = [ 0, 1, 1 ]
        animationElement3.animations?.append(animationProperty6)
        
        
        self.formView.layer.add(animationElement3, forKey: nil)
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
        
        
        self.loginButtonButton.layer.add(animationElement1, forKey: nil)
    }
}
