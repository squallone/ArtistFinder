//
//  WelcomeViewController+Animations.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/8/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

extension WelcomeViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Animations
    
    func animationOne()  {
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
    
    func animationTwo()  {
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
