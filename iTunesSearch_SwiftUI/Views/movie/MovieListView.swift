//
//  MovieListView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 24/09/24.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.movies) { movie in
                MovieRowView(movie: movie)
            }
            
            ListPlaceholderRowView(state: viewModel.state,
                                   loadMore: viewModel.loadMore)
        }
        .listStyle(.plain)
        
    }
}


#Preview {
    MovieListView(viewModel: MovieListViewModel())
}
