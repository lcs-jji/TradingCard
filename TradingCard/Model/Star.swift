//
//  Star.swift
//  TradingCard
//
//  Created by Xinchen Ji on 2024-11-29.
//

import SwiftUI

struct Star: Shape {
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.move(to: CGPoint(x: rect.midX, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.maxX/8 * 3, y: rect.maxY/5 * 2))
        path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY/5 * 2))
        path.addLine(to: CGPoint(x: rect.maxX/8 * 2, y: rect.maxY/5 * 3))
        path.addLine(to: CGPoint(x: rect.maxX/8 * 1, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY/20 * 14))
        path.addLine(to: CGPoint(x: rect.maxX/8 * 7, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX/8 * 6, y: rect.maxY/5 * 3))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY/5 * 2))
        path.addLine(to: CGPoint(x: rect.maxX/8 * 5, y: rect.maxY/5 * 2))
        return path
    }
}

#Preview{
    Star()
}
