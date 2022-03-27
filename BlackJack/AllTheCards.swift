//
//  DeckOfCards.swift
//  BlackJack
//
//  Created by Elisei Bobocea on 26/03/2022.
//

import UIKit

//Card 2
let twoC = Card(name: "TWO", value: 2, suit: .clubs, image: UIImage(named: "2C")!)
let twoD = Card(name: "TWO", value: 2, suit: .diamonds, image: UIImage(named: "2D")!)
let twoH = Card(name: "TWO", value: 2, suit: .hearts, image: UIImage(named: "2H")!)
let twoS = Card(name: "TWO", value: 2, suit: .spades, image: UIImage(named: "2S")!)
//Card 3
let threeC = Card(name: "THREE", value: 3, suit: .clubs, image: UIImage(named: "3C")!)
let threeD = Card(name: "THREE", value: 3, suit: .diamonds, image: UIImage(named: "3D")!)
let threeH = Card(name: "THREE", value: 3, suit: .hearts, image: UIImage(named: "3H")!)
let threeS = Card(name: "THREE", value: 3, suit: .spades, image: UIImage(named: "3S")!)
//Card 4
let fourC = Card(name: "FOUR", value: 4, suit: .clubs, image: UIImage(named: "4C")!)
let fourD = Card(name: "FOUR", value: 4, suit: .diamonds, image: UIImage(named: "4D")!)
let fourH = Card(name: "FOUR", value: 4, suit: .hearts, image: UIImage(named: "4H")!)
let fourS = Card(name: "FOUR", value: 4, suit: .spades, image: UIImage(named: "4S")!)
//Card 5
let fiveC = Card(name: "FIVE", value: 5, suit: .clubs, image: UIImage(named: "5C")!)
let fiveD = Card(name: "FIVE", value: 5, suit: .diamonds, image: UIImage(named: "5D")!)
let fiveH = Card(name: "FIVE", value: 5, suit: .hearts, image: UIImage(named: "5H")!)
let fiveS = Card(name: "FIVE", value: 5, suit: .spades, image: UIImage(named: "5S")!)
//Card 6
let sixC = Card(name: "SIX", value: 6, suit: .clubs, image: UIImage(named: "6C")!)
let sixD = Card(name: "SIX", value: 6, suit: .diamonds, image: UIImage(named: "6D")!)
let sixH = Card(name: "SIX", value: 6, suit: .hearts, image: UIImage(named: "6H")!)
let sixS = Card(name: "SIX", value: 6, suit: .spades, image: UIImage(named: "6S")!)
//Card 7
let sevenC = Card(name: "SEVEN", value: 7, suit: .clubs, image: UIImage(named: "7C")!)
let sevenD = Card(name: "SEVEN", value: 7, suit: .diamonds, image: UIImage(named: "7D")!)
let sevenH = Card(name: "SEVEN", value: 7, suit: .hearts, image: UIImage(named: "7H")!)
let sevenS = Card(name: "SEVEN", value: 7, suit: .spades, image: UIImage(named: "7S")!)
//Card 8
let eightC = Card(name: "EIGHT", value: 8, suit: .clubs, image: UIImage(named: "8C")!)
let eightD = Card(name: "EIGHT", value: 8, suit: .diamonds, image: UIImage(named: "8D")!)
let eightH = Card(name: "EIGHT", value: 8, suit: .hearts, image: UIImage(named: "8H")!)
let eightS = Card(name: "EIGHT", value: 8, suit: .spades, image: UIImage(named: "8S")!)
//Card 9
let nineC = Card(name: "NINE", value: 9, suit: .clubs, image: UIImage(named: "9C")!)
let nineD = Card(name: "NINE", value: 9, suit: .diamonds, image: UIImage(named: "9D")!)
let nineH = Card(name: "NINE", value: 9, suit: .hearts, image: UIImage(named: "9H")!)
let nineS = Card(name: "NINE", value: 9, suit: .spades, image: UIImage(named: "9S")!)
//Card 10
let tenC = Card(name: "TEN", value: 10, suit: .clubs, image: UIImage(named: "10C")!)
let tenD = Card(name: "TEN", value: 10, suit: .diamonds, image: UIImage(named: "10D")!)
let tenH = Card(name: "TEN", value: 10, suit: .hearts, image: UIImage(named: "10H")!)
let tenS = Card(name: "TEN", value: 10, suit: .spades, image: UIImage(named: "10S")!)
//Card Jack
let jackC = Card(name: "JACK", value: 10, suit: .clubs, image: UIImage(named: "JC")!)
let jackD = Card(name: "JACK", value: 10, suit: .diamonds, image: UIImage(named: "JD")!)
let jackH = Card(name: "JACK", value: 10, suit: .hearts, image: UIImage(named: "JH")!)
let jackS = Card(name: "JACK", value: 10, suit: .spades, image: UIImage(named: "JS")!)
//Card Queen
let queenC = Card(name: "QUEEN", value: 10, suit: .clubs, image: UIImage(named: "QC")!)
let queenD = Card(name: "QUEEN", value: 10, suit: .diamonds, image: UIImage(named: "QD")!)
let queenH = Card(name: "QUEEN", value: 10, suit: .hearts, image: UIImage(named: "QH")!)
let queenS = Card(name: "QUEEN", value: 10, suit: .spades, image: UIImage(named: "QS")!)
//Card King
let kingC = Card(name: "KING", value: 10, suit: .clubs, image: UIImage(named: "KC")!)
let kingD = Card(name: "KING", value: 10, suit: .diamonds, image: UIImage(named: "KD")!)
let kingH = Card(name: "KING", value: 10, suit: .hearts, image: UIImage(named: "KH")!)
let kingS = Card(name: "KING", value: 10, suit: .spades, image: UIImage(named: "KS")!)
//Card Ace
let aceC = Card(name: "ACE", value: 11, suit: .clubs, image: UIImage(named: "AC")!)
let aceD = Card(name: "ACE", value: 11, suit: .diamonds, image: UIImage(named: "AD")!)
let aceH = Card(name: "ACE", value: 11, suit: .hearts, image: UIImage(named: "AH")!)
let aceS = Card(name: "ACE", value: 11, suit: .spades, image: UIImage(named: "AS")!)

