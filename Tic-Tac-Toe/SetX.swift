//
//  SetX.swift
//  Tic-Tac-Toe
//
//  Created by Alexander Verner on 29.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation

func FirstPlayerX() {
    print("Move player \(firstPlayer!)")
    var coordinates = readLine()?.split {$0 == ","}.map (String.init)
    row = Int(coordinates![0])!
    col = Int(coordinates![1])!
    fieldArr[row][col] = "X"
}
