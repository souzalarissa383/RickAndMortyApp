//
//  RMCharacterDetailViewController.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 20/03/24.
//

import UIKit
//Controlador para mostrar informações sobre um único caractere/personagem
final class RMCharacterDetailViewController: UIViewController {
    
    init(viewModel: RMCharacterDetailViewViewModel) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("Unsupported")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    
}
