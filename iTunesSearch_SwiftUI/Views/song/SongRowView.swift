//
//  SongRowView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI

struct SongRowView: View {
    let song:Song
    var body: some View {
        HStack{
            ImageLoadingView(urlString: song.artworkUrl60, size: 60)
            
            VStack(alignment:.leading){
                Text(song.trackName)
                Text((song.artistName) + " - " + (song.collectionName))
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            .lineLimit(1)
            
            Spacer(minLength: 20)

            BuyButton(urlString: song.trackViewURL, price:  song.trackPrice, currency: song.currency)
        }
    }
}

#Preview {
    SongRowView(song:Song.example())
}


