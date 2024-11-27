//
//  ContentView.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-12.
//

import SwiftUI

struct CardsListView: View {
    var body: some View {
        NavigationStack {
            List(cards) { currentTradingCard in
                NavigationLink {
                    CardDetailView(player: currentTradingCard)
                } label: {
                    CardsView(thingToShow: currentTradingCard)
                        .frame(height:150)
                        .padding(.horizontal, 1)
                }
            }
            .listStyle(.plain)
            .navigationTitle("City Players")
        }
    }
}

#Preview {
    CardsListView()
}
