//
//  NetworkService.swift
//  AppNews
//
//  Created by Amirov Foma on 24.02.2025.
//

import Foundation

final class NetworkService {
    let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func fetchRecentNews() async throws -> APIResponse.RecentNews {
        let response = try await apiClient.fetch(Request.RecentNews())
        return response
    }
}
