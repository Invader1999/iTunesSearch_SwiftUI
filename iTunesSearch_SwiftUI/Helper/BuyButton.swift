//
//  BuyButton.swift
//  iTunesSearch_SwiftUI
//
//  Created by Hemanth Reddy Kareddy on 30/09/24.
//

import SwiftUI

struct BuySongButton: View {
    
    let urlString: String
    let price: Double?
    let currency: String
    
    var body: some View {
        if let price = price {
            BuyButton(urlString: urlString,
                      price: price,
                      currency: currency)
        } else {
            Text("ALBUM ONLY")
                .font(.footnote)
                .foregroundColor(.gray)
        }
    }
}


struct BuyButton: View {
    let urlString: String
    let price: Double?
    let currency: String
    
    var body: some View {
        if let url =  URL(string: urlString),
            let priceText = formattedPrice() {
            Link(destination: url) {
                Text(priceText)
            }
            .buttonStyle(BuyButtonStyle())
        }
    }
    
    func formattedPrice() -> String? {
        
        guard let price = price else {
            return nil
        }
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.currencyCode = currency
        
        let priceString = formatter.string(from: NSNumber(value: price))
        return priceString
    }
}

#Preview {
    let example = Album.example()
    
    return BuyButton(urlString:example.collectionViewURL, price: example.collectionPrice, currency: example.currency)
}
