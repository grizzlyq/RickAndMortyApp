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
        
        let request = RMRequest(endpoint: .character)
        print(request.url)
    }
    

}
