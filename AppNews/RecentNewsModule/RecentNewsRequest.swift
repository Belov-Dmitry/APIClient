//
//  Endpoint.swift
//  AppNews
//
//  Created by Amirov Foma on 24.02.2025.
//

import Foundation

extension Request {
    struct RecentNews: APIRequest {
        typealias ReturnType = APIResponse.RecentNews

        var path: String { "/api/1/latest" }
    }
}
