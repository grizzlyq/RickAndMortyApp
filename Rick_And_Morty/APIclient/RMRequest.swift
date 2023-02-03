//
//  RMrequest.swift
//  Rick_And_Morty
//
//  Created by Дмитрий on 02.02.2023.
//

import Foundation

/// object that represents a single API call 
final class RMRequest {
    /// Api constants
    private struct Constants {
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    /// desired endpoint
    private let endpoint: RMEndpoint
    
    /// Path components for API if any
    private let pathComponents: Set<String>
    
    /// query arguments for API if any
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
                guard let value = $0.value else { return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        return string
    }
    
    /// Computed & constracted API url
    public var url: URL? {
        return URL(string: urlString)
    }
    
    /// desired httpMethod
    public let htttpMethod = "GET"
    
    // MARK: - Public
    

    init(endpoint: RMEndpoint,
         pathComponents: Set<String> = [],
         queryParaments: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParaments = queryParaments
    } 
}
