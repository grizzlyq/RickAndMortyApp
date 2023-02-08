//
//  RMCharacterDetailViewViewModel.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 07.02.2023.
//

import Foundation

final class RMCharacterDetailViewViewModel {
    private let character: RMCharacter
    
    enum SectionType: CaseIterable {
        case photo
        case information
        case episodes
    }
    
    public let sections = SectionType.allCases
    
    // MARK: - Init 
    
    init(character: RMCharacter) {
        self.character = character
    }
    
    private var requestUrl: URL? {
        return URL(string: character.url)
    }
    public var title: String {
        character.name.uppercased()
    }    
}
