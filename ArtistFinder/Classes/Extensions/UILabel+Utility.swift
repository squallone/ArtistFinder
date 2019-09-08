//
//  UILabel+Utility.swift
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

extension UILabel {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Utility
    public func replaceAttributedStringText(withLocalizedText text: String)  {
        // Only replace the text for non-base localization. Base localization uses the full attributed string assigned in setupUI()
        guard !NSLocale.current.identifier.contains("en") else {
            return
        }
        guard let attString = self.attributedText?.mutableCopy() as? NSMutableAttributedString else {
            self.text = text
            return
        }
        attString.mutableString.setString(text)
        self.attributedText = attString
    }
}
