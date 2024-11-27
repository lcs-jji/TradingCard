//
//  CardsListView.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-26.
//

import SwiftUI

struct CardsView: View {
    
    let thingToShow: TradingCard
    
    var body: some View {
        Color.blue.opacity(0.3)
            .overlay {
                HStack(spacing: 25){
                    Image(thingToShow.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 120, alignment: .center)
                        .clipped()
                    VStack(spacing: 15){
                        Text(thingToShow.playerName)
                            .font(Font.custom("Didot", size: 25))
                            .bold()
                        HStack {
                            VStack {
                                Text("ATTACK")
                                    .font(Font.custom("Times New Roman", size: 12))
                                    .bold()
                                    .foregroundStyle(.red)
                                Text("\(thingToShow.attack)")
                                    .font(Font.custom("Times New Roman", size: 17))
                                    .bold()
                            }
                            VStack {
                                Text("CENTRAL")
                                    .font(Font.custom("Times New Roman", size: 12))
                                    .bold()
                                    .foregroundStyle(.orange)
                                Text("\(thingToShow.central)")
                                    .font(Font.custom("Times New Roman", size: 17))
                                    .bold()
                            }
                            VStack {
                                Text("DEFENCE")
                                    .font(Font.custom("Times New Roman", size: 12))
                                    .bold()
                                    .foregroundStyle(.blue)
                                Text("\(thingToShow.defence)")
                                    .font(Font.custom("Times New Roman", size: 17))
                                    .bold()
                            }
                        }
                    }
                }
                .padding(.horizontal)
            }
            .ignoresSafeArea()
    }
}

#Preview {
    CardsView(thingToShow: erlingHaaland)
}
