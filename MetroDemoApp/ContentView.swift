//
//  ContentView.swift
//  MetroDemoApp
//
//  Created by d&a-m-pro  on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var users: [User] = []
    @StateObject var usersVM = GithubAPI()
    
    var body: some View {
        VStack {
            NavigationView {
                List {
                    ForEach(users) { user in
                        ZStack {
                            NavigationLink(destination: UserDetailView(user: user)) {
                                UserRowView(user: user)
                                    .onAppear {
//                                        loadMore()
                                    }
                            }
                        }
                    }
                }
                .navigationTitle("Github users")
            }
        }
        .task {
            do {
                users = try await usersVM.fetchUsers()
            } catch {
                print(error)
            }
        }
        .padding()
    }
}

private extension ContentView {
    func loadMore(_ user: User) {
//        let threshold = items
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
