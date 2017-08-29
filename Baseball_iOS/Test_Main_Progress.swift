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
    func ttest_ScrapeData(){
        print("ttestMain ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework()
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:false)
        
        let prog=main.tap_Progress()
        let rpt = prog.ScrapeProgressStatData(testname: "LongAcct")
        print (rpt)
        sleep(10)
        
    }
    
    func ttest_Main_Basic(){
        print("ttestMain ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework()
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
        let fw=UIFramework()
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
    
    func ttestMain_Progress_SwipeCharts(){
        print("ttestMain ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        
        // startup screen ------------------------------------------------------
        var rc=false
        sleep(10) //wait for account info fetch
        let fw=UIFramework()
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        let main=ui_Main(fw1:fw,welcome:false)//Not new user ,no welcome display
        
        let prog=main.tap_Progress()
        var ss=prog.getLowStat()
        //ss=prog.getHighStat()
        prog.setDay()
        prog.setMonth()
        prog.setWeek()
        prog.setYear()
        prog.setDay()
        
        let chars:[String]=(fw.TESTDATA?.getTestValueStrArr(fieldname: "main_progress_chartnames"))!
        //go to last chart
        rc=prog.setToLastChart(chartlist: chars)
        
        if !rc{
            print("FAILED SWIPE LEFT AND FIND CHART TEST: "+chars[chars.count-1])
        }
        else{
            print("PASSED SWIPE LEFT AND FIND CHART TEST: "+chars[chars.count-1])
        }
        //got first
        rc=prog.setToFirstChart(chartlist: chars)
        if !rc{
            print("FAILED SWIPE RIGHT AND FIND CHART TEST: "+chars[0])
        }
        else{
            print("PASSED SWIPE RIGHT AND FIND CHART TEST: "+chars[0])
        }
        
        rc=prog.searchChartNameSwipeLeft(chartname: chars[5], chartlist: chars)
        if !rc{
            print("FAILED SWIPE LEFT AND FIND CHART TEST: "+chars[5])
        }
        else{
            print("PASSED SWIPE LEFT AND FIND CHART TEST: "+chars[5])
        }
        rc=prog.searchChartNameSwipeRight(chartname: chars[3], chartlist: chars)
        if !rc{
            print("FAILED SWIPE LEFT AND FIND CHART TEST: "+chars[3])
        }
        else{
            print("PASSED SWIPE LEFT AND FIND CHART TEST: "+chars[3])
        }
        sleep(10)
        
    }
    
}

