//
//  ContentView.swift
//  book
//
//  Created by Eatmyself on 2020/10/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            list()
            .tabItem {
                Image(systemName: "book.fill")
                Text("圖鑑")
            }
            other()
            .tabItem {
                Image(systemName: "ellipsis.circle.fill")
                Text("更多")
            }
        }.accentColor(Color(red: 0/255, green: 124/255, blue: 156/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
        }
    }
}
