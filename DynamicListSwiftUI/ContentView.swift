//
//  ContentView.swift
//  DynamicListSwiftUI
//
//  Created by Mohsen Abdollahi on 3/31/20.
//  Copyright © 2020 Mohsen Abdollahi. All rights reserved.
//

import SwiftUI

struct User : Identifiable {
    var id: Int
    let username : String
    let message : String
    let imageName : String
}

struct ContentView: View {
    
    let users : [User] = [
    
        .init(id: 0 , username: "Tim Cook", message: "Manager in Apple Inc.", imageName: "tim_cook"),
        .init(id: 1, username: "Mohsen Abdollahi", message: "Senior vice president", imageName: "Mohsen"),
        .init(id: 2, username: "Jony Ive", message: "Product and architectural designer", imageName: "Jony_ive")
    ]
    
    var body: some View {
        NavigationView {
            List {
                Text("Users").font(.largeTitle)
                ForEach(users) { user in
                    
                    HStack{
                        Image(user.imageName)
                            .resizable()
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color.white, lineWidth: 2))
                            .frame(width : 70 , height: 70)
//                            .clipped()
                        VStack (alignment : .leading )  {
                             Text(user.username).font(.headline)
                             Text(user.message).font(.subheadline)
                        }.padding(.leading , 8)
                    }.padding(.init(top: 12, leading: 0, bottom: 0, trailing: 0))
                }
                
//                Text($0.username)
            }.navigationBarTitle(Text("Dynamic List"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
