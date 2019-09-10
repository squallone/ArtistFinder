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
import Combine
// --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
// MARK: - Implementation

class HomeViewController: UIViewController {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties (View)
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
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var homeLabel: UILabel!
    var allGradientLayers: [CAGradientLayer] = []
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Properties (Controller)
    private let viewModel = HomeViewModel()
    private lazy var dataSource: UITableViewDiffableDataSource<MediaSection, Media> = {
        return UITableViewDiffableDataSource(tableView: tableviewTableView) { (tableView, indexPath, note) -> UITableViewCell? in
            let cell = tableView.dequeueReusableCell(withIdentifier: "LatestItem1TableViewCell", for: indexPath)
            return cell
        }
    }()
    
    private lazy var dataSourceCollection: UICollectionViewDiffableDataSource<MediaSection, Media> = {
        return UICollectionViewDiffableDataSource(collectionView: collectionViewCollectionView) { (collectionView, indexPath, media) -> UICollectionViewCell? in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtistCollectionViewCell", for: indexPath) as? ArtistCollectionViewCell
            cell?.setupData(media)
            return cell
        }
        
    }()
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Lifecycle
    
    override public func viewDidLoad()  {
        super.viewDidLoad()
        setupComponents()
        setupUI()
        setupBindings()
    }
    
    override public func viewWillAppear(_ animated: Bool)  {
        super.viewWillAppear(animated)
        // Navigation bar, if any
        navigationController?.setNavigationBarHidden(true, animated: true)
        // Animations
        animationOne()
        fetchPopularArtists()
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- 
    // MARK: - Layout
    override public func viewDidLayoutSubviews()  {
        super.viewDidLayoutSubviews()
        for layer in allGradientLayers {
            layer.frame = layer.superlayer?.frame ?? CGRect.zero
        }
    }
    
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Binding
    private func setupBindings() {
        _ = searchTextField.textPublisher
            .receive(on: DispatchQueue.main)
            .assign(to: \.searchText, on: viewModel)
        
        _ = viewModel.$state
            .receive(on: DispatchQueue.main)
            .sink {  state in
                switch state {
                case .successPopular(let media):
                    Loader.hide()
                    self.updateWith(media)
                case .loading:
                    Loader.show()
                case .finishedLoading:
                    Loader.hide()
                case .error(let error):
                    Loader.hide()
                    print(error)
                case .idle:
                    break
                }
        }
    }
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Actions
    private func fetchPopularArtists() {
        viewModel.fetchPopularArtists()
    }
    
    private func updateWith(_ data: [Media]) {
        var snapshot = NSDiffableDataSourceSnapshot<MediaSection, Media>()
        snapshot.appendSections([.artists])
        snapshot.appendItems(data, toSection: .artists)
        dataSource.apply(snapshot, animatingDifferences: false)
        dataSourceCollection.apply(snapshot, animatingDifferences: false)

    }
}
