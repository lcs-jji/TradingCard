//
//  Cards.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-14.
//

import SwiftUI


struct ImageView: View {
    
    let player: TradingCard
    
    var body: some View {
        VStack{
            ZStack{
                Color(red: 136 / 255, green: 180 / 255, blue: 230 / 255)
                Color.white.padding(15)
                Color(red: 240 / 255, green: 66 / 255, blue: 47 / 255)
                    .padding(30)
                Color(red: 246 / 255, green: 202 / 255, blue: 107 / 255)
                    .padding(45)
                Image(player.imageName)
                    .resizable().aspectRatio(contentMode: .fit).padding(60)
                HStack{
                    Spacer(minLength: 240)
                    VStack{
                        Spacer(minLength: 310)
                        Image("manchesterCityLogo")
                            .resizable().aspectRatio(contentMode: .fit)
                    }
                }
            }
        }
    }
}

struct StatisticsView: View {
    let player: TradingCard
    
    var body: some View {
        VStack(alignment: .leading, spacing: 35){
            HStack{
                Text("Nationality: ")
                    .font(.custom("Palatino", size: 30)).bold()
                Text(player.nationality)
                    .font(.custom("Georgia", size: 25))
                Spacer()
            }
            
            HStack{
                Text("Total Goals: ")
                    .font(.custom("Palatino", size: 30)).bold()
                Text("\(player.goals)")
                    .font(.custom("Georgia", size: 25))
                Spacer()
            }
            
            HStack{
                Text("Total Assists: ")
                    .font(.custom("Palatino", size: 30)).bold()
                Text("\(player.assists)")
                    .font(.custom("Georgia", size: 25))
                Spacer()
            }
            
            Text("Player Ratings:")
                .font(.custom("Palatino", size: 30)).bold()
            
            HStack{
                VStack(spacing: 10){
                    HStack{
                        Spacer()
                        Text("Attack: ")
                            .font(.custom("Palatino", size: 25)).bold()
                            .foregroundStyle(.red)
                        Text("\(player.attack)")
                            .font(.custom("Georgia", size: 25))
                            .foregroundStyle(.red)
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text("Central: ")
                            .font(.custom("Palatino", size: 25)).bold()
                            .foregroundStyle(.yellow)
                        Text("\(player.central)")
                            .font(.custom("Georgia", size: 25))
                            .foregroundStyle(.yellow)
                        Spacer()
                    }
                    
                    HStack{
                        Spacer()
                        Text("Defense: ")
                            .font(.custom("Palatino", size: 25)).bold()
                            .foregroundStyle(.blue)
                        Text("\(player.defence)")
                            .font(.custom("Georgia", size: 25))
                            .foregroundStyle(.blue)
                        Spacer()
                    }
                }
                HStack{
                    Spacer()
                    Text("Total: ")
                        .font(.custom("Palatino", size: 30)).bold()
                        .foregroundStyle(.pink)
                    Text("\(player.total)")
                        .font(.custom("Georgia", size: 30))
                        .foregroundStyle(.pink)
                    Spacer()
                }
            }
            
            Text("Most Famous Play:")
                .font(.custom("Palatino", size: 30)).bold()
            
            HStack{
                Spacer()
                Text("\(player.famousPlay)")
                    .font(.custom("Palatino", size: 20))
                Spacer()
            }
        }.padding()
    }
}


#Preview {
    StatisticsView(player: erlingHaaland)
}
