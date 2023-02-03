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
    
    /// send rick and morty API call
    ///  - request : Request instance
    ///  - type: the type of object we expect to get back
    ///  // completion: callback with Data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>
        ) -> Void) {
            
        }
}
