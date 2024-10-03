//
//  SearchPlaceholderView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 24/09/24.
//

import SwiftUI

struct SearchPlaceholderView: View {
    
    @Binding var searchTerm: String
    let suggestions = ["royalty", "big dawgs", "limbo"]
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Trending")
                .font(.title)
            ForEach(suggestions, id: \.self) { text in
                Button {
                    searchTerm = text
                } label: {
                    Text(text)
                        .font(.title2)
                }

            }
            
        }
    }
}

#Preview {
    SearchPlaceholderView(searchTerm: .constant(""))
}
