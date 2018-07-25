//
//  NumeralConverter.swift
//  RomanNumerals
//
//  Created by Zakaria CHAFIK on 24/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

class NumeralConverter: NSObject {
    let romanNumberTable:[(number: Int, romanNumber: String)] = [(1000,"M"),(900,"CM"),(500,"D"),(400,"CD"),(100,"C"),(90,"XC"),(50,"L"),(40,"XL"),(10,"X"),(9,"IX"),(5,"V"),(4,"IV"),(1,"I")]
    
    public func translate(_ number:Int, position:Int) -> String {

        if( number == romanNumberTable[position].number ){
            return romanNumberTable[position].romanNumber
        }
        else if( number < romanNumberTable[position].number){
            if(position < romanNumberTable.count-1){
                return translate(number, position:position + 1)
            }
        }
        else if( number > romanNumberTable[position].number){
            if(number-romanNumberTable[position].number >= romanNumberTable[position].number){
                return romanNumberTable[position].romanNumber + translate(number-romanNumberTable[position].number , position:position)
            }
            else{
                return romanNumberTable[position].romanNumber + translate(number-romanNumberTable[position].number , position:position+1)
            }
        }
        return "error"
        
    }
    
    public func translateToRoman(_ number:Int) -> String {
        if( number > 0 && number < 4000){
            return translate(number, position:0)
        }
        else if(number >= 4000){
            return "out of range > 3999"
        }
        return "error"
    }
    
    public func convertToInt(_ numberString:String) -> Int {
        let number:Int? = Int(numberString)
        if(number != nil){
            return number!
        }
        return 0
    }
    
}
