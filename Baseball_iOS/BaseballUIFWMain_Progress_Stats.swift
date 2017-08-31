//
//  BaseballUIFWMain_Progress_Stats.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/25/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//
import Foundation
import XCTest


public class ui_Progress_Stats: ui_Main{
    var hi_lo:String = ""
    //var icbackbutton: XCUIElement
    //let uifw: UIFramework
    //    init(fw: UIFramework,welcome1: Bool?=false){
    //        super.init(fw1:fw,welcome:welcome1)
    init(fw: UIFramework){
        super.init(fw1: fw)
        
        //self.uifw = fw
        print(type(of: self))
        sleep(1)
        self.uifw.fwapp=XCUIApplication()
        //self.hi_lo = hilow!
    }
    
    func TestTitle(titlename: String){
        print("Test Stats Profile Title:"+titlename)
        self.uifw.fwapp.staticTexts[titlename].tap()
    }
    
    func TestStat(stattext: String){
        print("Test Stats Profile Text:"+stattext)
        self.uifw.fwapp.collectionViews.staticTexts[stattext].tap()
    }

    func tap_Close(){
        self.uifw.fwapp.buttons["icClose"].tap()
    }
    
    func scrapeStatsDetails(testname:String, daterange:String, title: String, batname: String, statpages: [String])->[String]{
        self.uifw.fwapp.staticTexts[title].tap()
        //self.uifw.fwapp.staticTexts[batname].tap()

        
        let collectionViewsQuery = self.uifw.fwapp.collectionViews
        var elementLabels = [String]()
        //let statnames: [String]=["Bat Speed","Peak Hand Speed","Attack Angle","Time to Contact","Blast Factor","Power","Peak Bat Speed","On Plane","Body Rotation","Vertical Bat Angle"]
        var statinfo: String = ""
        var lastel:XCUIElement
        var firstel:XCUIElement
        var statlabel:String = ""
        var stattype:String = ""
        var datakey:String = ""
        var failcount:Int = 0
        var pagecount:Int = 0
        //var i:Int = 0
        //var lastindex:UInt32=0
        //for stat in statpages{
        while (true){
            var id:UInt = 0
            let sequence = stride(from: 0, to: collectionViewsQuery.staticTexts.count, by: 3)
            for i in sequence{

                //statinfo = title+"|"+stat+"|" + collectionViewsQuery.staticTexts.element(boundBy: i).label
                if collectionViewsQuery.staticTexts.count>2{
                    statlabel = collectionViewsQuery.staticTexts.element(boundBy: i + 0).label
                    statinfo = collectionViewsQuery.staticTexts.element(boundBy: i + 1).label
                    stattype = collectionViewsQuery.staticTexts.element(boundBy: i + 2).label
                    datakey = testname+"|"+daterange + "|" + title + "|" + statlabel + "|" + statinfo + "|" + stattype
                    
                    if collectionViewsQuery.staticTexts.element(boundBy: i + 2).isHittable{
                        id = i + 2
                    }
                }
                else{
                    failcount+=1
                    datakey="FAILED:"+String(failcount)+"|"+title//+"|"+stat
                    print(datakey)
                }
                if !elementLabels.contains(datakey){
                    elementLabels.append (datakey)
                    
                }
            }
            lastel=collectionViewsQuery.staticTexts.element(boundBy: id)
            firstel=self.uifw.fwapp.staticTexts[title]
            
            for i in 0...2{
                do{
                    try lastel.press(forDuration: 1, thenDragTo: firstel)
                    sleep(1)
                    break
                }
                catch{
                    print("FAILED " + String(i) + " DragTo on:" + datakey)
                    sleep(1)
                }
            }
            //print (elementLabels)
            if elementLabels.count>9{
                break
            }
            else{
                pagecount+=1
            }
            if pagecount>5{
                break
            }
            
        }
        //print (elementLabels)
        if elementLabels.count>0{
            let datakeyreport:String = elementLabels.joined(separator: "\n")
            print(datakeyreport)
            let ut = UIFrameworkUtils.Utils()
            ut.SaveDataToFile(path: testname+".txt", txtdata: datakeyreport)
        }
        return elementLabels

    }
}
//    func BatSpeed_Low_Day_StatProfile(){
//        self.TestTitle("Lowest Bat Speed")
//        self.TestStat("Bat Speed")
//        self.TestStat("MPH")
//    }
//    
//    func BatSpeed_High_Day_StatProfile(){
//        if !TestTitle("Highest Bat Speed"){
//            
//        }
//    }
//    
//    func BatSpeed_Low_Week_StatProfile(){
//        if !TestTitle("Lowest Bat Speed"){
//            
//        }
//    }
//    
//    func BatSpeed_High_Week_StatProfile(){
//        if !TestTitle("Highest Bat Speed"){
//            
//        }
//    }
//   
//    func BatSpeed_Low_Month_StatProfile(){
//        if !TestTitle("Lowest Bat Speed"){
//            
//        }
//    }
//    
//    func BatSpeed_High_Month_StatProfile(){
//        if !TestTitle("Highest Bat Speed"){
//            
//        }
//    }
//    
//    func BatSpeed_Low_Year_StatProfile(){
//        if !TestTitle("Lowest Bat Speed"){
//            
//        }
//    }
//    
//    func BatSpeed_High_Year_StatProfile(){
//        if !TestTitle("Highest Bat Speed"){
//            
//        }
//    }


