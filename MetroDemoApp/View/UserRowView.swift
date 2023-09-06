//
//  UserRowView.swift
//  MetroDemoApp
//
//  Created by d&a-m-pro  on 6/9/23.
//

import SwiftUI

struct UserRowView: View {
    
    let user: User
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Name: \(user.login)")
                Text("Github profile \(user.html_url)")
            }
            .padding()
        }
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView(user: .init(id: 0, login: "Dongski", avatar_url: "http://test.com", html_url: "http://test.com/profile"))
    }
}
