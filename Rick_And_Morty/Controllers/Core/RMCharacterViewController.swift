//
//  RMCharacterViewController.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 02.02.2023.
//

import UIKit

/// controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground 
        title = "Characters"
        
        RMService.shared.execute(.listCharactersRequests, expecting: RMGetAllCharactersResponse.self) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.count))
                print("Page result count: "+String(model.results.count))
                
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
}
    
