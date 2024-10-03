//
//  MovieListView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 24/09/24.
//

import SwiftUI


struct MovieSearchListView: View {
    
    @StateObject private var viewModel = MovieListViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                if viewModel.searchTerm.isEmpty {
                    SearchPlaceholderView(searchTerm: $viewModel.searchTerm)
                } else {
                    MovieListView(viewModel: viewModel)
                }
            }
            .searchable(text: $viewModel.searchTerm)
            .navigationTitle("Search Movies")
        }
    }
}

#Preview {
    MovieSearchListView()
}
