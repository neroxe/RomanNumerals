//
//  ViewController.swift
//  RomanNumerals
//
//  Created by Zakaria CHAFIK on 24/07/2018.
//  Copyright © 2018 Zakaria CHAFIK. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    var numeralConverter:NumeralConverter = NumeralConverter()
    
    @IBOutlet weak var number: NSTextField!
    @IBOutlet weak var result: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        result.stringValue = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func prepare(_ sender: Any) {
        let inputNumber = numeralConverter.convertToInt(number.stringValue)
        result.stringValue = numeralConverter.translateToRoman(inputNumber)
    }
    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

