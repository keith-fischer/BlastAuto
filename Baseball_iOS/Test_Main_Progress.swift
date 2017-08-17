//
//  Test_Main_Progress.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/15/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation


extension NGABaseballUITests{
    
    func ttest_Main_Basic(){
        print("ttestMain ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:false)
        
        var prog=main.tap_Progress()
        let lmenu=prog.tap_LeftMenu()
        lmenu.tap_closeMenu()
        let train=main.tap_Training()
        let vids=train.tap_Videos()
        let rec=vids.tap_Record()
        rec.tap_Close()
        main.tap_Progress()
        sleep(10)
        
    }
    
    func ttestMain_Progress_Welcome(){
        print("testMain ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:true)
        let dash=main.tap_GetStarted()
        let prog=dash.tap_Progress()
        let lmenu=prog.tap_LeftMenu()
        lmenu.tap_closeMenu()
        let train=main.tap_Training()
        let vids=train.tap_Videos()
        let rec=vids.tap_Record()
        rec.tap_Close()
        sleep(10)
    }
    
}

