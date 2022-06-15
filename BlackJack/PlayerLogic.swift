//
//  PlayerLogic.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import UIKit

class PlayerLogic{

    var isBust = false
    var hasBlackJack = false
    var hasAce = false
    var valueOfCards = 0
    var hitCounter = 0
    var handCards: [Card] = []
    var cardImages: [UIImageView] = []
    var xValueForImage = 10
    var yValueForImage: Int = 0

    init(addYValue startingYValue: Int) {
        self.yValueForImage = startingYValue
    }

    func playerReceiveACard(cardForPlayer cardGiven: Card){
        //deckOfCard.checkForDeckEmpty()
        
        //Receive Card
        self.handCards.append(cardGiven)
        //Calculate Value Of Entire Hand
        valueOfCards = ValueOfCards.calculateHandValue(handDeck: self.handCards)
        //Check For Ace In Hand
        self.hasAce = ValueOfCards.hasAce(hand: self.handCards)

        //playerCardValue.text = "\(valueOfPlayerCards)"
        hitCounter += 1
        xValueForImage += 50
        cardImages.append(createImage(xLocation: xValueForImage, yLocation: yValueForImage, imageToAdd: handCards[hitCounter].image))
        
        
        if valueOfCards > 21 {
            //resultLabel.text = "Player Bust"
            isBust = true
            
        }

    }
    private func createImage(xLocation: Int, yLocation: Int, imageToAdd: UIImage) -> UIImageView{
        let imgView = UIImageView()
        imgView.frame = CGRect(x: xLocation, y: yLocation, width: 100, height: 150)
        imgView.image = imageToAdd//Assign image to ImageView
        //view.addSubview(imgView)//Add image to our view
        return imgView
    }
}
