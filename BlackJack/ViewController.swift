//
//  ViewController.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 26/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var deckOfCards: [Card] = []
    
    var playerBust = false
    var dealerBust = false
    
    var playerBlackJack = false
    var dealerBlackJack = false
    
    var playerHasAce = false
    var dealerHasAce = false

    var valueOfPlayerCards = 0
    var valueOfDealerCards = 0
    
    var playerHitCounter = 0
    var dealerHitCounter = 0
    
    var playerHand: [Card] = []
    var dealerHand: [Card] = []
    
    var playerImages: [UIImageView] = []
    var dealerImages: [UIImageView] = []
    
    
    @IBOutlet weak var dealerCardOneImage: UIImageView!
    @IBOutlet weak var dealerCardTwoImage: UIImageView!
    @IBOutlet weak var dealerCardThreeImage: UIImageView!
    @IBOutlet weak var dealerCardFourImage: UIImageView!
    @IBOutlet weak var dealerCardFiveImage: UIImageView!
    @IBOutlet weak var dealerCardSixImage: UIImageView!
    @IBOutlet weak var dealerCardSevenImage: UIImageView!

    
    @IBOutlet weak var playerCardOneImage: UIImageView!
    @IBOutlet weak var playerCardTwoImage: UIImageView!
    @IBOutlet weak var playerCardThreeImage: UIImageView!
    @IBOutlet weak var playerCardFourImage: UIImageView!
    @IBOutlet weak var playerCardFiveImage: UIImageView!
    @IBOutlet weak var playerCardSixImage: UIImageView!
    @IBOutlet weak var playerCardSevenImage: UIImageView!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //Adding two
        deckOfCards.append(twoC)
        deckOfCards.append(twoD)
        deckOfCards.append(twoH)
        deckOfCards.append(twoS)
        //Adding three
        deckOfCards.append(threeC)
        deckOfCards.append(threeD)
        deckOfCards.append(threeH)
        deckOfCards.append(threeS)
        //Adding four
        deckOfCards.append(fourC)
        deckOfCards.append(fourD)
        deckOfCards.append(fourH)
        deckOfCards.append(fourS)
        //Adding five
        deckOfCards.append(fiveC)
        deckOfCards.append(fiveD)
        deckOfCards.append(fiveH)
        deckOfCards.append(fiveS)
        //Adding six
        deckOfCards.append(sixC)
        deckOfCards.append(sixD)
        deckOfCards.append(sixH)
        deckOfCards.append(sixS)
        //Adding seven
        deckOfCards.append(sevenC)
        deckOfCards.append(sevenD)
        deckOfCards.append(sevenH)
        deckOfCards.append(sevenS)
        //Adding eight
        deckOfCards.append(eightC)
        deckOfCards.append(eightD)
        deckOfCards.append(eightH)
        deckOfCards.append(eightS)
        //Adding nine
        deckOfCards.append(nineC)
        deckOfCards.append(nineD)
        deckOfCards.append(nineH)
        deckOfCards.append(nineS)
        //Adding ten
        deckOfCards.append(tenC)
        deckOfCards.append(tenD)
        deckOfCards.append(tenH)
        deckOfCards.append(tenS)
        //Adding jack
        deckOfCards.append(jackC)
        deckOfCards.append(jackD)
        deckOfCards.append(jackH)
        deckOfCards.append(jackS)
        //Adding queen
        deckOfCards.append(queenC)
        deckOfCards.append(queenD)
        deckOfCards.append(queenH)
        deckOfCards.append(queenS)
        //Adding king
        deckOfCards.append(kingC)
        deckOfCards.append(kingD)
        deckOfCards.append(kingH)
        deckOfCards.append(kingS)
        //Adding ace
        deckOfCards.append(aceC)
        deckOfCards.append(aceD)
        deckOfCards.append(aceH)
        deckOfCards.append(aceS)
        
        //Adding two
        deckOfCards.append(twoC2)
        deckOfCards.append(twoD2)
        deckOfCards.append(twoH2)
        deckOfCards.append(twoS2)
        //Adding three
        deckOfCards.append(threeC2)
        deckOfCards.append(threeD2)
        deckOfCards.append(threeH2)
        deckOfCards.append(threeS2)
        //Adding four
        deckOfCards.append(fourC2)
        deckOfCards.append(fourD2)
        deckOfCards.append(fourH2)
        deckOfCards.append(fourS2)
        //Adding five
        deckOfCards.append(fiveC2)
        deckOfCards.append(fiveD2)
        deckOfCards.append(fiveH2)
        deckOfCards.append(fiveS2)
        //Adding six
        deckOfCards.append(sixC2)
        deckOfCards.append(sixD2)
        deckOfCards.append(sixH2)
        deckOfCards.append(sixS2)
        //Adding seven
        deckOfCards.append(sevenC2)
        deckOfCards.append(sevenD2)
        deckOfCards.append(sevenH2)
        deckOfCards.append(sevenS2)
        //Adding eight
        deckOfCards.append(eightC2)
        deckOfCards.append(eightD2)
        deckOfCards.append(eightH2)
        deckOfCards.append(eightS2)
        //Adding nine
        deckOfCards.append(nineC2)
        deckOfCards.append(nineD2)
        deckOfCards.append(nineH2)
        deckOfCards.append(nineS2)
        //Adding ten
        deckOfCards.append(tenC2)
        deckOfCards.append(tenD2)
        deckOfCards.append(tenH2)
        deckOfCards.append(tenS2)
        //Adding jack
        deckOfCards.append(jackC2)
        deckOfCards.append(jackD2)
        deckOfCards.append(jackH2)
        deckOfCards.append(jackS2)
        //Adding queen
        deckOfCards.append(queenC2)
        deckOfCards.append(queenD2)
        deckOfCards.append(queenH2)
        deckOfCards.append(queenS2)
        //Adding king
        deckOfCards.append(kingC2)
        deckOfCards.append(kingD2)
        deckOfCards.append(kingH2)
        deckOfCards.append(kingS2)
        //Adding ace
        deckOfCards.append(aceC2)
        deckOfCards.append(aceD2)
        deckOfCards.append(aceH2)
        deckOfCards.append(aceS2)
        
        //Adding two
        deckOfCards.append(twoC3)
        deckOfCards.append(twoD3)
        deckOfCards.append(twoH3)
        deckOfCards.append(twoS3)
        //Adding three
        deckOfCards.append(threeC3)
        deckOfCards.append(threeD3)
        deckOfCards.append(threeH3)
        deckOfCards.append(threeS3)
        //Adding four
        deckOfCards.append(fourC3)
        deckOfCards.append(fourD3)
        deckOfCards.append(fourH3)
        deckOfCards.append(fourS3)
        //Adding five
        deckOfCards.append(fiveC3)
        deckOfCards.append(fiveD3)
        deckOfCards.append(fiveH3)
        deckOfCards.append(fiveS3)
        //Adding six
        deckOfCards.append(sixC3)
        deckOfCards.append(sixD3)
        deckOfCards.append(sixH3)
        deckOfCards.append(sixS3)
        //Adding seven
        deckOfCards.append(sevenC3)
        deckOfCards.append(sevenD3)
        deckOfCards.append(sevenH3)
        deckOfCards.append(sevenS3)
        //Adding eight
        deckOfCards.append(eightC3)
        deckOfCards.append(eightD3)
        deckOfCards.append(eightH3)
        deckOfCards.append(eightS3)
        //Adding nine
        deckOfCards.append(nineC3)
        deckOfCards.append(nineD3)
        deckOfCards.append(nineH3)
        deckOfCards.append(nineS3)
        //Adding ten
        deckOfCards.append(tenC3)
        deckOfCards.append(tenD3)
        deckOfCards.append(tenH3)
        deckOfCards.append(tenS3)
        //Adding jack
        deckOfCards.append(jackC3)
        deckOfCards.append(jackD3)
        deckOfCards.append(jackH3)
        deckOfCards.append(jackS3)
        //Adding queen
        deckOfCards.append(queenC3)
        deckOfCards.append(queenD3)
        deckOfCards.append(queenH3)
        deckOfCards.append(queenS3)
        //Adding king
        deckOfCards.append(kingC3)
        deckOfCards.append(kingD3)
        deckOfCards.append(kingH3)
        deckOfCards.append(kingS3)
        //Adding ace
        deckOfCards.append(aceC3)
        deckOfCards.append(aceD3)
        deckOfCards.append(aceH3)
        deckOfCards.append(aceS3)
        
        //Adding two
        deckOfCards.append(twoC4)
        deckOfCards.append(twoD4)
        deckOfCards.append(twoH4)
        deckOfCards.append(twoS4)
        //Adding three
        deckOfCards.append(threeC4)
        deckOfCards.append(threeD4)
        deckOfCards.append(threeH4)
        deckOfCards.append(threeS4)
        //Adding four
        deckOfCards.append(fourC4)
        deckOfCards.append(fourD4)
        deckOfCards.append(fourH4)
        deckOfCards.append(fourS4)
        //Adding five
        deckOfCards.append(fiveC4)
        deckOfCards.append(fiveD4)
        deckOfCards.append(fiveH4)
        deckOfCards.append(fiveS4)
        //Adding six
        deckOfCards.append(sixC4)
        deckOfCards.append(sixD4)
        deckOfCards.append(sixH4)
        deckOfCards.append(sixS4)
        //Adding seven
        deckOfCards.append(sevenC4)
        deckOfCards.append(sevenD4)
        deckOfCards.append(sevenH4)
        deckOfCards.append(sevenS4)
        //Adding eight
        deckOfCards.append(eightC4)
        deckOfCards.append(eightD4)
        deckOfCards.append(eightH4)
        deckOfCards.append(eightS4)
        //Adding nine
        deckOfCards.append(nineC4)
        deckOfCards.append(nineD4)
        deckOfCards.append(nineH4)
        deckOfCards.append(nineS4)
        //Adding ten
        deckOfCards.append(tenC4)
        deckOfCards.append(tenD4)
        deckOfCards.append(tenH4)
        deckOfCards.append(tenS4)
        //Adding jack
        deckOfCards.append(jackC4)
        deckOfCards.append(jackD4)
        deckOfCards.append(jackH4)
        deckOfCards.append(jackS4)
        //Adding queen
        deckOfCards.append(queenC4)
        deckOfCards.append(queenD4)
        deckOfCards.append(queenH4)
        deckOfCards.append(queenS4)
        //Adding king
        deckOfCards.append(kingC4)
        deckOfCards.append(kingD4)
        deckOfCards.append(kingH4)
        deckOfCards.append(kingS4)
        //Adding ace
        deckOfCards.append(aceC4)
        deckOfCards.append(aceD4)
        deckOfCards.append(aceH4)
        deckOfCards.append(aceS4)
        
        deckOfCards.shuffle()
        
        playerImages.append(playerCardOneImage)
        playerImages.append(playerCardTwoImage)
        playerImages.append(playerCardThreeImage)
        playerImages.append(playerCardFourImage)
        playerImages.append(playerCardFiveImage)
        playerImages.append(playerCardSixImage)
        playerImages.append(playerCardSevenImage)
        
        dealerImages.append(dealerCardOneImage)
        dealerImages.append(dealerCardTwoImage)
        dealerImages.append(dealerCardThreeImage)
        dealerImages.append(dealerCardFourImage)
        dealerImages.append(dealerCardFiveImage)
        dealerImages.append(dealerCardSixImage)
        dealerImages.append(dealerCardSevenImage)
        
        resetGame()
        
    }

    @IBAction func hitButton(_ sender: UIButton) {
        playerPullACard()
        
        print("Value of cards for player: \(valueOfPlayerCards)")
        print("Player has Ace: \(playerHasAce)")
        
        
    }
    @IBAction func standButton(_ sender: UIButton) {
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
        
    }
    
    @IBAction func playAgain(_ sender: UIButton) {
        resetGame()
    }
    
    func resetGame(){
        
        print("---------------------")
        resultLabel.text = ""
        playerBust = false
        dealerBust = false
        
        playerBlackJack = false
        dealerBlackJack = false
        
        playerHasAce = false
        dealerHasAce = false

        valueOfPlayerCards = 0
        valueOfDealerCards = 0
        
        playerHitCounter = 0
        dealerHitCounter = 0
        
        playerHand.removeAll()
        dealerHand.removeAll()
        
        playerHand = [deckOfCards.removeFirst(), deckOfCards.removeFirst()]
        dealerHand = [deckOfCards.removeFirst(), deckOfCards.removeFirst()]
        
        valueOfPlayerCards = calculateHandValue(handDek: playerHand)
        valueOfDealerCards = calculateHandValue(handDek: dealerHand)
        
        for image in playerImages{
            image.image = nil
        }
        for image in dealerImages{
            image.image = nil
        }
        
        dealerImages[dealerHitCounter].image = dealerHand[dealerHitCounter].image
        dealerHitCounter += 1
        dealerImages[dealerHitCounter].image = UIImage(named: "gray_back")!
        
        playerImages[playerHitCounter].image = playerHand[playerHitCounter].image
        playerHitCounter += 1
        playerImages[playerHitCounter].image = playerHand[playerHitCounter].image
        
        playerHasAce = hasAce(hand: playerHand)
        dealerHasAce = hasAce(hand: dealerHand)
        
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
        } else if dealerBlackJack && dealerHand[0].name == "ACE" {
            dealerImages[dealerHitCounter].image = dealerHand[dealerHitCounter].image
            resultLabel.text = "Dealer has Blackjack"
        } else if dealerBlackJack && dealerHand[0].name == "ACE" && playerBlackJack{
            resultLabel.text = "Draw on Blackjack"
        }
    }
    
    func dealerPullCards(){
        dealerImages[dealerHitCounter].image = dealerHand[dealerHitCounter].image
        while valueOfDealerCards < 17 {
            dealerHand.append(deckOfCards.removeFirst())
            valueOfDealerCards = calculateHandValue(handDek: dealerHand)
            dealerHasAce = hasAce(hand: dealerHand)
            valueOfDealerCards -= calculateValueWithAce(valueOfHand: valueOfDealerCards, handHasAce: dealerHasAce)
            dealerHitCounter += 1
            dealerImages[dealerHitCounter].image = dealerHand[dealerHitCounter].image
            print("Value of cards for dealer: \(valueOfDealerCards)")
            print("Delear has Ace: \(dealerHasAce)")
        }
        if valueOfDealerCards > 21 {
            resultLabel.text = "Dealer bust with: \(valueOfDealerCards)"
            dealerBust =  true
            
        }
    }
    func playerPullACard(){
        playerHand.append(deckOfCards.removeFirst())
        valueOfPlayerCards = calculateHandValue(handDek: playerHand)
        playerHasAce = hasAce(hand: playerHand)
        valueOfPlayerCards -= calculateValueWithAce(valueOfHand: valueOfPlayerCards, handHasAce: playerHasAce)
        playerHitCounter += 1
        playerImages[playerHitCounter].image = playerHand[playerHitCounter].image
        if valueOfPlayerCards > 21 {
            resultLabel.text = "Player Bust"
            playerBust = true
            dealerPullCards()
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
            if card.name == "ACE"{
            return true
            }
        }
       return false
    }
    

}

