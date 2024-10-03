//
//  SongListView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 24/09/24.
//

import SwiftUI

struct SongListView: View {
    
    @ObservedObject var viewModel: SongListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.songs) { song in
                NavigationLink {
                    SongDetailView(song: song)
                } label: {
                    SongRowView(song: song)
                }
                
            }
            ListPlaceholderRowView(state: viewModel.state,
                                   loadMore: viewModel.loadMore)
      
        }
        .listStyle(.plain)
        
    }
}

#Preview {
    SongListView(viewModel: SongListViewModel.example())
}

