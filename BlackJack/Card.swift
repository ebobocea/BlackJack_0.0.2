//
//  Card.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 26/03/2022.
//

import UIKit

struct Card {
    let name: String
    let value: Int
    let suit: Suit
    let image: UIImage
    
}

enum Suit {
    case clubs, diamonds, hearts, spades
    
    var symbol: String {
        switch self {
        case .spades: return "♠️"
        case .hearts: return "❤️"
        case .diamonds: return "♦️"
        case .clubs: return "♣️"
        }
    }
}
