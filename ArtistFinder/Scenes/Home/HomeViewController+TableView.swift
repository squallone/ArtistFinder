//
//  HomeViewController+TableView.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit

// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Extension HomeViewController

extension HomeViewController: UITableViewDelegate  {
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Methods
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        print("Row selected at index \(indexPath)")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat  {
        return 80
    }
}
