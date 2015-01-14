// Playground - noun: a place where people can play

import Cocoa

// MARK: Setup game variables

var player1Lives = 3
var player2Lives = 3
var player1Name = "Player 1"
var player2Name = "Player 2"
var gameRound = 1


// MARK: Random Number generators

// Generate random number b/w 1 and 4 for 4 different math types

func generateRandomNumberUpTo4() -> Int {
    var randomNumber = Int(arc4random() % 4)+1
    return randomNumber
}

// Generate random number b/w 1 and 20 for prompts / print line statements

func generateRandomNumberUpTo20() -> Int {
    var randomNumber = Int(arc4random() % 20)+1
    return randomNumber
}

// Generate random answer b/w 1 and 40 for player answers

func generateRandomNumberUpTo40() -> Int {
    var randomNumber = Int(arc4random() % 40)+1
    return randomNumber
}


// MARK: Play Game

while player1Lives > 0 && player2Lives > 0 {
    println(" ")
    println("This is round: \(gameRound)")
    
    // Player 1 takes turn implemented with Better Math (i.e. random math function)

    var randomNumber1 = generateRandomNumberUpTo20()
    var randomNumber2 = generateRandomNumberUpTo20()
    var randomMathType1 = generateRandomNumberUpTo4()
    var player1Answer = generateRandomNumberUpTo20()
    
    switch randomMathType1 {
    case 1:
        println("\(player1Name): What is \(randomNumber1) plus \(randomNumber2)?")
        var correctAnswer = randomNumber1 + randomNumber2
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if player1Answer != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
    case 2:
        println("\(player1Name): What is \(randomNumber1) minus \(randomNumber2)?")
        var correctAnswer = randomNumber1 - randomNumber2
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if player1Answer != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
    case 3:
        println("\(player1Name): What is \(randomNumber1) times \(randomNumber2)?")
        var correctAnswer = randomNumber1 * randomNumber2
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if player1Answer != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
    case 4:
        println("\(player1Name): What is \(randomNumber1) divided by \(randomNumber2)?")
        var correctAnswer = Float(randomNumber1) / Float(randomNumber2)
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if Float(player1Answer) != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
    default:
        println("something is wrong")
    }
    
    if player1Lives == 0 {
        println("Player 2 Wins!!!")
        break
    }
    
    // Player 2 Takes Turn - Simple Math - Addition question only for Player 2
    
    var randomNumber3 = generateRandomNumberUpTo20()
    var randomNumber4 = generateRandomNumberUpTo20()
    
    println ("\(player2Name): What is \(randomNumber3) plus \(randomNumber4)?")
    var correctAnswerPlayer2 = randomNumber3 + randomNumber4
    var player2Answer = generateRandomNumberUpTo40()

    println("Player 2 said: \(player2Answer)")
    println("The correct answer is: \(correctAnswerPlayer2)")
    if player2Answer != correctAnswerPlayer2 {
        player2Lives -= 1
        println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
    }
    if player2Lives == 0 {
        println("Player 1 Wins!!!")
        break
    }
    
    gameRound += 1
}
