//
//  HomeViewModel.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Foundation
import Combine

enum HomeViewModelState {
    case idle
    case successPopular([Media])
    case loading
    case finishedLoading
    case error(Error)
}

final class HomeViewModel {
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
     // MARK: - Inputs
    @Published var searchText: String = ""
    // --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
    // MARK: - Outputs
    @Published private(set) var state: HomeViewModelState = .idle
    
    // MARK: - Properties
    let searchAAPI: SearchAPI = SearchService()
    
    func fetchPopularArtists() {
        state = .loading
        _ = searchAAPI
            .search("Michael+Jackson")
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .failure(let error):
                    self?.state = .error(error)
                case .finished:
                    self?.state = .finishedLoading
                }
                
                }, receiveValue: { [weak self] media in
                    self?.state = .successPopular(media)
            })
    }
}
