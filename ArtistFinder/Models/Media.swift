//
//  Media.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

enum MediaSection {
    case artists
}

struct Media: Decodable, Hashable {
    var kind: String
    var artistName: String
    var artworkUrl100: String
    var previewUrl: String
    var trackName: String
}
