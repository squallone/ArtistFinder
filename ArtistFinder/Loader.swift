//
//  ActivityIndicator.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit
import KRProgressHUD

class Loader {
    private init() {}
    
    class func show() {
        KRProgressHUD.show()
    }
    
    class func hide() {
        KRProgressHUD.dismiss()
    }
}
