//
//  Drow.swift
//  Tic-Tac-Toe
//
//  Created by Alexander Verner on 28.06.2020.
//  Copyright © 2020 AlexanderVerner. All rights reserved.
//

import Foundation

func Draw() {
    var row0 = " \(fieldArr[0][0]) | \(fieldArr[0][1]) | \(fieldArr[0][2]) "
    var row1 = " \(fieldArr[1][0]) | \(fieldArr[1][1]) | \(fieldArr[1][2]) "
    var row2 = " \(fieldArr[2][0]) | \(fieldArr[2][1]) | \(fieldArr[2][2]) "
    let separators = "---+---+---"
    print("""
            \(row0)
            \(separators)
            \(row1)
            \(separators)
            \(row2)
          """)
    print("****************")
}
