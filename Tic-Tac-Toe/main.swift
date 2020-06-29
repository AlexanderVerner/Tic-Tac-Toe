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
var gameOn: Bool = true
var row:Int = 0
var col:Int = 0
//var coordinates = Array(arrayLiteral: 0, 0)
//var coord1: String? = Array()
let messagesEn = [
"Welcome to the game Tic Tac Toe. Good game!",
"What is the name of the first player?",
"What is the name of the second player?"
]
//Initial message
print("""
\(messagesEn[0])

  ******************
""")
print(messagesEn[1])
var firstPlayer: String? = readLine()
//print(messagesEn[2])
//var secondPlayer: String? = readLine()
repeat {
    Draw()
    print("Move player \(firstPlayer!)")
    var coordinates = readLine()?.split {$0 == ","}.map (String.init)
    row = Int(coordinates![0])!
    col = Int(coordinates![1])!
    fieldArr[row][col] = "X"
    Draw()
    gameOn = false
} while gameOn == true
//fieldArr[1][1] = "X"
//Draw()
//fieldArr[0][0] = "0"
//Draw()