//    //PeakHandSpeed
//    
//    func PeakHandSpeed_Low_Day_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_High_Day_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_Low_Week_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_High_Week_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_Low_Month_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_High_Month_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_Low_Year_StatProfile(){
//        
//    }
//    
//    func PeakHandSpeed_High_Year_StatProfile(){
//        
//    }
//
//    //AttackAngle
//    
//    func AttackAngle_Low_Day_StatProfile(){
//        
//    }
//    
//    func AttackAngle_High_Day_StatProfile(){
//        
//    }
//    
//    func AttackAngle_Low_Week_StatProfile(){
//        
//    }
//    
//    func AttackAngle_High_Week_StatProfile(){
//        
//    }
//    
//    func AttackAngle_Low_Month_StatProfile(){
//        
//    }
//    
//    func AttackAngle_High_Month_StatProfile(){
//        
//    }
//    
//    func AttackAngle_Low_Year_StatProfile(){
//        
//    }
//    
//    func AttackAngle_High_Year_StatProfile(){
//        
//    }
//
//    //TimeToContact
//    
//    func TimeToContact_Low_Day_StatProfile(){
//        
//    }
//    
//    func TimeToContact_High_Day_StatProfile(){
//        
//    }
//    
//    func TimeToContact_Low_Week_StatProfile(){
//        
//    }
//    
//    func TimeToContact_High_Week_StatProfile(){
//        
//    }
//    
//    func TimeToContact_Low_Month_StatProfile(){
//        
//    }
//    
//    func TimeToContact_High_Month_StatProfile(){
//        
//    }
//    
//    func TimeToContact_Low_Year_StatProfile(){
//        
//    }
//    
//    func TimeToContact_High_Year_StatProfile(){
//        
//    }
//
//    //BlastFactor
//    
//    func BlastFactor_Low_Day_StatProfile(){
//        
//    }
//    
//    func BlastFactor_High_Day_StatProfile(){
//        
//    }
//    
//    func BlastFactor_Low_Week_StatProfile(){
//        
//    }
//    
//    func BlastFactor_High_Week_StatProfile(){
//        
//    }
//    
//    func BlastFactor_Low_Month_StatProfile(){
//        
//    }
//    
//    func BlastFactor_High_Month_StatProfile(){
//        
//    }
//    
//    func BlastFactor_Low_Year_StatProfile(){
//        
//    }
//    
//    func BlastFactor_High_Year_StatProfile(){
//        
//    }
//
//    //Power
//    
//    func Power_Low_Day_StatProfile(){
//        
//    }
//    
//    func Power_High_Day_StatProfile(){
//        
//    }
//    
//    func Power_Low_Week_StatProfile(){
//        
//    }
//    
//    func Power_High_Week_StatProfile(){
//        
//    }
//    
//    func Power_Low_Month_StatProfile(){
//        
//    }
//    
//    func Power_High_Month_StatProfile(){
//        
//    }
//    
//    func Power_Low_Year_StatProfile(){
//        
//    }
//    
//    func Power_High_Year_StatProfile(){
//        
//    }
//
//    //PeakBatSpeed
//    func PeakBatSpeed_Low_Day_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_High_Day_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_Low_Week_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_High_Week_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_Low_Month_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_High_Month_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_Low_Year_StatProfile(){
//        
//    }
//    
//    func PeakBatSpeed_High_Year_StatProfile(){
//        
//    }
//
//
//    //OnPlane
//    func OnPlane_Low_Day_StatProfile(){
//        
//    }
//    
//    func OnPlane_High_Day_StatProfile(){
//        
//    }
//    
//    func OnPlane_Low_Week_StatProfile(){
//        
//    }
//    
//    func OnPlane_High_Week_StatProfile(){
//        
//    }
//    
//    func OnPlane_Low_Month_StatProfile(){
//        
//    }
//    
//    func OnPlane_High_Month_StatProfile(){
//        
//    }
//    
//    func OnPlane_Low_Year_StatProfile(){
//        
//    }
//    
//    func OnPlane_High_Year_StatProfile(){
//        
//    }
//
//    //BodyRotation
//    
//    func BodyRotation_Low_Day_StatProfile(){
//        
//    }
//    
//    func BodyRotation_High_Day_StatProfile(){
//        
//    }
//    
//    func BodyRotation_Low_Week_StatProfile(){
//        
//    }
//    
//    func BodyRotation_High_Week_StatProfile(){
//        
//    }
//    
//    func BodyRotation_Low_Month_StatProfile(){
//        
//    }
//    
//    func BodyRotation_High_Month_StatProfile(){
//        
//    }
//    
//    func BodyRotation_Low_Year_StatProfile(){
//        
//    }
//    
//    func BodyRotation_High_Year_StatProfile(){
//        
//    }
//
//    //VerticleBatAngle
//    
//    func VerticleBatAngle_Low_Day_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_High_Day_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_Low_Week_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_High_Week_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_Low_Month_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_High_Month_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_Low_Year_StatProfile(){
//        
//    }
//    
//    func VerticleBatAngle_High_Year_StatProfile(){
//        
//    }
//
//        
//}
