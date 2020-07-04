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
        print("\(messagesEn[4]) \(secondPlayer!). \(messagesEn[5])")
        let coordinates = readLine()?.split {$0 == ","}.map (String.init)
        row = Int(coordinates![0])!
        col = Int(coordinates![1])!
        if fieldArr[row][col] == " " && fieldArr[row][col] != "O" && fieldArr[row][col] != "X" {
        fieldArr[row][col] = "O"
        isWinner()
        } else {
            print(messagesEn[6])
            }
        } while fieldArr[row][col] == " "
    }
}
