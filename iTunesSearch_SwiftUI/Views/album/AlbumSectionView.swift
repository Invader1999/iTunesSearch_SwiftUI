//
//  AlbumSectionView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI

struct AlbumSectionView: View {
    
    let albums: [Album]
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(alignment: .top) {
                ForEach(albums) { album in
                    NavigationLink {
                        AlbumDetailView(album: album)
                    } label: {
                        AlbumColumnView(album: album)
                    }
                    .buttonStyle(.plain)
                }
            }
            .padding([.horizontal, .bottom])
        }
    }
}

struct AlbumColumnView: View {
    let album: Album
    
    var body: some View {
        VStack(alignment: .leading) {
            ImageLoadingView(urlString: album.artworkUrl100, size: 100)
            Text(album.collectionName)
            Text(album.artistName)
                .foregroundColor(Color.gray)
        }
        .lineLimit(2)
        .frame(width: 100)
        .font(.caption)
    }
}
   

#Preview {
    AlbumSectionView(albums: [Album.example()])
}
