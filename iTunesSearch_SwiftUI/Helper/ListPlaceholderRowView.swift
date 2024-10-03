//
//  ListPlaceholderRowView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 03/10/24.
//

import SwiftUI

struct ListPlaceholderRowView: View {
    let state: FetchState
    let loadMore: () -> Void
    
    var body: some View {
        switch state {
            case .good:
                Color.clear
                    .onAppear {
                        loadMore()
                    }
            case .isLoading:
                ProgressView()
                    .progressViewStyle(.circular)
                    .frame(maxWidth: .infinity)
            case .loadedAll:
                EmptyView()
            case .noResults:
                Text("Sorry Could not find anything.")
                    .foregroundColor(.gray)
            case .error(let message):
                Text(message)
                    .foregroundColor(.pink)
        }
    }
}

#Preview {
    ListPlaceholderRowView(state: .noResults,
                           loadMore: { })
}
