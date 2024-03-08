//
//  RMCharacterGender.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 06/03/24.
//


import Foundation

//verificar genero do personagen
enum RMCharacterGender: String, Codable {
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
