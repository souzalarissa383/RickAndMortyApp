//
//  RMCharacterViewController.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 27/02/24.
//

import UIKit

//Controlador para mostrar e procurar personagens
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Characters"
        
        
        RMService.shared.execute(.listCharactersRequests,
                                 expecting:RMGetAllCharactersResponse.self) { result in
            
            switch result{
            case .success(let model):
                print(String(describing: model))
            case .failure(let error):
                print(String(describing: error))
            }
            
        }
        
    }
    
}
