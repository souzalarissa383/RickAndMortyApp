//
//  RMCharacter.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 27/02/24.
//

import Foundation

struct RMCharacter: Codable {
    let id: Int
    let name: String
    let species: String
    let type: String
    let gender: RMCharacterGender
    let origin: RMOrigin
    let location: RMSingleLocation
    let image: String
    let episode: [String]
    let url: String
    let created: String
}
