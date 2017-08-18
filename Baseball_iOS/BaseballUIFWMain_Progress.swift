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
    
    func swipeUp(){
        
    }
    func swipeDown(){
        
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
        swipeLeft()
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
    
    func getLowStat()->String{
        let scrollViewsQuery = self.uifw.fwapp.scrollViews
        var stat=scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element//(boundBy: 0).element
        stat.UIDump()
        //var s=stat.value
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
        let scrollViewsQuery = self.uifw.fwapp.scrollViews

        let stat=scrollViewsQuery.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 1).tap()

        return ""
    }
//    func checkStats(chartname:String,datadict: [String:[String])->Bool{
//        
//    }
    
}
