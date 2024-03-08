//
//  RMEndpoint.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 05/03/24.
//

import Foundation

//Representa um endpoint de API
@frozen enum RMEndpoint: String, CaseIterable, Hashable {
    // obtem informações do personagem
    case character
    // obtem informações da character
    case location
    // obtem informações do episodio
    case episode
}
