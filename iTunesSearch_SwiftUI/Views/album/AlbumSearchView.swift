//
//  AlbumSearchView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 23/09/24.


import SwiftUI



struct AlbumSearchView: View {
    
    @StateObject var viewModel = AlbumListViewModel()
    
    var body: some View {
        NavigationStack{
            Group {
                if viewModel.searchTerm.isEmpty {
                    SearchPlaceholderView(searchTerm: $viewModel.searchTerm)
                } else {
                    AlbumListView(viewModel: viewModel)
                }
            }
            .navigationTitle("Search Albums")
            .searchable(text: $viewModel.searchTerm)
            //.navigationBarTitleDisplayMode(.inline)
            
        }
    }
}


#Preview {
    AlbumSearchView()
}
