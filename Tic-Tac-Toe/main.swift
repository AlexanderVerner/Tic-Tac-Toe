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
var coordinates = (row: 0, column: 0)
//Initial message
print("""
 Welcome to the game Tic Tac Toe. Good game!

""")
Draw()
//fieldArr[1][1] = "X"
//Draw()
//fieldArr[0][0] = "0"
//Draw()
