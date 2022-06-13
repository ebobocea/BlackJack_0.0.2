//
//  PlayerLogic.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import UIKit

struct PlayerLogic{
    
    
    let isBust = false
    let hasBlackJack = false
    let hasAce = false
    let deductedTwoAces = false
    let valueOfCards = 0
    let hitCounter = 0
    let handCards: [Card] = []
    let acesInHand = 0
    let cardImages: [UIImageView] = []
    let xValueForImage = 10
    let yValueForImage: Int
    
    init(addYValue startingYValue: Int) {
        yValueForImage = startingYValue
    }

}
