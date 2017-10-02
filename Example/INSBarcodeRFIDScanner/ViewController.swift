//
//  ViewController.swift
//  INSBarcodeRFIDScanner
//
//  Created by PhucBui on 09/26/2017.
//  Copyright (c) 2017 PhucBui. All rights reserved.
//

import UIKit

import INSBarcodeRFIDScanner

class ViewController: UIViewController, INSBarcodeRFIDReaderDelegate {
    func scannerDidCancel(_ scanner: INSBarcodeRFIDReader) {
        
    }

    func scanner(_ scanner: INSBarcodeRFIDReader, didRecordResult: UIImage, isMatch: Bool) {
        
    }
    
    
    
    var scannerScreen = INSBarcodeRFIDReader.init()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showRFIDScanner(_ sender: Any) {
        scannerScreen.delegate = self
        scannerScreen.showBarcodeRFIDReader()
        
    }
    
    func scanner(didRecordResultRFID: UIImage, isMatch: Bool) {
        
    }
    
    func scannerDidCancelRFID() {
        
    }
    
    
}


