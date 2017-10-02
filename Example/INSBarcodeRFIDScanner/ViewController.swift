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
        //rfidScreen.scannerScreen!.rfidScannerManager?.deviceListHasBeenUpdated()

         print("\(zt_ActiveReader())")
        print("\(zt_ActiveReader().getID())")
        zt_ActiveReader().getID()
        
    }
    
    func scanner(didRecordResultRFID: UIImage, isMatch: Bool) {
        
    }
    
    func scannerDidCancelRFID() {
        
    }
    
    
}


