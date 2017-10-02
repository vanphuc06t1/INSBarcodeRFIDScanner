//
//  ViewController.swift
//  INSBarcodeRFIDScanner
//
//  Created by PhucBui on 09/26/2017.
//  Copyright (c) 2017 PhucBui. All rights reserved.
//

import UIKit

import INSBarcodeRFIDScanner

class ViewController: UIViewController, INSBarcodeRFIDReaderDelegate , zt_IRfidAppEngineDevListDelegate{

    var rfidScreen = INSBarcodeRFIDReader.shared()
    
    var activeReaderIdx : Int = -1
    var activeReaderId : Int = -1
    
    public var appEnginer : zt_RfidAppEngine?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        appEnginer = zt_RfidAppEngine.init()
        appEnginer = zt_RfidAppEngine.shared()
        print("Init appEnginer")
        appEnginer!.addDeviceListDelegate(self as! zt_IRfidAppEngineDevListDelegate)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showRFIDScanner(_ sender: Any) {
    
        rfidScreen.delegate = self
       
        rfidScreen.showBarcodeRFIDReader()
        //rfidScreen.scannerScreen!.rfidScannerManager?.deviceListHasBeenUpdated()

        
    }
    
    func scanner(didRecordResultRFID: UIImage, isMatch: Bool) {
        
    }
    
    func scannerDidCancelRFID() {
        
    }
    
    //MARK: Delegate device list
    public func deviceListHasBeenUpdated() -> Bool {
        print("deviceListHasBeenUpdated Delegate")
        activeScannerDevices()
        
        return true
    }
    
    func activeScannerDevices() {
        
        let list = appEnginer!.getActualDeviceList()
        print("Device List Count: \(list?.count)")
        var found = false
        var info : srfidReaderInfo? = nil
        for i in 0 ..< list!.count {
            info = list![i] as? srfidReaderInfo
            print("Reader Name: \(info?.getReaderName())")
            if activeReaderId != -1 {
                if Int(info!.getReaderID()) == activeReaderId {
                    activeReaderIdx = i
                    found = true
                    
                    info?.setActive(true)
                    
                    break
                }
            } else {
                //Connect to first inactive devices
                //Set active
                info?.setActive(true)
                
                if info?.isActive() == true {
                    activeReaderId = Int(info!.getReaderID())
                    activeReaderIdx = i
                    found = true
                    break
                }
            }
        }
        
        if found == false {
            activeReaderId = -1
            activeReaderIdx = -1
        }
        
    }
    
}


