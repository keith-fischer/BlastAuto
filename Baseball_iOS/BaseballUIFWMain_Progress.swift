//
//  BaseballUIFWMain_Progress.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/8/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest


public class ui_Progress: ui_Main{
    //var icbackbutton: XCUIElement
    //let uifw: UIFramework
//    init(fw: UIFramework,welcome1: Bool?=false){
//        super.init(fw1:fw,welcome:welcome1)
    init(fw: UIFramework){
        super.init(fw1:fw)
        //self.uifw = fw
        print(type(of: self))
        sleep(1)
        self.uifw.fwapp=XCUIApplication()
        self.uifw.fwapp.navigationBars["NGABaseball.ProgressView"].staticTexts["Progress"].tap()
    }
    func setdatalabel(testname:String,daterange:String,chart:String,hilo:String)->String{
        let rc:String=chart+"_"+daterange+"_"+hilo
        return rc
        
    }
    
    /// <#Description#>
    ///
    /// - Parameter testname: <#testname description#>
    func ScrapeProgressStatData(testname:String?="test1",startdatechart:String?="Day|Lowest Bat Speed"){
        print("ScrapeProgressStatData")
        var datakey:String
        let as_statnames: [String] = (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_chartnames"))!
        var datakeyreport:String = ""
        var datalist:[String] = []
        //var s_daterange:String
        
        let as_dateranges:[String] = (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_daterange"))!
        
        let as_hilow:[String] = (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_lowhigh"))!
        var statsrn:ui_Progress_Stats? = nil
        var search:String = startdatechart!//"Year|Highest On Plane"//"Day|Lowest Bat Speed|Bat Speed"//|35.8|MPH"
        var testforskip:String = ""
        var run:Bool = false
        //loop1 iterate dateranges
        for dt in as_dateranges{
            setDateRange(range: dt)
            setToFirstChart(chartlist: as_statnames)
            //loop2 iterate charts
            for chartstat in as_statnames{
                searchChartNameSwipeLeft(chartname: chartstat, chartlist: as_statnames)
                //loop3 iterate hi/low stats
                for hl in as_hilow{
                    testforskip = dt+"|"+hl+" "+chartstat
                    print(testforskip)
                    if (!run) && (testforskip == search){
                        run = true
                    }
                    if run{
                        //drill into stat details
                        statsrn=tapHighestLowestStat(hilow: hl)
                        
                        datakey=setdatalabel(testname:testname!,daterange:dt,chart:chartstat,hilo:hl)
                        print(datakey+"====================")
                        sleep(1)
                        
                        datalist.append(contentsOf: (statsrn?.scrapeStatsDetails(testname:testname!,daterange:dt, title: hl+" "+chartstat, batname: "##", statpages: as_statnames))!)
                        statsrn?.tap_Close()
                        print(datalist)
                    }
                    else{
                        print("Skip: "+testforskip)
                    }
                }
            }
            
        }
        datakeyreport = datalist.joined(separator: "\n")
        print(datakeyreport)
        let ut = UIFrameworkUtils.Utils()
        ut.SaveDataToFile(path: testname!+".txt", txtdata: datakeyreport)

    }
//        XCUIDevice.shared().orientation = .portrait
//        let lowhigh:[String]=["Lowest","Highest"]
//        
//        let app = XCUIApplication()
//        app.buttons["Day"].tap()
//        //tap low
//        app.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 0).tap()
//        
//        app.staticTexts["Lowest Bat Speed"].tap()
//        
//        //let staticText = app.staticTexts["271 Maple"]
//
//        
//        let collectionViewsQuery = app.collectionViews
//        var elementLabels = [String]()
//        
//        var stat:String=""
//        var lastel:XCUIElement
//        var firstel:XCUIElement
//        //var lastindex:UInt32=0
//        for stat in statnames{
//            
//            for i in 0..<collectionViewsQuery.staticTexts.count {
//                elementLabels.append (stat+" - " + collectionViewsQuery.staticTexts.element(boundBy: i).label)
//                //lastindex=i
//                
//            }
//            lastel=collectionViewsQuery.staticTexts.element(boundBy: 2)
//            firstel=app.staticTexts["Lowest Bat Speed"]
//            //while lastel.isHittable {
//            lastel.press(forDuration: 1, thenDragTo: firstel)
//            //}
//        }
//        print (elementLabels)
//    }
    

    /// <#Description#>
    ///
    /// - Parameter range: <#range description#>
    func setDateRange(range: String?="Day")->String{
        if range == (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_daterange"))![0] {setDay()}
        else if range == (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_daterange"))![1] {setWeek()}
        else if range == (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_daterange"))![2] {setMonth()}
        else if range == (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_daterange"))![3] {setYear()}
        return range!
    }
    
    func setDateRange(range: Int?=0)-> String{
        let sdt:String = (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_daterange"))![range!]
        return setDateRange(range: sdt)
    }
    
    /// <#Description#>
    func setDay(){
        self.uifw.fwapp.buttons["Day"].tap()
    }
    
    /// <#Description#>
    func setWeek(){
        self.uifw.fwapp.buttons["Week"].tap()
    }
    
    /// <#Description#>
    func setMonth(){
        self.uifw.fwapp.buttons["Month"].tap()
    }
    
    /// <#Description#>
    func setYear(){
        self.uifw.fwapp.buttons["Year"].tap()
    }
    
    func showStatInfoLowest(){
        
    }
    
    func showStatInfoHighest(){
        
    }
    /// <#Description#>
    func swipeLeft(){
        let scrollViewsQuery = XCUIApplication().scrollViews
        let element = scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0)
        element.swipeLeft()
        sleep(1)
    }
    
    func swipeRight(){
        let scrollViewsQuery = XCUIApplication().scrollViews
        let element = scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0)
        element.swipeRight()
        sleep(1)
        
    }
    
    func swipeLeftVerify(chartname:String)->Bool{
        if !isChartName(chartlist: (self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_chartnames"))!,chartname:chartname){
            swipeLeft()
        }
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementsQuery = scrollViewsQuery.otherElements
        
        if elementsQuery.staticTexts[chartname].exists{
            if elementsQuery.staticTexts[chartname].isHittable{
                return true
            }
        }
        return false
    }
    
    func swipeRightVerify(chartname:String)->Bool{
        swipeRight()
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementsQuery = scrollViewsQuery.otherElements
        
        if elementsQuery.staticTexts[chartname].exists{
            if elementsQuery.staticTexts[chartname].isHittable{
                return true
            }
        }
        return false
    }
    
    /// Get current chart name
    ///
    /// - Parameter chartlist: <#chartlist description#>
    /// - Returns: <#return value description#>
    func getChartName(chartlist:[String]) -> String{
        let scrollViewsQuery = XCUIApplication().scrollViews
        let elementsQuery = scrollViewsQuery.otherElements
        for chartname in chartlist{
            if elementsQuery.staticTexts[chartname].exists{
                if elementsQuery.staticTexts[chartname].isHittable{
                    return chartname
                }
            }
        }
        return "Not Found"
    }
    
    /// <#Description#>
    ///
    /// - Parameter chartname: <#chartname description#>
    /// - Returns: <#return value description#>
    func isChartName(chartlist:[String],chartname:String)->Bool{
        if chartname==getChartName(chartlist: chartlist){
            return true
        }
        return false
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - chartname: <#chartname description#>
    ///   - chartlist: <#chartlist description#>
    /// - Returns: <#return value description#>
    func searchChartNameSwipeLeft(chartname:String,chartlist:[String])->Bool{
        print("Searching..."+chartname)
        for _ in chartlist{
            if swipeLeftVerify(chartname: chartname){
                return true
            }
            print("NOT FOUND:"+getChartName(chartlist: chartlist))
        }
        return false
    }
    
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - chartname: <#chartname description#>
    ///   - chartlist: <#chartlist description#>
    /// - Returns: <#return value description#>
    func searchChartNameSwipeRight(chartname:String,chartlist:[String])->Bool{
        print("Searching..."+chartname)
        for _ in chartlist{
            if swipeRightVerify(chartname: chartname){
                return true
            }
            print("NOT FOUND:"+getChartName(chartlist: chartlist))
        }
        return false
    }
    
    /// <#Description#>
    ///
    /// - Parameter chartlist: <#chartlist description#>
    /// - Returns: <#return value description#>
    func setToLastChart(chartlist:[String])->Bool{
        if searchChartNameSwipeLeft(chartname: chartlist[chartlist.count-1], chartlist: chartlist){
            return true
        }
        return false
    }
    
    /// <#Description#>
    ///
    /// - Parameter chartlist: <#chartlist description#>
    /// - Returns: <#return value description#>
    func setToFirstChart(chartlist:[String])->Bool{
        if searchChartNameSwipeRight(chartname: chartlist[0], chartlist: chartlist){
            return true
        }
        return false
    }
    
    
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func tapHighStat()->ui_Progress_Stats{
        self.uifw.fwapp.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 1).tap()
        sleep(1)
        self.uifw.fwapp=XCUIApplication()
        let progstat:ui_Progress_Stats = ui_Progress_Stats(fw: self.uifw)
        progstat.hi_lo=(self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_lowhigh"))![1]
        return progstat
    }
    
    /// <#Description#>
    ///
    /// - Returns: <#return value description#>
    func tapLowStat()->ui_Progress_Stats{
        self.uifw.fwapp.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 0).tap()
        sleep(1)
        self.uifw.fwapp=XCUIApplication()
        let progstat:ui_Progress_Stats = ui_Progress_Stats(fw: self.uifw)
        progstat.hi_lo=(self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_lowhigh"))![0]
        return progstat
    }
    
    /// <#Description#>
    ///
    /// - Parameter hilow: <#hilow description#>
    /// - Returns: <#return value description#>
    func tapHighestLowestStat(hilow:String)->ui_Progress_Stats{
        var statdetail:ui_Progress_Stats? = nil
        if hilow==(self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_lowhigh"))![0]{
            statdetail = tapLowStat()
            statdetail?.hi_lo=hilow
        }
        else if hilow==(self.uifw.TESTDATA?.getTestValueStrArr(
            fieldname: "main_progress_stats_profile_lowhigh"))![1]{
            statdetail = tapHighStat()
            statdetail?.hi_lo=hilow
        }
        return statdetail!
    }
    
    func getLowStat()->String{
        self.uifw.fwapp=XCUIApplication()
        let scrollViewsQuery = self.uifw.fwapp.scrollViews
        var staticlist:XCUIElementQuery = self.uifw.fwapp.staticTexts.children(matching: .staticText)
        var txt=scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .staticText).element(boundBy: 0)
        
        txt.UIDump()
        print(String(describing: txt))
        var stat=scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .staticText).element(boundBy: 0)
        
        stat.UIDump()
        //stat.tap()
        //sleep(2)
        
//        self.uifw.fwapp=XCUIApplication()
//        staticlist:XCUIElementQuery = self.uifw.fwapp.staticTexts.children(matching: .staticText)
//        let count=staticlist.count
//        var i:Int = 0
//        var el:XCUIElement
//        for i in 0...count{
//            el=staticlist.element(boundBy:i)
//            print(String(describing: el))
//        }

        var s:Any=stat.value ?? "None"
        var t=stat.label
        var d=stat.title
//        var s:String=""//=stat.label
//        let vv:Any=stat.
//        stat.UIDump()
//        self.uifw.showelements(listName: "show text", lists: stat.staticTexts)
        
        return ""
    }
    
    
    
//    let scrollViewsQuery = app.scrollViews
//    scrollViewsQuery.otherElements.staticTexts["Bat Speed"].tap()
//    scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 0).tap()
    

    

    
    
    func getAvgStat()->String{
        return ""
    }
    func getHighStat()->String{
        self.uifw.fwapp=XCUIApplication()
        let scrollViewsQuery = self.uifw.fwapp.scrollViews

        let stat=scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 1)
        stat.UIDump()
        return ""
    }
//    func checkStats(chartname:String,datadict: [String:[String])->Bool{
//        
//    }
    
}
