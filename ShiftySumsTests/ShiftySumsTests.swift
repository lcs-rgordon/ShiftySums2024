//
//  ShiftySumsTests.swift
//  ShiftySumsTests
//
//  Created by Russell Gordon on 2024-09-26.
//

import Testing

struct ShiftySumsTests {

    @Test func typicalCaseOne() {
        
        let result = shift(value: 12, by: 3)
        
        #expect(result == 13332)
        
    }
    
    @Test func typicalCaseTwo() {
        
        let result = shift(value: 12, by: 1)
        
        #expect(result == 132)
        
    }
    
    @Test func boundaryConditionOne() {
        
        let result = shift(value: 12, by: 0)
        
        #expect(result == 12)
        
    }

    @Test func boundaryConditionTwo() {
        
        let result = shift(value: 12, by: 5)
        
        #expect(result == 1_333_332)
        
    }
    
    @Test func boundaryConditionThree() {
        
        let result = shift(value: 1, by: 0)
        
        #expect(result == 1)
        
    }

    @Test func boundaryConditionFour() {
        
        let result = shift(value: 10000, by: 0)
        
        #expect(result == 10000)
        
    }

    @Test func boundaryConditionFive() {
        
        let result = shift(value: 1, by: 5)
        
        #expect(result == 111_111)
        
    }

    @Test func boundaryConditionSix() {
        
        let result = shift(value: 10000, by: 5)
        
        #expect(result == 1_111_110_000)
        
    }


}
