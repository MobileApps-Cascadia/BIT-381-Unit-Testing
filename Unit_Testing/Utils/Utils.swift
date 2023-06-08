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
    for i in 1...num {
        if num % i != 0 {
            return false
        }
    }
    return true
}
