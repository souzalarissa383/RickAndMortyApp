//
//  RMRequest.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 05/03/24.
//

import Foundation

// Objeto que representa uma chamada de API
final class RMRequest {
    
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    // Endpoint escolhido
    private let endpoint: RMEndpoint
    
    //Componentes de caminho para API
    private let pathComponents: [String]
    
    //consultar a API
    private let queryParameters: [URLQueryItem]
    
    //Construtor para solicitar info da api em formato string
    //cria uma url a partir disso
    private var urlString: String {
        var string = Constants.baseUrl
        //acressimo do valor
        //valor final
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            //parametro de consulta
            
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else { return nil }
                return  "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
            
        }
        
        return string
    }
    //URL da API
    // retorna url com um tipo de string
    public var url: URL? {
        return URL(string: urlString)
    }
    
    public let httpMethod: String = "GET"
    
    // - Parametros:
    //- endpoint: destino do endpoint
    //  - pathComponents: caminho do component
    //  - queryParameters: Coleção de parâmetros de consulta
    public init(
        endpoint: RMEndpoint,
        pathComponents: [String] = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
// criar solicitacoes
extension RMRequest {
    static let listCharactersRequests = RMRequest(endpoint: .character)
    static let listEpisodesRequest = RMRequest(endpoint: .episode)
    static let listLocationsRequest = RMRequest(endpoint: .location)
}
