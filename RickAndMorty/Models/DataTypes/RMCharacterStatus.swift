//
//  RMCharacterStatus.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 06/03/24.
//

import Foundation

//verificar status do personagen
enum RMCharacterStatus: String, Codable {
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"

    var text: String {
        switch self {
        case .alive, .dead:
            return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
