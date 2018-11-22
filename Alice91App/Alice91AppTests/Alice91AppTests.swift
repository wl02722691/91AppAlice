//
//  Alice91AppTests.swift
//  Alice91AppTests
//
//  Created by 張書涵 on 2018/11/22.
//  Copyright © 2018年 AliceChang. All rights reserved.
//

import XCTest
@testable import Alice91App

class Alice91AppTests: XCTestCase {

    var calculator: Calculator!
    
    override func setUp() {
        do {
            calculator = Calculator()
        }
    }
    
    override func tearDown() {
         calculator = nil
    }

    
    func test_GCD_oneWithOtherNumber() {
        //Arrange
        let number1 = 1
        let number2 = 9999999
        let expectedResult = 1
        
        //Action
        let testnumber = calculator.GCD(firstNumber: number1, secondNumber: number2)
        
        //Assert
        XCTAssert(testnumber == expectedResult, "test_GCD_oneWithOtherNumber error")
        
    }
    
    func test_LCM_oneWithOtherNumber() {
        
        let number1 = 1
        let number2 = 9999999
        let expectedResult = 9999999
        
        let testnumber = calculator.LCM(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_LCM_oneWithOtherNumber error")
        
    }
    
    
    func test_GCD_sameNumber() {
        let number1 = 100
        let number2 = 100
        let expectedResult = 100
        
        let testnumber = calculator.GCD(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_GCD_sameNumber error")
        
    }
    
    func test_LCM_sameNumber() {
        
        let number1 = 100
        let number2 = 100
        let expectedResult = 100
        
        let testnumber = calculator.LCM(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_LCM_sameNumber error")
        
    }
    
    func test_GCD_primenumber() {
        
        let number1 = 7
        let number2 = 13
        let expectedResult = 1
        
        let testnumber = calculator.GCD(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_GCD_primenumber error")
        
    }
    
    
    func test_primenumberLCM() {
        
        let number1 = 7
        let number2 = 13
        let expectedResult = 91
        
        let testnumber = calculator.LCM(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_primenumberLCM error")
        
    }
    
    func test_GCD_double() {
        
        let number1 = 10
        let number2 = 20
        let expectedResult = 10
        
        let testnumber = calculator.GCD(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_GCD_double error")
        
    }
    
    func test_LCM_double() {
        
        let number1 = 10
        let number2 = 20
        let expectedResult = 20
        
        let testnumber = calculator.LCM(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_LCM_double error")
        
    }
    
    func test_GCD_wideRange() {
        
        let number1 = 44
        let number2 = 20000000
        let expectedResult = 4
        
        let testnumber = calculator.GCD(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_GCD_wideRange error")
        
    }
    
    func test_LCM_wideRange() {
        
        let number1 = 44
        let number2 = 20000000
        let expectedResult = 220000000
        
        let testnumber = calculator.LCM(firstNumber: number1, secondNumber: number2)
        
        XCTAssert(testnumber == expectedResult, "test_LCM_wideRange error")
        
    }
    
}
