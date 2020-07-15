//
//  main.swift
//  Tic-Tac-Toe
//
//  Created by Alexander Verner on 28.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation
//Create array for game field
var fieldArr = Array(repeating: Array(repeating: " ", count: 3), count:  3)
//Create bool variable for checking continue or closing the game
var gameOn: Bool = true
//Create bool variable for checking continue or closing the round
var roundOn: Bool = true
//Variable for rows storage
var row:Int = 0
//Variable for columns storage
var col:Int = 0
//Two variable for name of players storage
var firstPlayer: String? = nil
var secondPlayer: String? = nil
//Create to dictionary with english localization
let messagesEn = [
"Welcome to the game Tic Tac Toe. Good game!",
"What is the name of the first player?",
"What is the name of the second player?",
"is winner in this round!",
"Move player",
"You should write in the form of '0,1' where '0' is a row and '1' is a column",
"This cell is already occupied!",
"Do you want replay the game? Enter y for play again."
]
//Initial message
print("""
\(messagesEn[0])

  ******************
""")
//Ask of name first player
repeat{
print(messagesEn[1])
firstPlayer = readLine()
} while firstPlayer == ""
//Ask of name second player
repeat{
print(messagesEn[2])
secondPlayer = readLine()
} while secondPlayer == ""
repeat {
//Show the starting game field
Draw()
repeat {
//    Set X on game field
    FirstPlayerX()
//    Show updated field
    Draw()
//    Set O on game field
    SecondPlayerO()
//    Show updated field again
    Draw()
} while gameOn == true
print(messagesEn[7])
    if readLine() == "y" {
//        Cleaned game field
    fieldArr = Array(repeating: Array(repeating: " ", count: 3), count:  3)
    gameOn = true
} else {
        roundOn = false
}
} while roundOn == true
