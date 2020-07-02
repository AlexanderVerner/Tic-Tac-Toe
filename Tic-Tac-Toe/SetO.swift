//
//  SetO.swift
//  Tic-Tac-Toe
//
//  Created by Alexander Verner on 30.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation
 
func SecondPlayerO () {
    if gameOn == true {
        repeat {
        print("Move player \(secondPlayer!). You should write in the form of '0,1' where '0' is a row and '1' is a column")
        let coordinates = readLine()?.split {$0 == ","}.map (String.init)
        row = Int(coordinates![0])!
        col = Int(coordinates![1])!
        if fieldArr[row][col] == " " && fieldArr[row][col] != "O" && fieldArr[row][col] != "X" {
        fieldArr[row][col] = "O"
        isWinner()
        } else {
            print("This cell is already occupied!")
            }
        } while fieldArr[row][col] == " "
    }
}
