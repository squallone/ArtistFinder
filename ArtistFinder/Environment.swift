//
//  Environment.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

public enum Environment {
    public static let loginBaseURL = ServiceEnvironment(port: "",
                                                        procotol: "https://",
                                                        host: "jsonblob.com",
                                                        path: "")
    
    public static let searchBaseURL = ServiceEnvironment(port: "",
                                                         procotol: "https://",
                                                         host: "itunes.apple.com",
                                                         path: "")
}


