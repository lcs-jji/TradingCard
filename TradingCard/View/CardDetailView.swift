//
//  CardDetailView.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-26.
//

import SwiftUI

struct CardDetailView: View {
    
    let player: TradingCard
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(colors: .CityBlue, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>)
                ScrollView{
                    VStack{
                        ImageView(player: player)
                        StatisticsView(player: player)
                        
                    }
                }
                .navigationTitle(player.playerName)
            }
            .tint(.brown)
        }
    }
}

#Preview {
    CardDetailView(player: kevinDeBruyne)
}
