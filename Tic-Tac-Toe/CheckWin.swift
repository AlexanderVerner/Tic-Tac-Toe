//
//  CheckWin.swift
//  Tic-Tac-Toe
//
//  Created by Alexander Verner on 30.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation

func isWinner(){
//    Check rows
    if fieldArr[0][0] == "X" &&	 fieldArr[0][1] == "X" && fieldArr[0][2] == "X" ||
       fieldArr[1][0] == "X" &&  fieldArr[1][1] == "X" && fieldArr[0][2] == "X" ||
       fieldArr[2][0] == "X" &&  fieldArr[2][1] == "X" && fieldArr[2][2] == "X"
    {
//        Output the winner's name
        print("\(String(firstPlayer!)) \(messagesEn[3])")
//        Change are bool variable for close are game
        gameOn = false
    }
    if fieldArr[0][0] == "O" &&  fieldArr[0][1] == "O" && fieldArr[0][2] == "O" ||
       fieldArr[1][0] == "O" &&  fieldArr[1][1] == "O" && fieldArr[0][2] == "O" ||
       fieldArr[2][0] == "O" &&  fieldArr[2][1] == "O" && fieldArr[2][2] == "O"
    {
        print("\(String(secondPlayer!)) \(messagesEn[3])")
        gameOn = false
    }
//    Check columns
    if fieldArr[0][0] == "X" &&  fieldArr[1][0] == "X" && fieldArr[2][0] == "X" ||
       fieldArr[0][1] == "X" &&  fieldArr[1][1] == "X" && fieldArr[2][1] == "X" ||
       fieldArr[0][2] == "X" &&  fieldArr[1][2] == "X" && fieldArr[2][2] == "X"
    {
        print("\(String(firstPlayer!)) \(messagesEn[3])")
        gameOn = false
    }
    if fieldArr[0][0] == "O" &&  fieldArr[1][0] == "O" && fieldArr[2][0] == "O" ||
       fieldArr[0][1] == "O" &&  fieldArr[1][1] == "O" && fieldArr[2][1] == "O" ||
       fieldArr[0][2] == "O" &&  fieldArr[1][2] == "O" && fieldArr[2][2] == "O"
    {
        print("\(String(secondPlayer!)) \(messagesEn[3])")
        gameOn = false
    }
//    Check diagonals
    if fieldArr[0][0] == "X" &&  fieldArr[1][1] == "X" && fieldArr[2][2] == "X" ||
       fieldArr[0][2] == "X" &&  fieldArr[1][1] == "X" && fieldArr[2][0] == "X"
    {
        print("\(String(firstPlayer!)) \(messagesEn[3])")
        gameOn = false
    }
    if fieldArr[0][0] == "O" &&  fieldArr[1][1] == "O" && fieldArr[2][2] == "O" ||
       fieldArr[0][2] == "O" &&  fieldArr[1][1] == "O" && fieldArr[2][0] == "O"
    {
        print("\(String(secondPlayer!)) \(messagesEn[3])")
        gameOn = false
    }
}
