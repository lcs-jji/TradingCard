//
//  Card.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-26.
//

import Foundation


struct TradingCard: Identifiable {
    let id = UUID()
    let imageName: String
    let playerName: String
    let nationality: String
    let number: Int
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
    number: 9,
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
    number: 10,
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
    number: 17,
    goals: 150,
    assists: 244,
    defence: 100,
    central: 100,
    attack: 100,
    total: 300,
    famousPlay: """
    Kevin De Bruyne’s assist in the 2021 UEFA Champions League semi-final against PSG is one of his most iconic moments. In the second leg, with the aggregate score tied 1-1, De Bruyne made a precise pass through PSG’s defense to Riyad Mahrez, who finished calmly to give Manchester City a 2-1 aggregate lead. This goal, which came in the 11th minute, was crucial in City’s 2-0 victory, securing their place in their first-ever Champions League final.
""")

let cards = [erlingHaaland, jackGrealish, kevinDeBruyne]
