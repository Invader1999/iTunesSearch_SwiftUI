//
//  SongSectionView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI

struct SongSectionView: View {
    let songs:[Song]
    let rows = Array(repeating: GridItem(.fixed(60),spacing: 0,alignment: .leading), count: 4)
    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows,spacing: 15){
                ForEach(songs) { song in
                    NavigationLink {
                        SongDetailView(song: song)
                    } label: {
                        SongRowView(song: song)
                            .frame(width: 300)
                    }
                    .buttonStyle(.plain)
 
                }
                
            }
            .padding([.horizontal,.bottom])
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    SongSectionView(songs: [Song.example()])
}
