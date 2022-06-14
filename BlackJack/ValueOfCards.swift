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
        for card in handDeck {
            valuteToReturn += card.value
            if card.name == "A"{
                numberOfAces += 1
            }
        }
        if valuteToReturn > 21 && numberOfAces >= 1 {
            for _ in 1...numberOfAces {
                valuteToReturn -= 10
            }

        }
        if numberOfAces >= 2 && handDeck[2].value >= 10 {
            for _ in 1...numberOfAces {
                valuteToReturn -= 10
            }
        }
        return valuteToReturn
    }
    


    
    func calculateValueWithAce(valueOfHand: Int, handHasAce: Bool) -> Int{

        if valueOfHand > 21 && handHasAce{
            return 10
        }
        return 0
    }
    
    func isBlackJack(valueOfCards:Int, hasAce: Bool) -> Bool {
        if valueOfCards == 21 && hasAce {
            return true
        }
        return false
    }

    
    
}
