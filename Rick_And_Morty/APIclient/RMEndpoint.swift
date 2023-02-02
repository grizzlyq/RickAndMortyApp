//
//  RMEndpoint.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 02.02.2023.
//

import Foundation

/// represents unique API endpoints
@frozen enum RMEndpoint: String {
    case character
    case location
    case episode
}
