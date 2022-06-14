//
//  PlayerLogic.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import UIKit

class PlayerLogic{
    
    let isBust = false
    let hasBlackJack = false
    var hasAce = false
    let deductedTwoAces = false
    var valueOfCards = 0
    let hitCounter = 0
    var handCards: [Card]
    let acesInHand = 0
    let cardImages: [UIImageView] = []
    let xValueForImage = 10
    let yValueForImage: Int
    
    init(addYValue startingYValue: Int) {
        yValueForImage = startingYValue
    }
    
    func playerReceiveACard(cardForPlayer cardGiven: Card){
        //deckOfCard.checkForDeckEmpty()
        //Receive Card
        self.handCards.append(cardGiven)
        //Calculate Value Of Entire Hand
        valueOfCards = ValueOfCards.calculateHandValue(handDeck: self.handCards)
        //Check For Ace In Hand
        self.hasAce = ValueOfCards.hasAce(hand: self.handCards)
        
        
        if valueOfPlayerCards > 21 && playerHasAce{
            valueOfPlayerCards -= forEachAceInHand(hand: playerHand)
            if playerDeductedTwoAces{
                valueOfPlayerCards += 10
            }
        }
        
        playerCardValue.text = "\(valueOfPlayerCards)"
        playerHitCounter += 1
        xValueForImagePlayer += 50
        playerImages.append(createImage(xLocation: xValueForImagePlayer, yLocation: yValueForImagePlayer, imageToAdd: playerHand[playerHitCounter].image))
        if valueOfPlayerCards > 21 {
            resultLabel.text = "Player Bust"
            playerBust = true
            buttonsUnhide()
            dealerPullCards()
        }
        
    }
}
