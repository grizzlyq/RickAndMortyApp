//
//  RMService.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 02.02.2023.
//

import Foundation

/// Primary API service object to get rick and morty data
final class RMService {
    /// shared singletone instance
    static let shared = RMService()
    
    /// priv constroctur
    private init() {}
    
    /// send rick and morty API call  // completion: callback with Data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
