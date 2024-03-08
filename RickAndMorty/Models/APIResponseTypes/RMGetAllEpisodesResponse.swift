//
//  RMGetAllEpisodesResponse.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 08/03/24.
//

import Foundation

struct RMGetAllEpisodesResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }

    let info: Info
    let results: [RMEpisode]
}
