// Playground - noun: a place where people can play

import Cocoa

// Playground - noun: a place where people can play

var player1Lives = 3
var player2Lives = 3

var player1Name = "Player 1"
var player2Name = "Player 2"



// Generate random number between 1 and 20

func generateRandomNumberUpTo4() -> Int {
    var randomNumber = Int(arc4random() % 4)+1
    return randomNumber
}

func generateRandomNumberUpTo20() -> Int {
    var randomNumber = Int(arc4random() % 20)+1
    return randomNumber
}

func generateRandomNumberUpTo40() -> Int {
    var randomNumber = Int(arc4random() % 40)+1
    return randomNumber
}

var randomNumber1 : Int?
var randomNumber2 : Int?
var randomNumber3 : Int?
var randomNumber4 : Int?
var randomMathType1 : Int?
var randomMathType2 : Int?

var player1Answer = generateRandomNumberUpTo40()
var player2Answer = generateRandomNumberUpTo40()

var gameRound = 1
var player1Turn = true

while player1Lives > 0 && player2Lives > 0 {
    println(" ")
    println("This is round: \(gameRound)")
    randomNumber1 = generateRandomNumberUpTo20()
    randomNumber2 = generateRandomNumberUpTo20()
    randomMathType1 = generateRandomNumberUpTo4()
    
    switch randomMathType1! {
    case 1:
        println("\(player1Name): What is \(randomNumber1!) plus \(randomNumber2!)?")
        var correctAnswer = randomNumber1! + randomNumber2!
        player1Answer
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if player1Answer != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
    case 2:
        println("\(player1Name): What is \(randomNumber1!) minus \(randomNumber2!)?")
        var correctAnswer = randomNumber1! - randomNumber2!
        player1Answer
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if player1Answer != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
    case 3:
        println("\(player1Name): What is \(randomNumber1!) times \(randomNumber2!)?")
        var correctAnswer = randomNumber1! * randomNumber2!
        player1Answer
        println("Player 1 said: \(player1Answer)")
        println("The correct answer is: \(correctAnswer)")
        if player1Answer != correctAnswer {
            player1Lives -= 1
            println("CURRENT SCORE: Player 1 lives: \(player1Lives) and Player 2 lives: \(player2Lives)")
        }
        
        
        
    case 4:
        println("\(player1Name): What is \(randomNumber1!) divided by \(randomNumber2!)?")
        var correctAnswer = Float(randomNumber1!) / Float(randomNumber2!)
        player1Answer
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
    
    randomNumber3 = generateRandomNumberUpTo20()
    randomNumber4 = generateRandomNumberUpTo20()
    randomMathType2 = generateRandomNumberUpTo4()
    
    println ("\(player2Name): What is \(randomNumber3!) plus \(randomNumber4!)?")
    var correctAnswerPlayer2 = randomNumber3! + randomNumber4!
    player1Answer
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