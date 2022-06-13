//
//  DeckOfCards.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 13/06/2022.
//

import UIKit

struct DeckOfCards{
    var deckOfCards: [Card] = []
    private let sizeOfDeck: Int
    
    init(howManyDecks numberOfDecks: Int){
        sizeOfDeck = numberOfDecks
        createDecksOfCards()
    }
    private mutating func createOneDeckOfCards(){
        let cards = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"]

        let valueOfCards = ["2":2, "3":3, "4":4, "5":5, "6":6, "7":7, "8":8, "9":9, "10":10, "J":10, "Q":10, "K":10, "A":11]

        let suitOfCards = ["C", "D", "H", "S"]


        for suitOfCard in suitOfCards {
            for card in cards {
                deckOfCards.append(Card(name: card, value: valueOfCards[card]!, image:UIImage(named: card+suitOfCard)!))
            }
        }
    }
    
    mutating func createDecksOfCards(){
        for _ in 1...sizeOfDeck{
            createOneDeckOfCards()
        }
    }
}
