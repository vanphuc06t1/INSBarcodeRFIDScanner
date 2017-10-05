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
    func scanner(didRecordResultRFID: UIImage, isMatch: Bool, barcodeValue: String, rfidValue: String) {
        
    }



    var rfidScreen = INSBarcodeRFIDReader.shared()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showRFIDScanner(_ sender: Any) {
    
        rfidScreen.delegate = self
       
        rfidScreen.showBarcodeRFIDReader()


    }
    
    func scanner(didRecordResultRFID: UIImage, isMatch: Bool, barcodeValue: String, rfidValue: String, decryptedValue: String) {
        print("isMatch: \(isMatch)")
        print("rfidValue: \(rfidValue)")
        print("decryptedValue: \(decryptedValue)")
        print("barcodeValue: \(barcodeValue)")
    }
    
    func scannerDidCancelRFID() {
        
    }
    
    
}


