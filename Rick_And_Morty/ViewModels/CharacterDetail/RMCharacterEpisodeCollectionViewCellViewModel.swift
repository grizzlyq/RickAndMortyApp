//
//  RMCharacterEpisodeCollectionViewCellViewModel.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 09.02.2023.
//

import Foundation

final class RMCharacterEpisodeCollectionViewCellViewModel {
    let episodeDataUrl: URL?
   
    init(episodeDataUrl: URL?) {
        self.episodeDataUrl = episodeDataUrl
    }
}