//Card 2
let twoC2 = Card(name: "TWO", value: 2, suit: .clubs, image: UIImage(named: "2C")!)
let twoD2 = Card(name: "TWO", value: 2, suit: .diamonds, image: UIImage(named: "2D")!)
let twoH2 = Card(name: "TWO", value: 2, suit: .hearts, image: UIImage(named: "2H")!)
let twoS2 = Card(name: "TWO", value: 2, suit: .spades, image: UIImage(named: "2S")!)
//Card 3
let threeC2 = Card(name: "THREE", value: 3, suit: .clubs, image: UIImage(named: "3C")!)
let threeD2 = Card(name: "THREE", value: 3, suit: .diamonds, image: UIImage(named: "3D")!)
let threeH2 = Card(name: "THREE", value: 3, suit: .hearts, image: UIImage(named: "3H")!)
let threeS2 = Card(name: "THREE", value: 3, suit: .spades, image: UIImage(named: "3S")!)
//Card 4
let fourC2 = Card(name: "FOUR", value: 4, suit: .clubs, image: UIImage(named: "4C")!)
let fourD2 = Card(name: "FOUR", value: 4, suit: .diamonds, image: UIImage(named: "4D")!)
let fourH2 = Card(name: "FOUR", value: 4, suit: .hearts, image: UIImage(named: "4H")!)
let fourS2 = Card(name: "FOUR", value: 4, suit: .spades, image: UIImage(named: "4S")!)
//Card 5
let fiveC2 = Card(name: "FIVE", value: 5, suit: .clubs, image: UIImage(named: "5C")!)
let fiveD2 = Card(name: "FIVE", value: 5, suit: .diamonds, image: UIImage(named: "5D")!)
let fiveH2 = Card(name: "FIVE", value: 5, suit: .hearts, image: UIImage(named: "5H")!)
let fiveS2 = Card(name: "FIVE", value: 5, suit: .spades, image: UIImage(named: "5S")!)
//Card 6
let sixC2 = Card(name: "SIX", value: 6, suit: .clubs, image: UIImage(named: "6C")!)
let sixD2 = Card(name: "SIX", value: 6, suit: .diamonds, image: UIImage(named: "6D")!)
let sixH2 = Card(name: "SIX", value: 6, suit: .hearts, image: UIImage(named: "6H")!)
let sixS2 = Card(name: "SIX", value: 6, suit: .spades, image: UIImage(named: "6S")!)
//Card 7
let sevenC2 = Card(name: "SEVEN", value: 7, suit: .clubs, image: UIImage(named: "7C")!)
let sevenD2 = Card(name: "SEVEN", value: 7, suit: .diamonds, image: UIImage(named: "7D")!)
let sevenH2 = Card(name: "SEVEN", value: 7, suit: .hearts, image: UIImage(named: "7H")!)
let sevenS2 = Card(name: "SEVEN", value: 7, suit: .spades, image: UIImage(named: "7S")!)
//Card 8
let eightC2 = Card(name: "EIGHT", value: 8, suit: .clubs, image: UIImage(named: "8C")!)
let eightD2 = Card(name: "EIGHT", value: 8, suit: .diamonds, image: UIImage(named: "8D")!)
let eightH2 = Card(name: "EIGHT", value: 8, suit: .hearts, image: UIImage(named: "8H")!)
let eightS2 = Card(name: "EIGHT", value: 8, suit: .spades, image: UIImage(named: "8S")!)
//Card 9
let nineC2 = Card(name: "NINE", value: 9, suit: .clubs, image: UIImage(named: "9C")!)
let nineD2 = Card(name: "NINE", value: 9, suit: .diamonds, image: UIImage(named: "9D")!)
let nineH2 = Card(name: "NINE", value: 9, suit: .hearts, image: UIImage(named: "9H")!)
let nineS2 = Card(name: "NINE", value: 9, suit: .spades, image: UIImage(named: "9S")!)
//Card 10
let tenC2 = Card(name: "TEN", value: 10, suit: .clubs, image: UIImage(named: "10C")!)
let tenD2 = Card(name: "TEN", value: 10, suit: .diamonds, image: UIImage(named: "10D")!)
let tenH2 = Card(name: "TEN", value: 10, suit: .hearts, image: UIImage(named: "10H")!)
let tenS2 = Card(name: "TEN", value: 10, suit: .spades, image: UIImage(named: "10S")!)
//Card Jack
let jackC2 = Card(name: "JACK", value: 10, suit: .clubs, image: UIImage(named: "JC")!)
let jackD2 = Card(name: "JACK", value: 10, suit: .diamonds, image: UIImage(named: "JD")!)
let jackH2 = Card(name: "JACK", value: 10, suit: .hearts, image: UIImage(named: "JH")!)
let jackS2 = Card(name: "JACK", value: 10, suit: .spades, image: UIImage(named: "JS")!)
//Card Queen
let queenC2 = Card(name: "QUEEN", value: 10, suit: .clubs, image: UIImage(named: "QC")!)
let queenD2 = Card(name: "QUEEN", value: 10, suit: .diamonds, image: UIImage(named: "QD")!)
let queenH2 = Card(name: "QUEEN", value: 10, suit: .hearts, image: UIImage(named: "QH")!)
let queenS2 = Card(name: "QUEEN", value: 10, suit: .spades, image: UIImage(named: "QS")!)
//Card King
let kingC2 = Card(name: "KING", value: 10, suit: .clubs, image: UIImage(named: "KC")!)
let kingD2 = Card(name: "KING", value: 10, suit: .diamonds, image: UIImage(named: "KD")!)
let kingH2 = Card(name: "KING", value: 10, suit: .hearts, image: UIImage(named: "KH")!)
let kingS2 = Card(name: "KING", value: 10, suit: .spades, image: UIImage(named: "KS")!)
//Card Ace
let aceC2 = Card(name: "ACE", value: 11, suit: .clubs, image: UIImage(named: "AC")!)
let aceD2 = Card(name: "ACE", value: 11, suit: .diamonds, image: UIImage(named: "AD")!)
let aceH2 = Card(name: "ACE", value: 11, suit: .hearts, image: UIImage(named: "AH")!)
let aceS2 = Card(name: "ACE", value: 11, suit: .spades, image: UIImage(named: "AS")!)

