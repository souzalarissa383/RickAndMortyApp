//
//  RMFooterLoadingCollectionReusableView.swift
//  RickAndMorty
//
//  Created by Larissa Souza on 21/03/24.
//

import UIKit

final class RMFooterLoadingCollectionReusableView: UICollectionReusableView {
    static let identifier = "RMFooterLoadingCollectionReusableView"

    override init(frame: CGRect) {
           super.init(frame: frame)
           backgroundColor = .systemBlue 
         
       }
    
    required init?(coder: NSCoder) {
           fatalError("Unsupported")
       }
    
    private func addConstraints() {
        
    }
    
}
