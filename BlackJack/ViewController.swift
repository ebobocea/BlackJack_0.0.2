//
//  ViewController.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 26/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var cardDeck = DeckOfCards(howManyDecks: 4)
    var player = PlayerLogic(addYValue: 530)
    var dealer = PlayerLogic(addYValue: 130)
    
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
    
    
    @IBAction func hitButton(_ sender: UIButton) {
        playerPullACard()
    }
    
    @IBAction func standButton(_ sender: UIButton){
        dealerPullCards()
        if dealer.hasBlackJack && dealer.handCards[1].name == "A" {
            resultLabel.text = "Dealer has Blackjack"
        } else if !dealer.isBust && dealer.valueOfCards > player.valueOfCards{
            resultLabel.text = "Dealer wins with: \(dealer.valueOfCards)"
        } else if player.valueOfCards == dealer.valueOfCards {
            resultLabel.text = "Draw"
        }
        else if !player.isBust && player.valueOfCards < 22 {
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
        cardDeck.checkForDeckEmpty()
        
        //Resetting player
        player.isBust = false
        player.hasBlackJack = false
        player.hasAce = false
        player.valueOfCards = 0
        player.hitCounter = -1
        player.xValueForImage = -40
        player.handCards.removeAll()
        for image in player.cardImages{
            image.image = nil
        }
        player.cardImages.removeAll()
        //Dealing first card
        player.receiveACard(cardToReceive: cardDeck.deckOfCards.removeFirst())
        //Creating image of first card
        player.cardImages.append(createImage(xLocation: player.xValueForImage, yLocation: player.yValueForImage, imageToAdd: player.handCards[player.hitCounter].image))
        //Dealing second card
        player.receiveACard(cardToReceive: cardDeck.deckOfCards.removeFirst())
        //Creating image for second card
        player.cardImages.append(createImage(xLocation: player.xValueForImage, yLocation: player.yValueForImage, imageToAdd: player.handCards[player.hitCounter].image))
        
        
        //Resetting Dealer
        dealer.isBust = false
        dealer.hasBlackJack = false
        dealer.hasAce = false
        dealer.valueOfCards = 0
        dealer.hitCounter = -1
        dealer.xValueForImage = -40
        dealer.handCards.removeAll()
        for image in dealer.cardImages{
            image.image = nil
        }
        dealer.cardImages.removeAll()
        //Dealing first card to dealer
        dealer.receiveACard(cardToReceive: cardDeck.deckOfCards.removeFirst())
        //Creating first image
        dealer.cardImages.append(createImage(xLocation: dealer.xValueForImage, yLocation: dealer.yValueForImage, imageToAdd: dealer.handCards[dealer.hitCounter].image))
        //Dealing second card to dealer
        dealer.receiveACard(cardToReceive: cardDeck.deckOfCards.removeFirst())
        //Creating second image
        dealer.cardImages.append(createImage(xLocation: dealer.xValueForImage, yLocation: dealer.yValueForImage, imageToAdd: UIImage(named: "gray_back")!))
        
        //Resetting Results label
        resultLabel.text = ""
        
        //Displaying Value of Hands
        if player.softHand && player.hasAce{
            playerCardValue.text = "Soft \(player.valueOfCards)"
            
        } else {
            playerCardValue.text = "\(player.valueOfCards)"
        }
        if dealer.handCards[0].name == "A"{
            dealerCardValue.text = "Soft 11"
        } else {
            dealerCardValue.text = "\(dealer.handCards[0].value)"
        }
        
        
        showBlackJack()
    }
    
    
    func showBlackJack(){
        if player.hasBlackJack {
            resultLabel.text = "Player has Blackjack"
            buttonsUnhide()
        } else if dealer.hasBlackJack && dealer.handCards[0].name == "A" {
            //Show hidden Card
            dealer.cardImages[dealer.hitCounter].image = dealer.handCards[dealer.hitCounter].image
            resultLabel.text = "Dealer has Blackjack"
            dealerCardValue.text = "\(dealer.valueOfCards)"
            buttonsUnhide()
        } else if dealer.hasBlackJack && dealer.handCards[0].name == "A" && player.hasBlackJack{
            resultLabel.text = "Draw on Blackjack"
            buttonsUnhide()
        }
    }
    
    func dealerPullCards(){
        buttonsUnhide()
        //Dealer's Turn
        cardDeck.checkForDeckEmpty()
        dealer.cardImages[dealer.hitCounter].image = dealer.handCards[dealer.hitCounter].image
        dealerCardValue.text = "\(dealer.valueOfCards)"
        
        while dealer.valueOfCards < 17 {
            dealer.receiveACard(cardToReceive: cardDeck.deckOfCards.removeFirst())
            dealerCardValue.text = "\(dealer.valueOfCards)"
            
            dealer.cardImages.append(createImage(xLocation: dealer.xValueForImage, yLocation: dealer.yValueForImage, imageToAdd: dealer.handCards[dealer.hitCounter].image))
            
            if dealer.isBust {
                resultLabel.text = "Dealer bust with: \(dealer.valueOfCards)"
                buttonsUnhide()
            }
        }
    }
    func playerPullACard(){
        //Player's Turn
        cardDeck.checkForDeckEmpty()
        player.receiveACard(cardToReceive: cardDeck.deckOfCards.removeFirst())
        if player.softHand && player.hasAce{
            playerCardValue.text = "Soft \(player.valueOfCards)"
            
        } else {
            playerCardValue.text = "\(player.valueOfCards)"
        }
        
        //Create Images
        player.cardImages.append(createImage(xLocation: player.xValueForImage, yLocation: player.yValueForImage, imageToAdd: player.handCards[player.hitCounter].image))
        //Check for Bust
        if player.isBust {
            resultLabel.text = "Player Bust"
            dealerPullCards()
        }
    }
    
    func createImage(xLocation: Int, yLocation: Int, imageToAdd: UIImage) -> UIImageView{
        let imgView = UIImageView()
        imgView.frame = CGRect(x: xLocation, y: yLocation, width: 100, height: 150)
        imgView.image = imageToAdd//Assign image to ImageView
        view.addSubview(imgView)//Add image to our view
        return imgView
    }
}

