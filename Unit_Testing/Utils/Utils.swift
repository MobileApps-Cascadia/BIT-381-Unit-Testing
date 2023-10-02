//
//  Utils.swift
//  Unit_Testing
//
//  Created by Mike Panitz on 6/8/23.
//

import Foundation


func IsPrime( _ num : Int ) -> Bool {
    if num <= 0 {
        return false
    }
    if num == 1 {
        return true // by definition
    }
    
    for i in 2 ..< num {
        print( "i is: " + String(i) )
        if num % i == 0 {
            return false
        }
    }
    return true
}

func Factorial( _ num : Int) -> Int? {
    if num < 0 {
        return nil
    }
    if num == 0 {
        return 1
    }
    var result = 1
    var counter = 2
    while counter <= num {
        result = result * counter
        counter = counter + 1
    }
    return result
}
