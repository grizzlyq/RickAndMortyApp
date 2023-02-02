//
//  RMrequest.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 02.02.2023.
//

import Foundation

/// object that represents a single API call 
final class RMRequest {

    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    private let endpoint: RMEndpoint
    
    private let pathComponents: [String]
    
    private let queryParaments: [URLQueryItem]
    
    /// constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string +=   "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParaments.isEmpty {
            string += "?"
            let argumentString = queryParaments.compactMap({
                guard let value = $0.value else { return }
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    public var url: URL? {
        URL(string: urlString)
    }
    
    // MARK: - Public
    
    init(endpoint: RMEndpoint,
         pathComponents: [String] = [],
         queryParaments: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParaments = queryParaments
    } 
}
