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
//            Output mini-help for player
        print("\(messagesEn[4]) \(secondPlayer!). \(messagesEn[5])")
//            Get coordinates from the Command-Line and return array consisted of two elements
        let coordinates = readLine()?.split {$0 == ","}.map (String.init)
//            Write in variables of getted values
        row = Int(coordinates![0])!
        col = Int(coordinates![1])!
        if fieldArr[row][col] == " " && fieldArr[row][col] != "O" && fieldArr[row][col] != "X" {
//            Replacing an array fields element
        fieldArr[row][col] = "O"
//            Checking an winner's
        isWinner()
        } else {
//            Displays a message about a filled cell
            print(messagesEn[6])
            }
        } while fieldArr[row][col] == " "
    }
}
