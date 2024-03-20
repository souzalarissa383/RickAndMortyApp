//
//  RMService.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 05/03/24.
//

import Foundation

//api para obter dados de  Rick e Morty
final class RMService {
    //compartilha instancia
    static let shared = RMService()
    
    //construtor privado
    private init (){}
    
    //tipos de erro
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    //Enviar chamada para API de Rick e Morty
    // - Parametros:
    // - request: instacia de solicitacao
    // - type: tipo de objeto que vai receber
    // - completion: retorno com dados ou erros
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        let task = URLSession.shared.dataTask(with: urlRequest) {  data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            //Resposta de decodificação
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                completion(.success(result))
            }
            catch {
                completion(.failure(error))
            }
        }
        task.resume()
       
    }
    //Criar uma solicitacao para a URL
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }

}


