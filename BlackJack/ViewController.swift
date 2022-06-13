//
//  ViewController.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 26/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
//    var deckOfCards: [Card] = []
    var cardDeck = DeckOfCards(howManyDecks: 4)
    
    var playerBust = false
    var dealerBust = false
    
    var playerBlackJack = false
    var dealerBlackJack = false
    
    var playerHasAce = false
    var dealerHasAce = false
    
    var playerDeductedTwoAces = false
    var dealerDeductedTwoAces = false

    var valueOfPlayerCards = 0
    var valueOfDealerCards = 0
    
    var playerHitCounter = 0
    var dealerHitCounter = 0
    
    var playerHand: [Card] = []
    var dealerHand: [Card] = []
    
    var playerAcesInHand = 0
    var dealerAcesInHand = 0
    
    var playerImages: [UIImageView] = []
    var dealerImages: [UIImageView] = []
    
    var xValueForImagePlayer = 10
    var xValueForImageDealer = 10
    let yValueForImagePlayer = 530
    let yValueForImageDealer = 130
    
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var dealerCardValue: UILabel!
    @IBOutlet weak var playerCardValue: UILabel!
    
    @IBOutlet weak var hitButton: UIButton!
    @IBOutlet weak var standButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cardDeck.createDecksOfCards()
        resetGame()
        
    }
    
    func createImage(xLocation: Int, yLocation: Int, imageToAdd: UIImage) -> UIImageView{
        let imgView = UIImageView()
        imgView.frame = CGRect(x: xLocation, y: yLocation, width: 100, height: 150)
        imgView.image = imageToAdd//Assign image to ImageView
        view.addSubview(imgView)//Add image to our view
        return imgView
    }

    @IBAction func hitButton(_ sender: UIButton) {
        
    
        playerPullACard()
        
        print("Value of cards for player: \(valueOfPlayerCards)")
        print("Player has Ace: \(playerHasAce)")
        
        
    }
    @IBAction func standButton(_ sender: UIButton){
        
        
        dealerPullCards()
        if dealerBlackJack {
            resultLabel.text = "Dealer has Blackjack"
            
        } else if !dealerBust && valueOfDealerCards > valueOfPlayerCards{
            resultLabel.text = "Dealer wins with: \(valueOfDealerCards)"
        } else if valueOfPlayerCards == valueOfDealerCards {
            resultLabel.text = "Draw"
        }
        else if !playerBust && valueOfPlayerCards < 22 {
            resultLabel.text = "Player Win"
        }
        
       buttonsUnhide()
        
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        resetGame()
        
    }
    func buttonsUnhide(){
        playAgainButton.isHidden = false
        standButton.isHidden = true
        hitButton.isHidden = true
        
    }
    func buttonsHide(){
        playAgainButton.isHidden = true
        standButton.isHidden = false
        hitButton.isHidden = false

    }
    
    func resetGame(){
        buttonsHide()
        checkForDeckEmpty()
        
        print("---------------------")
        xValueForImagePlayer = 10
        xValueForImageDealer = 10
        
        resultLabel.text = ""
        
        playerBust = false
        dealerBust = false
        
        playerBlackJack = false
        dealerBlackJack = false
        
        playerHasAce = false
        dealerHasAce = false
        
        playerDeductedTwoAces = false
        dealerDeductedTwoAces = false

        valueOfPlayerCards = 0
        valueOfDealerCards = 0
        
        playerAcesInHand = 0
        dealerAcesInHand = 0
        
        playerHitCounter = 0
        dealerHitCounter = 0
        
        playerHand.removeAll()
        dealerHand.removeAll()
        
        
        //Player Pull First Card
        playerHand.append(cardDeck.deckOfCards.removeFirst())
        playerHasAce = hasAce(hand: playerHand)
        //Player Pull Second Card
        playerHand.append(cardDeck.deckOfCards.removeFirst())
        //Calculate Value
        valueOfPlayerCards = calculateHandValue(handDek: playerHand)
        
        //Check For Ace
        playerHasAce = hasAce(hand: playerHand)
        if playerHasAce {
            for card in playerHand{
                if card.name == "A"{
                    playerAcesInHand += 1
                }
            }
        }
        if playerAcesInHand == 2 {
            valueOfPlayerCards -= 10
            playerDeductedTwoAces = true
        }
        
        //Dealer Pull First Card
        dealerHand.append(cardDeck.deckOfCards.removeFirst())
        dealerHasAce = hasAce(hand: dealerHand)
        
        //Dealer Pull Second Card
        dealerHand.append(cardDeck.deckOfCards.removeFirst())
        
        //Calculate Value
        valueOfDealerCards = calculateHandValue(handDek: dealerHand)
        
        //Check For Ace
        dealerHasAce = hasAce(hand: dealerHand)
        if dealerHasAce {
            for card in dealerHand{
                if card.name == "A"{
                    dealerAcesInHand += 1
                }
            }
        }
        if dealerAcesInHand == 2 {
            valueOfDealerCards -= 10
            dealerDeductedTwoAces = true
        }
        
        
        
        
        playerCardValue.text = "\(valueOfPlayerCards)"
        dealerCardValue.text = "\(dealerHand[0].value)"
        
        for image in playerImages{
            image.image = nil
        }
        for image in dealerImages{
            image.image = nil
        }
        dealerImages.removeAll()
        playerImages.removeAll()
        
        
        dealerImages.append(createImage(xLocation: xValueForImageDealer, yLocation: yValueForImageDealer, imageToAdd: dealerHand[dealerHitCounter].image))
        playerImages.append(createImage(xLocation: xValueForImagePlayer, yLocation: yValueForImagePlayer, imageToAdd: playerHand[playerHitCounter].image))
        
        xValueForImagePlayer += 50
        xValueForImageDealer += 50
        playerHitCounter += 1
        dealerHitCounter += 1
        
        dealerImages.append(createImage(xLocation: xValueForImageDealer, yLocation: yValueForImageDealer, imageToAdd: UIImage(named: "gray_back")!))
        playerImages.append(createImage(xLocation: xValueForImagePlayer, yLocation: yValueForImagePlayer, imageToAdd: playerHand[playerHitCounter].image))
        
    
        
        print("Player has Ace: \(playerHasAce)")
        print("Value of cards for player: \(valueOfPlayerCards)")
        print("Delear has Ace: \(dealerHasAce)")
        print("Value of cards for dealer: \(valueOfDealerCards)")
        
        playerBlackJack = isBlackJack(valueOfCards: valueOfPlayerCards, hasAce: playerHasAce)
        dealerBlackJack = isBlackJack(valueOfCards: valueOfDealerCards, hasAce: dealerHasAce)
        
       checkForBlackJack()
    }
    
    
    func checkForBlackJack(){
        if playerBlackJack {
            resultLabel.text = "Player has Blackjack"
            buttonsUnhide()
        } else if dealerBlackJack && dealerHand[0].name == "A" {
            dealerImages[dealerHitCounter].image = dealerHand[dealerHitCounter].image
            resultLabel.text = "Dealer has Blackjack"
            dealerCardValue.text = "\(valueOfDealerCards)"
            buttonsUnhide()
        } else if dealerBlackJack && dealerHand[0].name == "A" && playerBlackJack{
            resultLabel.text = "Draw on Blackjack"
            buttonsUnhide()
        }
    }
    
    func dealerPullCards(){
        checkForDeckEmpty()
        dealerImages[dealerHitCounter].image = dealerHand[dealerHitCounter].image
        dealerCardValue.text = "\(valueOfDealerCards)"
        
        while valueOfDealerCards < 17 {
            
            dealerHand.append(cardDeck.deckOfCards.removeFirst())
            valueOfDealerCards = calculateHandValue(handDek: dealerHand)
            dealerCardValue.text = "\(valueOfDealerCards)"
            dealerHasAce = hasAce(hand: dealerHand)
            dealerHitCounter += 1
            xValueForImageDealer += 50
            dealerImages.append(createImage(xLocation: xValueForImageDealer, yLocation: yValueForImageDealer, imageToAdd: dealerHand[dealerHitCounter].image))
            print("Value of cards for dealer: \(valueOfDealerCards)")
            print("Delear has Ace: \(dealerHasAce)")
            if valueOfDealerCards > 21 && dealerHasAce{
                valueOfDealerCards -= forEachAceInHand(hand: dealerHand)
                if dealerDeductedTwoAces{
                    valueOfDealerCards += 10
                }
                dealerCardValue.text = "\(valueOfDealerCards)"
            }
            if valueOfDealerCards > 21 {
                resultLabel.text = "Dealer bust with: \(valueOfDealerCards)"
                dealerBust =  true
                buttonsUnhide()
            }
        }
    }
    func playerPullACard(){
        checkForDeckEmpty()
        playerHand.append(cardDeck.deckOfCards.removeFirst())
        valueOfPlayerCards = calculateHandValue(handDek: playerHand)
        playerCardValue.text = "\(valueOfPlayerCards)"
        playerHasAce = hasAce(hand: playerHand)
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
    func checkForDeckEmpty(){
        if cardDeck.deckOfCards.count < 4 {
            print("Deck was empty, new one created")
            cardDeck.createDecksOfCards()
        }
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
    

    func calculateHandValue(handDek: [Card]) -> Int{
        var valuteToReturn = 0
        for card in handDek {
            valuteToReturn += card.value
        }
        return valuteToReturn
    }

    func hasAce(hand: [Card]) -> Bool{
        for card in hand{
            if card.name == "A"{
            return true
            }
        }
       return false
    }
    func forEachAceInHand(hand: [Card]) -> Int{
        var value = 0
        for card in hand{
            if card.name == "A"{
                value += 10
            }
        }
       return value
    }
    

}

