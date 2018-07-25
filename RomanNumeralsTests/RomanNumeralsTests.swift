//
//  RomanNumeralsTests.swift
//  RomanNumeralsTests
//
//  Created by Zakaria CHAFIK on 24/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import XCTest
@testable import RomanNumerals

class RomanNumeralsTests: XCTestCase {
    
    let converter:NumeralConverter = NumeralConverter()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func test_sould_return_I_when_1(){
        let number = 1
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "I")
    }
    func test_sould_return_II_when_2(){
        let number = 2
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "II")
    }
    func test_sould_return_V_when_5(){
        let number = 5
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "V")
    }
    func test_sould_return_VI_when_6(){
        let number = 6
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "VI")
    }
    func test_sould_return_M_when_1000(){
        let number = 1000
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "M")
    }
    func test_sould_return_MM_when_2000(){
        let number = 2000
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "MM")
    }
    func test_sould_return_MMMX_when_2010(){
        let number = 2010
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "MMX")
    }
    func test_sould_return_IV_when_4(){
        let number = 4
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "IV")
    }
    func test_sould_return_XIV_when_14(){
        let number = 14
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "XIV")
    }
    func test_sould_return_XCXI_when_99(){
        let number = 99
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "XCIX")
    }
    func test_sould_return_XL_when_40(){
        let number = 40
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "XL")
    }
    func test_sould_return_CD_when_400(){
        let number = 400
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "CD")
    }
    func test_sould_return_CM_when_900(){
        let number = 900
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "CM")
    }
    func test_sould_return_MMMCMXCIX_when_3999(){
        let number = 3999
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "MMMCMXCIX")
    }
    func test_sould_return_3900_when_3900_string(){
        let numberString = "3999"
        let number = converter.convertToInt(numberString)
        XCTAssertEqual(number, 3999)
    }
    func test_sould_return_Error_when_0(){
        let number = 0
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "error")
    }
    func test_sould_return_out_of_range_when_4000(){
        let number = 4000
        let romanNumber = converter.translateToRoman(number)
        XCTAssertEqual(romanNumber, "out of range > 3999")
    }
    
}
