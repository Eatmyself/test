//
//  tab.swift
//  book
//
//  Created by Eatmyself on 2020/10/16.
//

import SwiftUI

struct tab: View {
    var body: some View {
        TabView {
            ContentView()
            .tabItem {
                Image(systemName: "music.house.fill")
                Text("情歌")
            }
            other()
            .tabItem {
                Image(systemName: "info.circle.fill")
                Text("About")
            }
        }
    }
}

struct tab_Previews: PreviewProvider {
    static var previews: some View {
        tab()
    }
}
