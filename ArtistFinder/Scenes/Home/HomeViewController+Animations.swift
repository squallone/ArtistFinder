//
//  HomeViewController+Animations.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

extension HomeViewController {
    // MARK: - Animations
    func animationOne()  {
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
        animationProperty2.duration = 1.25
        animationProperty2.autoreverses = false
        animationProperty2.isRemovedOnCompletion = false
        animationProperty2.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty2.keyPath = "opacity"
        animationProperty2.keyTimes = [ 0, 0.6, 1 ]
        animationProperty2.values = [ 0, 1, 1 ]
        animationElement1.animations?.append(animationProperty2)
        
        
        self.searchView.layer.add(animationElement1, forKey: nil)
        let animationElement2 = CAAnimationGroup()
        animationElement2.isRemovedOnCompletion = false
        animationElement2.fillMode = .removed
        animationElement2.duration = 1.3
        animationElement2.animations = []
        
        let animationProperty3 = CAKeyframeAnimation()
        animationProperty3.beginTime = 0
        animationProperty3.repeatCount = Float(1)
        animationProperty3.duration = 1.3
        animationProperty3.autoreverses = false
        animationProperty3.isRemovedOnCompletion = false
        animationProperty3.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty3.keyPath = "transform.scale"
        animationProperty3.keyTimes = [ 0, 0.38, 0.54, 0.69, 0.85, 1 ]
        animationProperty3.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationElement2.animations?.append(animationProperty3)
        
        
        let animationProperty4 = CAKeyframeAnimation()
        animationProperty4.beginTime = 0
        animationProperty4.repeatCount = Float(1)
        animationProperty4.duration = 1.3
        animationProperty4.autoreverses = false
        animationProperty4.isRemovedOnCompletion = false
        animationProperty4.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty4.keyPath = "opacity"
        animationProperty4.keyTimes = [ 0, 0.69, 1 ]
        animationProperty4.values = [ 0, 1, 1 ]
        animationElement2.animations?.append(animationProperty4)
        
        
        self.popularView.layer.add(animationElement2, forKey: nil)
        let animationElement3 = CAAnimationGroup()
        animationElement3.isRemovedOnCompletion = false
        animationElement3.fillMode = .removed
        animationElement3.duration = 1.2
        animationElement3.animations = []
        
        let animationProperty5 = CAKeyframeAnimation()
        animationProperty5.beginTime = 0
        animationProperty5.repeatCount = Float(1)
        animationProperty5.duration = 1.2
        animationProperty5.autoreverses = false
        animationProperty5.isRemovedOnCompletion = false
        animationProperty5.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty5.keyPath = "transform.scale"
        animationProperty5.keyTimes = [ 0, 0.33, 0.5, 0.67, 0.83, 1 ]
        animationProperty5.values = [ 0.3, 1.1, 0.9, 1.03, 0.97, 1 ]
        animationElement3.animations?.append(animationProperty5)
        
        
        let animationProperty6 = CAKeyframeAnimation()
        animationProperty6.beginTime = 0
        animationProperty6.repeatCount = Float(1)
        animationProperty6.duration = 1
        animationProperty6.autoreverses = false
        animationProperty6.isRemovedOnCompletion = false
        animationProperty6.timingFunction = CAMediaTimingFunction(controlPoints: 0.22, 0.61, 0.36, 1)
        animationProperty6.keyPath = "opacity"
        animationProperty6.keyTimes = [ 0, 0.6, 1 ]
        animationProperty6.values = [ 0, 1, 1 ]
        animationElement3.animations?.append(animationProperty6)
        
        
        self.latestView.layer.add(animationElement3, forKey: nil)
    }
}
