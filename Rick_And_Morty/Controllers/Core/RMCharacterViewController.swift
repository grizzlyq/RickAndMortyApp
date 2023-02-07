//
//  RMCharacterViewController.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 02.02.2023.
//

import UIKit

/// controller to show and search for characters
final class RMCharacterViewController: UIViewController {
    
    private let charactersListView = RMCharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground 
        title = "Characters"
        setUpView()
      
    }
    
    private func setUpView() {
        view.addSubview(charactersListView)
        NSLayoutConstraint.activate([
            charactersListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            charactersListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            charactersListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            charactersListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
    
