//
//  Moview.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 23/09/24.
//

import Foundation


struct MovieResult: Codable {
    let resultCount: Int
    let results: [Movie]
}

// MARK: - Result
struct Movie: Codable, Identifiable {
    let wrapperType, kind: String
    let artistID: Int?
    let trackID: Int
    let artistName, trackName, trackCensoredName: String
    let artistViewURL: String?
    let trackViewURL: String?
    let previewURL: String?
    let artworkUrl30, artworkUrl60, artworkUrl100: String
    let collectionPrice: Double?
    let trackPrice: Double?
    let trackRentalPrice, collectionHDPrice, trackHDPrice, trackHDRentalPrice: Double?
    let releaseDate: String?
    let collectionExplicitness, trackExplicitness: String
    let trackTimeMillis: Int?
    let country, currency, primaryGenreName, contentAdvisoryRating: String
    let shortDescription: String?
    let longDescription: String?
    
    var id: Int {
        return trackID
    }

    enum CodingKeys: String, CodingKey {
        case wrapperType, kind
        case artistID = "artistId"
        case trackID = "trackId"
        case artistName, trackName, trackCensoredName
        case artistViewURL = "artistViewUrl"
        case trackViewURL = "trackViewUrl"
        case previewURL = "previewUrl"
        case artworkUrl30, artworkUrl60, artworkUrl100, collectionPrice, trackPrice, trackRentalPrice
        case collectionHDPrice = "collectionHdPrice"
        case trackHDPrice = "trackHdPrice"
        case trackHDRentalPrice = "trackHdRentalPrice"
        case releaseDate, collectionExplicitness, trackExplicitness, trackTimeMillis, country, currency, primaryGenreName, contentAdvisoryRating, shortDescription, longDescription
    }
    
    
    static func example()->Movie{
        Movie(
            wrapperType: "collection",
            kind: "feature-movie",
            artistID: nil,
            trackID: 1175292567,
            artistName: "S. S. Rajamouli",
            trackName: "Baahubali 2: The Conclusion",
            trackCensoredName: "Baahubali 2: The Conclusion",
            artistViewURL: nil,
            trackViewURL: "https://itunes.apple.com/us/movie/baahubali-2-the-conclusion/id1175292567",
            previewURL: "https://video-ssl.itunes.apple.com/itunes-assets/Video117/v4/e8/0c/0c/e80c0c36-8a03-813b-a42d-3dd51f033c74/mzvf_4602689788105318108.640x364.h264lc.U.p.m4v",
            artworkUrl30: "https://is1-ssl.mzstatic.com/image/thumb/Video127/v4/6e/42/dc/6e42dc01-bff9-813a-34cd-47e8b3c1c3b4/pr_source.jpg/30x30bb.jpg",
            artworkUrl60: "https://is1-ssl.mzstatic.com/image/thumb/Video127/v4/6e/42/dc/6e42dc01-bff9-813a-34cd-47e8b3c1c3b4/pr_source.jpg/60x60bb.jpg",
            artworkUrl100: "https://is1-ssl.mzstatic.com/image/thumb/Video127/v4/6e/42/dc/6e42dc01-bff9-813a-34cd-47e8b3c1c3b4/pr_source.jpg/100x100bb.jpg",
            collectionPrice: 13.99,
            trackPrice: 13.99,
            trackRentalPrice: 3.99,
            collectionHDPrice: 15.99,
            trackHDPrice: 15.99,
            trackHDRentalPrice: 3.99,
            releaseDate: "2017-04-28T07:00:00Z",
            collectionExplicitness: "notExplicit",
            trackExplicitness: "notExplicit",
            trackTimeMillis: 10021792,
            country: "USA",
            currency: "USD",
            primaryGenreName: "Bollywood",
            contentAdvisoryRating: "PG",
            shortDescription: "Having uncovered the truth of his legacy, In Baahubali 2 - The Conclusion, Mahendra Baahubali (",
            longDescription: "Having uncovered the truth of his legacy, In Baahubali 2 - The Conclusion, Mahendra Baahubali (Shivudu), avenges the murder of his father, vowing revenge against the tyrannical ruler of the Mahishmati Kingdom, his uncle, Bhallaladeva."
        )
    }
}

