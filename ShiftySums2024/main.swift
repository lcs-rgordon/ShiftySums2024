//
//  main.swift
//  ShiftySums2024
//
//  Created by Russell Gordon on 2024-09-26.
//

import Foundation

func getInput(withPrompt prompt: String, minimum: Int?, maximum: Int?) -> Int {
    
    // Loop until a valid value is provided
    while true {
        
        // Prompt the user
        print(prompt)
        
        // Collect the input
        guard let givenInput = readLine() else {
            continue
        }
        
        // Convert to an integer
        guard let givenInteger = Int(givenInput) else {
            continue
        }
        
        // If a lowest value for the integer was specified...
        if let minimumValue = minimum {
            
            // ... then check that the given integer is greater than or equal to the lowest desired value.
            guard givenInteger >= minimumValue else {
                continue
            }
            
        }
        
        // If an highest possible value for the integer was specified...
        if let maximumValue = maximum {
            
            // ... then check that the given integer is less than or equal to the highest desired value.
            guard givenInteger <= maximumValue else {
                continue
            }
            
            
        }
        
        // If we've made it past all the checks, the input is an integer in the desired range of values, so, return it
        return givenInteger
        
    }
    
}

func shift(originalValue: Int, by places: Int) -> Int {
    
    // Start sum by making it whatever the original value was
    var sum = originalValue
    
    // Short circuit results if no shifting required
    if places == 0 {
        return sum
    }
    
    // Calculate new sum by adding powers of 10 of the original value
    for i in 1...places {
        
        var amountToAdd = originalValue
        
        for _ in 1...i {
            amountToAdd *= 10
        }
        
        sum += amountToAdd
    }
    
    return sum
    
}

// Quick tests
//print(shift(value: 12, by: 3)) // 13332
//print(shift(value: 12, by: 1)) // 132

// INTERACTIVE VERSION

// 1. Input
let n = getInput(withPrompt: "", minimum: 1, maximum: 10_000)
let k = getInput(withPrompt: "", minimum: 0, maximum: 5)

// 2. Process
let output = shift(originalValue: n, by: k)

// 3. Output
print(output)
