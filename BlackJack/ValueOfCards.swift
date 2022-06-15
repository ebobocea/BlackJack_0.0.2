//
//  ValueOfCards.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import Foundation

struct ValueOfCards {
    static var softhand = false
    
    static func calculateHandValue(handDeck: [Card]) -> Int{
        var valuteToReturn = 0
        
        for card in handDeck {
            valuteToReturn += card.value
            if card.name == "A" && valuteToReturn < 12{
                valuteToReturn += 10
                softhand = true
            }
        }
        if softhand && valuteToReturn > 21 {
            valuteToReturn -= 10
            softhand = false
        }
        return valuteToReturn
    }
    
    static func hasAce(hand: [Card]) -> Bool{
        for card in hand{
            if card.name == "A"{
                return true
            }
        }
        return false
    }
    
    
    static func isBlackJack(valueOfCards:Int, hasAce: Bool) -> Bool {
        if valueOfCards == 21 && hasAce {
            return true
        }
        return false
    }
}
