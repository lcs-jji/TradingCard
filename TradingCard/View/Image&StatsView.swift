//
//  Cards.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-14.
//

import SwiftUI

struct TradingCard {
    let imageName: String
    let playerName: String
    let nationality: String
    let goals: Int
    let assists: Int
    let defence: Int
    let central: Int
    let attack: Int
    let total: Int
    let famousPlay: String
}


let erlingHaaland = TradingCard(
    imageName: "erlingHaaland",
    playerName: "Erling Haaland",
    nationality: "Norwegian",
    goals: 227,
    assists: 39,
    defence: 100,
    central: 100,
    attack: 100,
    total: 300,
    famousPlay: """
    Erling Haaland’s five-goal performance for Manchester City in a 7-0 Champions League win against RB Leipzig on March 14, 2023, was a historic display of his scoring prowess. Scoring three goals before halftime and adding two more early in the second half, Haaland tied the Champions League record for most goals in a single match. His performance showcased his clinical finishing, quick positioning, and physical dominance.
""")

let jackGrealish = TradingCard(
    imageName: "jackGrealish",
    playerName: "Jack Grealish",
    nationality: "English",
    goals: 55,
    assists: 63,
    defence: 80,
    central: 94,
    attack: 91,
    total: 265,
    famousPlay: """
    Jack Grealish made a pivotal impact in England's 2-0 win over Germany in the Round of 16 at UEFA Euro 2020. After coming on as a substitute in the second half, Grealish provided a key assist by dribbling past German defenders and delivering a perfect cross to Raheem Sterling, who scored the opening goal.
""")

let kevinDeBruyne = TradingCard(
    imageName: "kevinDeBruyne",
    playerName: "Kevin De Bruyne",
    nationality: "Belgian",
    goals: 150,
    assists: 244,
    defence: 100,
    central: 100,
    attack: 100,
    total: 300,
    famousPlay: """
    Kevin De Bruyne’s assist in the 2021 UEFA Champions League semi-final against PSG is one of his most iconic moments. In the second leg, with the aggregate score tied 1-1, De Bruyne made a precise pass through PSG’s defense to Riyad Mahrez, who finished calmly to give Manchester City a 2-1 aggregate lead. This goal, which came in the 11th minute, was crucial in City’s 2-0 victory, securing their place in their first-ever Champions League final
""")


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
            Spacer(minLength: 310)
        }
    }
}


#Preview {
    ImageView(player: erlingHaaland)
}
