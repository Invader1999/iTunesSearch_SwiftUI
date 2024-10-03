//
//  MovieRowView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI

struct MovieRowView: View {
    let movie:Movie
    var body: some View {
        HStack{
            ImageLoadingView(urlString: movie.artworkUrl100 , size: 100)
            
            VStack(alignment:.leading){
                Text(movie.trackName)
                Text(movie.primaryGenreName)
                    .foregroundStyle(.gray)
                Text(movie.releaseDate ?? "Unknown")
                    .foregroundStyle(.gray)
                
            }
            .font(.caption)
            .lineLimit(1)
            
            Spacer(minLength: 20)

            BuyButton(urlString: movie.previewURL ?? "", price:  movie.trackPrice, currency: movie.currency)
        }
    }
}

#Preview {
    MovieRowView(movie: Movie.example())
}
