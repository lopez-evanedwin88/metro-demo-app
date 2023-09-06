//
//  UserDetailView.swift
//  MetroDemoApp
//
//  Created by d&a-m-pro  on 6/9/23.
//

import SwiftUI

struct UserDetailView: View {
    
    let user: User
    
    var body: some View {
        HStack {
            VStack {
                Section {
                    AsyncImage(url: URL(string: user.avatar_url))
                }
                Text("Name: \(user.login)")
                HStack {
                    Text("Github Profile: ")
                    Link("\(user.html_url)", destination: URL(string: user.html_url)!)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        UserDetailView(user: .init(id: 0, login: "Dongski", avatar_url: "http://test.com", html_url: "http://test.com/profile"))
    }
}
