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
                Color(red: 136 / 255, green: 180 / 255, blue: 230 / 255)
                    .ignoresSafeArea(edges: .all)
                ScrollView{
                    VStack{
                        ImageView(player: player)
                        StatisticsView(player: player)
                        
                    }
                }
                .navigationTitle(player.playerName)
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button{
                        }label:{
                            HStack{
                                Image(systemName:"chevron.backward")
                                Text("Back")
                            }
                        }
                    }
                }
            }
            .tint(.brown)
        }
    }
}

#Preview {
    CardDetailView(player: kevinDeBruyne)
}
