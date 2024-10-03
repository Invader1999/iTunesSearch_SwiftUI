//
//  ImageLoadingView.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI


struct ImageLoadingView: View {
    let urlString:String
    let size:CGFloat
    var body: some View {
        AsyncImage(url: URL(string:urlString)){ phase in
            
            switch phase {
            case .empty:
                ProgressView()
                    .frame(width: size)
            case .success(let image):
                image
                   .border(Color(white:0.8))
            case .failure(_):
                Color.gray
                    .frame(width: size)
                
                
            @unknown default:
                EmptyView()
            }
        }
        .frame(height:size)
    }
}

#Preview {
    ImageLoadingView(urlString: "", size: 100)
}
