//
//  MusicFeed.swift
//  AppleMusic
//
//  Created by Dmitry Parhomenko on 10.02.2024.
//

import Foundation

struct Feed: Decodable {
    let title: String
    let id: String
    let author: Author
    let links: [Link]
    let copyright: String
    let country: String
    let icon: String
    let updated: Data
    let results: [FeedResult]
}

struct Author: Decodable {
    let name: String
    let url: String
}

struct Link: Decodable {
    let linkSelf: String

    enum CodingKeys: String, CodingKey {
        case linkSelf = "self"
    }
}

struct FeedResult: Decodable {
    let artistName: String
    let id: Int
    let name: String
    let releaseDate: Data
    let artistId: Int
    let artistUrl: String
    let contentAdvisoryRating: String
    let artworkUrl100: String
    let genres: [Genre]
    let url: String
    
}

struct Genre: Decodable {
    let genreId: Int
    let name: String
    let url: String
}
