//
//  ViewModel.swift
//  AppNews
//
//  Created by Amirov Foma on 24.02.2025.
//

import Foundation

final class ViewModel {
    let networkService: NetworkService

    init(networkService: NetworkService) {
        self.networkService = networkService
    }

    func fetchNews() async throws -> [Result] {
        let data = try await networkService.fetchRecentNews()
        return data.results
    }
}
