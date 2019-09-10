//
//  SearchAPI.swift
//  ArtistFinder
//
//  Created by Abdiel Soto Barrera  (Vendor) on 9/9/19.
//  Copyright © 2019 iOSDevsMx. All rights reserved.
//

import Combine

protocol SearchAPI {
    func search(_ text: String) -> AnyPublisher<[Media], Error>
}

struct SearchService: SearchAPI {
    private let requestService: RequestService
    
    // MARK: - Initilization
    public init(requestService: RequestService = RequestService(environment: Environment.searchBaseURL)) {
        self.requestService = requestService
    }
    
    func search(_ text: String) -> AnyPublisher<[Media], Error> {
        let result: AnyPublisher<SearchResult, Error> =
            requestService.fetchData(request: SearchRequest.search(text)) as AnyPublisher<SearchResult, Error>
        return result
            .map { $0.results}
            .eraseToAnyPublisher()
    }
}
