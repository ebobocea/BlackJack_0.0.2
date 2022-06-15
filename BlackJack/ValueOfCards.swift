//
//  ValueOfCards.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import Foundation

struct ValueOfCards {
    
    
    static func calculateHandValue(handDeck: [Card]) -> Int{
        var valuteToReturn = 0
        var numberOfAces = 0
        var twoAces = false
        
        if handDeck[0].name == "A" && handDeck[1].name == "A"{
            twoAces = true
        }
        for card in handDeck {
            valuteToReturn += card.value
            if card.name == "A"{
                numberOfAces += 1
            }
        }
        if valuteToReturn > 21 && numberOfAces >= 1 {
            if twoAces {
                valuteToReturn += 10
            }
            for _ in 1...numberOfAces {
                valuteToReturn -= 10
            }
            if handDeck.count >= 3 && twoAces && valuteToReturn > 21{
                valuteToReturn -= 10
            }
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
