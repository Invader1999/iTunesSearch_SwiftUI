//
//  AlbumRowView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI

struct AlbumRowView: View {
    let album:Album
    
    var body: some View {
        HStack{
            ImageLoadingView(urlString: album.artworkUrl100, size: 100)
            
            VStack(alignment:.leading){
                Text(album.collectionName)
                Text(album.artistName)
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .lineLimit(1)
            
            Spacer(minLength: 20)
            
            BuyButton(urlString: album.collectionViewURL, price: album.collectionPrice, currency: album.currency)
        }
        
    }
}

#Preview {
    AlbumRowView(album: Album.example())
}
