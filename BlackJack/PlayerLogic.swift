//
//  PlayerLogic.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import UIKit

struct PlayerLogic{

    var isBust = false
    var hasBlackJack = false
    var hasAce = false
    var valueOfCards = 0
    var hitCounter = -1
    var handCards: [Card] = []
    var cardImages: [UIImageView] = []
    var xValueForImage = -40
    var yValueForImage: Int = 0
    var softHand = false

    init(addYValue startingYValue: Int) {
        self.yValueForImage = startingYValue
    }

    mutating func receiveACard(cardToReceive cardGiven: Card){
        //Receive Card
        handCards.append(cardGiven)
        //Check For Ace In Hand
        hasAce = ValueOfCards.hasAce(hand: handCards)
        
        //Calculate Value Of Entire Hand
        valueOfCards = ValueOfCards.calculateHandValue(handDeck: handCards)
        //Check For Blackjack
        hasBlackJack = ValueOfCards.isBlackJack(valueOfCards: valueOfCards, hasAce: hasAce)
        softHand = ValueOfCards.softhand
        //Increment values for Image Creation
        hitCounter += 1
        xValueForImage += 50
        //Determine If Bust
        if valueOfCards > 21 {
            isBust = true
        }
    }

}
