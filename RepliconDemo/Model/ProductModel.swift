//
//  ProductModel.swift
//  RepliconDemo
//
//  Created by Shadab Haidari on 17/07/21.
//

import Foundation

// MARK: - ProductElement
struct Product: Codable {
    let albumID, id: Int
    let title: String
    let url, thumbnailURL: String

    enum CodingKeys: String, CodingKey {
        case albumID = "albumId"
        case id, title, url
        case thumbnailURL = "thumbnailUrl"
    }
}

typealias ProductModel = [Product]
