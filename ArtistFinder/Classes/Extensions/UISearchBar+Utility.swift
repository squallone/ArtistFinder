//
//  UISearchBar+Utility.swift
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

extension UISearchBar {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Utility
    private var innerTextField: UITextField?  {
        return self.firstTextField(inView: self)
    }

    private func firstTextField(inView view: UIView) -> UITextField?  {
        
        if let tf = view as? UITextField {
            return tf
        }
        for subview in view.subviews {
            if let tf = self.firstTextField(inView: subview) {
                return tf
            }
        }
        return nil
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Text

    public var snFont: UIFont?  {
        get {
            return self.innerTextField?.font
        }
        set {
            self.innerTextField?.font = newValue
        }
    }

    public var snTextColor: UIColor?  {
        get {
            return self.innerTextField?.textColor
        }
        set {
            self.innerTextField?.textColor = newValue
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Background

    public var snFieldBackgroundColor: UIColor?  {
        get {
            return self.innerTextField?.backgroundColor
        }
        set {
            self.innerTextField?.backgroundColor = newValue
        }
    }
}
