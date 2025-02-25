//
//  Model.swift
//  AppNews
//
//  Created by Amirov Foma on 24.02.2025.
//

import Foundation

extension APIResponse {
    struct RecentNews: Decodable {
        let status: String
        let totalResults: Int
        let results: [Result]
        let nextPage: String?
    }
}

// MARK: - Result
struct Result: Decodable {
    let articleId: String // Используем CodingKeys для маппинга
    let title: String
    let description: String?
    let link: String?
    let pubDate: String?
    let sourceId: String?
    let language: String?

    enum CodingKeys: String, CodingKey {
        case articleId = "article_id"
        case title
        case description
        case link
        case pubDate
        case sourceId = "source_id"
        case language
    }
}
