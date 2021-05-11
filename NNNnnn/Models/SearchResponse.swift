//
//  SearchResponse.swift
//  NNNnnn
//
//  Created by Зайнал Гереев on 05.03.2021.
//

import Foundation

struct SearchResponse: Decodable {
    var resultCount: Int
    var results: [Track]
}


struct Track: Decodable {
    var trackName: String
    var collectionName: String?
    var artistName: String
    var artworkUrl60: String?
}
