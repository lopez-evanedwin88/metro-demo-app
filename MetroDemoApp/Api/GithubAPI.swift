//
//  GithubAPI.swift
//  MetroDemoApp
//
//  Created by d&a-m-pro  on 6/9/23.
//

import Foundation

final class GithubAPI: ObservableObject {
    
    func fetchUsers () async throws -> [User] {
        
        let userString = URL(string: "https://api.github.com/users")!
        let (data, _) = try await URLSession.shared.data(from: userString)
        return try JSONDecoder().decode([User].self, from: data)
    }
}
