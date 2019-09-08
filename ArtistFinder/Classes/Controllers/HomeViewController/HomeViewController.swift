//
//  HomeViewController.swift
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

class HomeViewController: UIViewController {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Properties

    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var latestView: UIView!
    @IBOutlet weak var latestArtistsLabel: UILabel!
    @IBOutlet weak var viewAllLabel: UILabel!
    @IBOutlet weak var tableviewTableView: UITableView!
    @IBOutlet weak var popularView: UIView!
    @IBOutlet weak var popularArtistsLabel: UILabel!
    @IBOutlet weak var viewAllTwoLabel: UILabel!
    @IBOutlet weak var collectionViewCollectionView: UICollectionView!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchForArtistSLabel: UILabel!
    @IBOutlet weak var homeLabel: UILabel!
    private var allGradientLayers: [CAGradientLayer] = []


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle

    override public func viewDidLoad()  {
        super.viewDidLoad()
        self.setupComponents()
        self.setupUI()
        self.setupGestureRecognizers()
        self.setupLocalization()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        
        // Navigation bar, if any
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        // Animations
        self.animationOne()
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Setup

    private func setupComponents()  {
        // Setup backgroundView
        let backgroundViewGradient = CAGradientLayer()
        backgroundViewGradient.colors = [UIColor(red: 0.129, green: 0.161, blue: 0.224, alpha: 1).cgColor /* #212939 */, UIColor(red: 0.086, green: 0.102, blue: 0.141, alpha: 1).cgColor /* #161A24 */]
        backgroundViewGradient.locations = [0, 1]
        backgroundViewGradient.startPoint = CGPoint(x: 0.689, y: -0.098)
        backgroundViewGradient.endPoint = CGPoint(x: 0.311, y: 1.098)
        backgroundViewGradient.frame = self.backgroundView.bounds
        self.backgroundView.layer.insertSublayer(backgroundViewGradient, at: 0)
        self.allGradientLayers.append(backgroundViewGradient)
        
        
        // Setup latestView
        
        // Setup latestArtistsLabel
        let latestArtistsLabelAttrString = NSMutableAttributedString(string: "LATEST ARTISTS", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.latestArtistsLabel.attributedText = latestArtistsLabelAttrString
        
        // Setup viewAllLabel
        let viewAllLabelAttrString = NSMutableAttributedString(string: "VIEW ALL", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .right, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.viewAllLabel.attributedText = viewAllLabelAttrString
        
        // Setup tableviewTableView
        self.tableviewTableView.separatorStyle = .none
        
        // Setup popularView
        
        // Setup popularArtistsLabel
        let popularArtistsLabelAttrString = NSMutableAttributedString(string: "POPULAR ARTISTS", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.popularArtistsLabel.attributedText = popularArtistsLabelAttrString
        
        // Setup viewAllTwoLabel
        let viewAllTwoLabelAttrString = NSMutableAttributedString(string: "VIEW ALL", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .right, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.viewAllTwoLabel.attributedText = viewAllTwoLabelAttrString
        
        // Setup collectionViewCollectionView
        
        // Setup searchView
        self.searchView.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor /* #000000 */
        self.searchView.layer.shadowOffset = CGSize(width: 0, height: 10)
        self.searchView.layer.shadowRadius = 10
        self.searchView.layer.shadowOpacity = 1
        
        self.searchView.layer.cornerRadius = 30
        self.searchView.layer.masksToBounds = true
        
        // Setup searchForArtistSLabel
        let searchForArtistSLabelAttrString = NSMutableAttributedString(string: "Search for artist, song or lyrics…", attributes: [
            .font : UIFont.systemFont(ofSize: 14),
            .foregroundColor : UIColor(red: 0.34, green: 0.43, blue: 0.6, alpha: 1),
            .kern : 0,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .left, lineHeight: 22, paragraphSpacing: 0)
        ])
        self.searchForArtistSLabel.attributedText = searchForArtistSLabelAttrString
        
        // Setup homeLabel
        let homeLabelAttrString = NSMutableAttributedString(string: "HOME", attributes: [
            .font : UIFont.systemFont(ofSize: 10),
            .foregroundColor : UIColor(red: 1, green: 1, blue: 1, alpha: 1),
            .kern : 1.67,
            .paragraphStyle : NSMutableParagraphStyle(alignment: .center, lineHeight: nil, paragraphSpacing: 0)
        ])
        self.homeLabel.attributedText = homeLabelAttrString
        
    }

    private func setupUI()  {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
    }

    private func setupGestureRecognizers()  {
    
    }

    private func setupLocalization()  {
    
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout

    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in self.allGradientLayers {
            layer.frame = layer.superlayer?.frame ?? CGRect.zero
        }
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Status Bar

    override public var prefersStatusBarHidden: Bool  {
        return true
    }

    override public var preferredStatusBarStyle: UIStatusBarStyle  {
        return .default
    }


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Animations

    private func animationOne()  {
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


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension HomeViewController

extension HomeViewController: UITableViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in tableView: UITableView) -> Int  {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return 9
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell  {
        if (0..<3).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LatestItem1TableViewCell", for: indexPath)
            self.configure(latestItem1TableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (3..<6).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LatestItem1TwoTableViewCell", for: indexPath)
            self.configure(latestItem1TwoTableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (6..<9).contains(indexPath.row) {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LatestItem2TableViewCell", for: indexPath)
            self.configure(latestItem2TableViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UITableViewCell()
    }

    public func configure(latestItem1TableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(latestItem1TwoTableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(latestItem2TableViewCell cell: UITableViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension HomeViewController

extension HomeViewController: UITableViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)  {
        print("Row selected at index \(indexPath)")
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat  {
        if (0..<3).contains(indexPath.row) {
            return 80
        }
        else if (3..<6).contains(indexPath.row) {
            return 80
        }
        else if (6..<9).contains(indexPath.row) {
            return 80
        }
        
        return 0
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension HomeViewController

extension HomeViewController: UICollectionViewDataSource  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func numberOfSections(in collectionView: UICollectionView) -> Int  {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        return 15
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        if (0..<3).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularItem3CollectionViewCell", for: indexPath)
            self.configure(popularItem3CollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (3..<6).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularItem2CollectionViewCell", for: indexPath)
            self.configure(popularItem2CollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (6..<9).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularItem1CollectionViewCell", for: indexPath)
            self.configure(popularItem1CollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (9..<12).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularItem1TwoCollectionViewCell", for: indexPath)
            self.configure(popularItem1TwoCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        else if (12..<15).contains(indexPath.row) {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PopularItem1ThreeCollectionViewCell", for: indexPath)
            self.configure(popularItem1ThreeCollectionViewCell: cell, atIndexPath: indexPath)
            return cell
        }
        
        assertionFailure("Did not obtain cell")
        return UICollectionViewCell()
    }

    public func configure(popularItem3CollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(popularItem2CollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(popularItem1CollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(popularItem1TwoCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }

    public func configure(popularItem1ThreeCollectionViewCell cell: UICollectionViewCell, atIndexPath indexPath: IndexPath)  {
        // Further configure cell
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension HomeViewController

extension HomeViewController: UICollectionViewDelegate  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)  {
        print("Item selected at index \(indexPath)")
    }
}


// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Extension HomeViewController

extension HomeViewController: UICollectionViewDelegateFlowLayout  {


    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize  {
        if (0..<3).contains(indexPath.row) {
            return CGSize(width: 120, height: 171)
        }
        else if (3..<6).contains(indexPath.row) {
            return CGSize(width: 120, height: 171)
        }
        else if (6..<9).contains(indexPath.row) {
            return CGSize(width: 120, height: 171)
        }
        else if (9..<12).contains(indexPath.row) {
            return CGSize(width: 120, height: 171)
        }
        else if (12..<15).contains(indexPath.row) {
            return CGSize(width: 120, height: 171)
        }
        
        return .zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat  {
        return 0
    }
}
