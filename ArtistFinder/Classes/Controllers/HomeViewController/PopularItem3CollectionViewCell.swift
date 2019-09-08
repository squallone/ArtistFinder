//
//  PopularItem3CollectionViewCell.swift
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

class PopularItem3CollectionViewCell: UICollectionViewCell {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var songsLabel: UILabel!


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    override public func awakeFromNib()  {
        // Configure SN Generated code
        super.awakeFromNib()
        
        self.setupComponents()
    }

    private func setupComponents()  {
        // Setup songsLabel
        let songsLabelAttrString = NSMutableAttributedString(string: "98 Songs", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.55, green: 0.6, blue: 0.7, alpha: 1),
            .kern : 1,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.songsLabel.attributedText = songsLabelAttrString
        
    }

    private func setupLocalization()  {
    
    }
}
