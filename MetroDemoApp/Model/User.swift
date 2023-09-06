//
//  Users.swift
//  MetroDemoApp
//
//  Created by d&a-m-pro  on 6/9/23.
//

import Foundation


struct User: Codable, Identifiable {
    let id: Int
    let login: String
    let avatar_url: String
    let html_url: String
}
