//
//  RMCharacterDetailViewViewModel.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 20/03/24.
//

import Foundation
final class RMCharacterDetailViewViewModel {
    
    private let character: RMCharacter
    
    init(character: RMCharacter) {
        self.character = character
        
    }
    
    public var title: String {
        character.name.uppercased()
    }
}
