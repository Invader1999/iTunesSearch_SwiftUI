//
//  ContentView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            
            SearchView()
                .tabItem {
                    Label("Search",systemImage: "magnifyingglass")
                }
            
            AlbumSearchView()
                .tabItem {
                    Label("Albums", systemImage: "music.note")
                }
            
            MovieSearchListView()
                .tabItem {
                    Label("Movies", systemImage: "tv")
                }
        }
          
        
    }
}

#Preview {
    ContentView()
}