//Card 2
let twoC3 = Card(name: "TWO", value: 2, suit: .clubs, image: UIImage(named: "2C")!)
let twoD3 = Card(name: "TWO", value: 2, suit: .diamonds, image: UIImage(named: "2D")!)
let twoH3 = Card(name: "TWO", value: 2, suit: .hearts, image: UIImage(named: "2H")!)
let twoS3 = Card(name: "TWO", value: 2, suit: .spades, image: UIImage(named: "2S")!)
//Card 3
let threeC3 = Card(name: "THREE", value: 3, suit: .clubs, image: UIImage(named: "3C")!)
let threeD3 = Card(name: "THREE", value: 3, suit: .diamonds, image: UIImage(named: "3D")!)
let threeH3 = Card(name: "THREE", value: 3, suit: .hearts, image: UIImage(named: "3H")!)
let threeS3 = Card(name: "THREE", value: 3, suit: .spades, image: UIImage(named: "3S")!)
//Card 4
let fourC3 = Card(name: "FOUR", value: 4, suit: .clubs, image: UIImage(named: "4C")!)
let fourD3 = Card(name: "FOUR", value: 4, suit: .diamonds, image: UIImage(named: "4D")!)
let fourH3 = Card(name: "FOUR", value: 4, suit: .hearts, image: UIImage(named: "4H")!)
let fourS3 = Card(name: "FOUR", value: 4, suit: .spades, image: UIImage(named: "4S")!)
//Card 5
let fiveC3 = Card(name: "FIVE", value: 5, suit: .clubs, image: UIImage(named: "5C")!)
let fiveD3 = Card(name: "FIVE", value: 5, suit: .diamonds, image: UIImage(named: "5D")!)
let fiveH3 = Card(name: "FIVE", value: 5, suit: .hearts, image: UIImage(named: "5H")!)
let fiveS3 = Card(name: "FIVE", value: 5, suit: .spades, image: UIImage(named: "5S")!)
//Card 6
let sixC3 = Card(name: "SIX", value: 6, suit: .clubs, image: UIImage(named: "6C")!)
let sixD3 = Card(name: "SIX", value: 6, suit: .diamonds, image: UIImage(named: "6D")!)
let sixH3 = Card(name: "SIX", value: 6, suit: .hearts, image: UIImage(named: "6H")!)
let sixS3 = Card(name: "SIX", value: 6, suit: .spades, image: UIImage(named: "6S")!)
//Card 7
let sevenC3 = Card(name: "SEVEN", value: 7, suit: .clubs, image: UIImage(named: "7C")!)
let sevenD3 = Card(name: "SEVEN", value: 7, suit: .diamonds, image: UIImage(named: "7D")!)
let sevenH3 = Card(name: "SEVEN", value: 7, suit: .hearts, image: UIImage(named: "7H")!)
let sevenS3 = Card(name: "SEVEN", value: 7, suit: .spades, image: UIImage(named: "7S")!)
//Card 8
let eightC3 = Card(name: "EIGHT", value: 8, suit: .clubs, image: UIImage(named: "8C")!)
let eightD3 = Card(name: "EIGHT", value: 8, suit: .diamonds, image: UIImage(named: "8D")!)
let eightH3 = Card(name: "EIGHT", value: 8, suit: .hearts, image: UIImage(named: "8H")!)
let eightS3 = Card(name: "EIGHT", value: 8, suit: .spades, image: UIImage(named: "8S")!)
//Card 9
let nineC3 = Card(name: "NINE", value: 9, suit: .clubs, image: UIImage(named: "9C")!)
let nineD3 = Card(name: "NINE", value: 9, suit: .diamonds, image: UIImage(named: "9D")!)
let nineH3 = Card(name: "NINE", value: 9, suit: .hearts, image: UIImage(named: "9H")!)
let nineS3 = Card(name: "NINE", value: 9, suit: .spades, image: UIImage(named: "9S")!)
//Card 10
let tenC3 = Card(name: "TEN", value: 10, suit: .clubs, image: UIImage(named: "10C")!)
let tenD3 = Card(name: "TEN", value: 10, suit: .diamonds, image: UIImage(named: "10D")!)
let tenH3 = Card(name: "TEN", value: 10, suit: .hearts, image: UIImage(named: "10H")!)
let tenS3 = Card(name: "TEN", value: 10, suit: .spades, image: UIImage(named: "10S")!)
//Card Jack
let jackC3 = Card(name: "JACK", value: 10, suit: .clubs, image: UIImage(named: "JC")!)
let jackD3 = Card(name: "JACK", value: 10, suit: .diamonds, image: UIImage(named: "JD")!)
let jackH3 = Card(name: "JACK", value: 10, suit: .hearts, image: UIImage(named: "JH")!)
let jackS3 = Card(name: "JACK", value: 10, suit: .spades, image: UIImage(named: "JS")!)
//Card Queen
let queenC3 = Card(name: "QUEEN", value: 10, suit: .clubs, image: UIImage(named: "QC")!)
let queenD3 = Card(name: "QUEEN", value: 10, suit: .diamonds, image: UIImage(named: "QD")!)
let queenH3 = Card(name: "QUEEN", value: 10, suit: .hearts, image: UIImage(named: "QH")!)
let queenS3 = Card(name: "QUEEN", value: 10, suit: .spades, image: UIImage(named: "QS")!)
//Card King
let kingC3 = Card(name: "KING", value: 10, suit: .clubs, image: UIImage(named: "KC")!)
let kingD3 = Card(name: "KING", value: 10, suit: .diamonds, image: UIImage(named: "KD")!)
let kingH3 = Card(name: "KING", value: 10, suit: .hearts, image: UIImage(named: "KH")!)
let kingS3 = Card(name: "KING", value: 10, suit: .spades, image: UIImage(named: "KS")!)
//Card Ace
let aceC3 = Card(name: "ACE", value: 11, suit: .clubs, image: UIImage(named: "AC")!)
let aceD3 = Card(name: "ACE", value: 11, suit: .diamonds, image: UIImage(named: "AD")!)
let aceH3 = Card(name: "ACE", value: 11, suit: .hearts, image: UIImage(named: "AH")!)
let aceS3 = Card(name: "ACE", value: 11, suit: .spades, image: UIImage(named: "AS")!)
//Card 2
let twoC4 = Card(name: "TWO", value: 2, suit: .clubs, image: UIImage(named: "2C")!)
let twoD4 = Card(name: "TWO", value: 2, suit: .diamonds, image: UIImage(named: "2D")!)
let twoH4 = Card(name: "TWO", value: 2, suit: .hearts, image: UIImage(named: "2H")!)
let twoS4 = Card(name: "TWO", value: 2, suit: .spades, image: UIImage(named: "2S")!)
//Card 3
let threeC4 = Card(name: "THREE", value: 3, suit: .clubs, image: UIImage(named: "3C")!)
let threeD4 = Card(name: "THREE", value: 3, suit: .diamonds, image: UIImage(named: "3D")!)
let threeH4 = Card(name: "THREE", value: 3, suit: .hearts, image: UIImage(named: "3H")!)
let threeS4 = Card(name: "THREE", value: 3, suit: .spades, image: UIImage(named: "3S")!)
//Card 4
let fourC4 = Card(name: "FOUR", value: 4, suit: .clubs, image: UIImage(named: "4C")!)
let fourD4 = Card(name: "FOUR", value: 4, suit: .diamonds, image: UIImage(named: "4D")!)
let fourH4 = Card(name: "FOUR", value: 4, suit: .hearts, image: UIImage(named: "4H")!)
let fourS4 = Card(name: "FOUR", value: 4, suit: .spades, image: UIImage(named: "4S")!)
//Card 5
let fiveC4 = Card(name: "FIVE", value: 5, suit: .clubs, image: UIImage(named: "5C")!)
let fiveD4 = Card(name: "FIVE", value: 5, suit: .diamonds, image: UIImage(named: "5D")!)
let fiveH4 = Card(name: "FIVE", value: 5, suit: .hearts, image: UIImage(named: "5H")!)
let fiveS4 = Card(name: "FIVE", value: 5, suit: .spades, image: UIImage(named: "5S")!)
//Card 6
let sixC4 = Card(name: "SIX", value: 6, suit: .clubs, image: UIImage(named: "6C")!)
let sixD4 = Card(name: "SIX", value: 6, suit: .diamonds, image: UIImage(named: "6D")!)
let sixH4 = Card(name: "SIX", value: 6, suit: .hearts, image: UIImage(named: "6H")!)
let sixS4 = Card(name: "SIX", value: 6, suit: .spades, image: UIImage(named: "6S")!)
//Card 7
let sevenC4 = Card(name: "SEVEN", value: 7, suit: .clubs, image: UIImage(named: "7C")!)
let sevenD4 = Card(name: "SEVEN", value: 7, suit: .diamonds, image: UIImage(named: "7D")!)
let sevenH4 = Card(name: "SEVEN", value: 7, suit: .hearts, image: UIImage(named: "7H")!)
let sevenS4 = Card(name: "SEVEN", value: 7, suit: .spades, image: UIImage(named: "7S")!)
//Card 8
let eightC4 = Card(name: "EIGHT", value: 8, suit: .clubs, image: UIImage(named: "8C")!)
let eightD4 = Card(name: "EIGHT", value: 8, suit: .diamonds, image: UIImage(named: "8D")!)
let eightH4 = Card(name: "EIGHT", value: 8, suit: .hearts, image: UIImage(named: "8H")!)
let eightS4 = Card(name: "EIGHT", value: 8, suit: .spades, image: UIImage(named: "8S")!)
//Card 9
let nineC4 = Card(name: "NINE", value: 9, suit: .clubs, image: UIImage(named: "9C")!)
let nineD4 = Card(name: "NINE", value: 9, suit: .diamonds, image: UIImage(named: "9D")!)
let nineH4 = Card(name: "NINE", value: 9, suit: .hearts, image: UIImage(named: "9H")!)
let nineS4 = Card(name: "NINE", value: 9, suit: .spades, image: UIImage(named: "9S")!)
//Card 10
let tenC4 = Card(name: "TEN", value: 10, suit: .clubs, image: UIImage(named: "10C")!)
let tenD4 = Card(name: "TEN", value: 10, suit: .diamonds, image: UIImage(named: "10D")!)
let tenH4 = Card(name: "TEN", value: 10, suit: .hearts, image: UIImage(named: "10H")!)
let tenS4 = Card(name: "TEN", value: 10, suit: .spades, image: UIImage(named: "10S")!)
//Card Jack
let jackC4 = Card(name: "JACK", value: 10, suit: .clubs, image: UIImage(named: "JC")!)
let jackD4 = Card(name: "JACK", value: 10, suit: .diamonds, image: UIImage(named: "JD")!)
let jackH4 = Card(name: "JACK", value: 10, suit: .hearts, image: UIImage(named: "JH")!)
let jackS4 = Card(name: "JACK", value: 10, suit: .spades, image: UIImage(named: "JS")!)
//Card Queen
let queenC4 = Card(name: "QUEEN", value: 10, suit: .clubs, image: UIImage(named: "QC")!)
let queenD4 = Card(name: "QUEEN", value: 10, suit: .diamonds, image: UIImage(named: "QD")!)
let queenH4 = Card(name: "QUEEN", value: 10, suit: .hearts, image: UIImage(named: "QH")!)
let queenS4 = Card(name: "QUEEN", value: 10, suit: .spades, image: UIImage(named: "QS")!)
//Card King
let kingC4 = Card(name: "KING", value: 10, suit: .clubs, image: UIImage(named: "KC")!)
let kingD4 = Card(name: "KING", value: 10, suit: .diamonds, image: UIImage(named: "KD")!)
let kingH4 = Card(name: "KING", value: 10, suit: .hearts, image: UIImage(named: "KH")!)
let kingS4 = Card(name: "KING", value: 10, suit: .spades, image: UIImage(named: "KS")!)
//Card Ace
let aceC4 = Card(name: "ACE", value: 11, suit: .clubs, image: UIImage(named: "AC")!)
let aceD4 = Card(name: "ACE", value: 11, suit: .diamonds, image: UIImage(named: "AD")!)
let aceH4 = Card(name: "ACE", value: 11, suit: .hearts, image: UIImage(named: "AH")!)
let aceS4 = Card(name: "ACE", value: 11, suit: .spades, image: UIImage(named: "AS")!)
