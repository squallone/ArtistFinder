//
//  HomeViewController+CollectionView.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import UIKit


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Extension UICollectionViewDelegate

extension HomeViewController: UICollectionViewDelegate  {
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        performSegue(withIdentifier: "Music Player", sender: nil)

    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
// MARK: - Extension UICollectionViewDelegateFlowLayout

extension HomeViewController: UICollectionViewDelegateFlowLayout  {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        return CGSize(width: 120, height: 171)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat  {
        return 20
    }
}
