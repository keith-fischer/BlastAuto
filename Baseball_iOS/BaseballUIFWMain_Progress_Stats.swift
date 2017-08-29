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
    let hi_lo:String
    //var icbackbutton: XCUIElement
    //let uifw: UIFramework
    //    init(fw: UIFramework,welcome1: Bool?=false){
    //        super.init(fw1:fw,welcome:welcome1)
    init(fw: UIFramework,hilow:String){
        super.init(fw1:fw)
        self.hi_lo=hilow
        //self.uifw = fw
        print(type(of: self))
        sleep(1)
        self.uifw.fwapp=XCUIApplication()
    }
    
    func TestTitle(titlename: String){
        print("Test Stats Profile Title:"+titlename)
        self.uifw.fwapp.staticTexts[titlename].tap()
    }
    
    func TestStat(stattext: String){
        print("Test Stats Profile Text:"+stattext)
        self.uifw.fwapp.collectionViews.staticTexts[stattext].tap()
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


    //PeakHandSpeed
    
    func PeakHandSpeed_Low_Day_StatProfile(){
        
    }
    
    func PeakHandSpeed_High_Day_StatProfile(){
        
    }
    
    func PeakHandSpeed_Low_Week_StatProfile(){
        
    }
    
    func PeakHandSpeed_High_Week_StatProfile(){
        
    }
    
    func PeakHandSpeed_Low_Month_StatProfile(){
        
    }
    
    func PeakHandSpeed_High_Month_StatProfile(){
        
    }
    
    func PeakHandSpeed_Low_Year_StatProfile(){
        
    }
    
    func PeakHandSpeed_High_Year_StatProfile(){
        
    }

    //AttackAngle
    
    func AttackAngle_Low_Day_StatProfile(){
        
    }
    
    func AttackAngle_High_Day_StatProfile(){
        
    }
    
    func AttackAngle_Low_Week_StatProfile(){
        
    }
    
    func AttackAngle_High_Week_StatProfile(){
        
    }
    
    func AttackAngle_Low_Month_StatProfile(){
        
    }
    
    func AttackAngle_High_Month_StatProfile(){
        
    }
    
    func AttackAngle_Low_Year_StatProfile(){
        
    }
    
    func AttackAngle_High_Year_StatProfile(){
        
    }

    //TimeToContact
    
    func TimeToContact_Low_Day_StatProfile(){
        
    }
    
    func TimeToContact_High_Day_StatProfile(){
        
    }
    
    func TimeToContact_Low_Week_StatProfile(){
        
    }
    
    func TimeToContact_High_Week_StatProfile(){
        
    }
    
    func TimeToContact_Low_Month_StatProfile(){
        
    }
    
    func TimeToContact_High_Month_StatProfile(){
        
    }
    
    func TimeToContact_Low_Year_StatProfile(){
        
    }
    
    func TimeToContact_High_Year_StatProfile(){
        
    }

    //BlastFactor
    
    func BlastFactor_Low_Day_StatProfile(){
        
    }
    
    func BlastFactor_High_Day_StatProfile(){
        
    }
    
    func BlastFactor_Low_Week_StatProfile(){
        
    }
    
    func BlastFactor_High_Week_StatProfile(){
        
    }
    
    func BlastFactor_Low_Month_StatProfile(){
        
    }
    
    func BlastFactor_High_Month_StatProfile(){
        
    }
    
    func BlastFactor_Low_Year_StatProfile(){
        
    }
    
    func BlastFactor_High_Year_StatProfile(){
        
    }

    //Power
    
    func Power_Low_Day_StatProfile(){
        
    }
    
    func Power_High_Day_StatProfile(){
        
    }
    
    func Power_Low_Week_StatProfile(){
        
    }
    
    func Power_High_Week_StatProfile(){
        
    }
    
    func Power_Low_Month_StatProfile(){
        
    }
    
    func Power_High_Month_StatProfile(){
        
    }
    
    func Power_Low_Year_StatProfile(){
        
    }
    
    func Power_High_Year_StatProfile(){
        
    }

    //PeakBatSpeed
    func PeakBatSpeed_Low_Day_StatProfile(){
        
    }
    
    func PeakBatSpeed_High_Day_StatProfile(){
        
    }
    
    func PeakBatSpeed_Low_Week_StatProfile(){
        
    }
    
    func PeakBatSpeed_High_Week_StatProfile(){
        
    }
    
    func PeakBatSpeed_Low_Month_StatProfile(){
        
    }
    
    func PeakBatSpeed_High_Month_StatProfile(){
        
    }
    
    func PeakBatSpeed_Low_Year_StatProfile(){
        
    }
    
    func PeakBatSpeed_High_Year_StatProfile(){
        
    }


    //OnPlane
    func OnPlane_Low_Day_StatProfile(){
        
    }
    
    func OnPlane_High_Day_StatProfile(){
        
    }
    
    func OnPlane_Low_Week_StatProfile(){
        
    }
    
    func OnPlane_High_Week_StatProfile(){
        
    }
    
    func OnPlane_Low_Month_StatProfile(){
        
    }
    
    func OnPlane_High_Month_StatProfile(){
        
    }
    
    func OnPlane_Low_Year_StatProfile(){
        
    }
    
    func OnPlane_High_Year_StatProfile(){
        
    }

    //BodyRotation
    
    func BodyRotation_Low_Day_StatProfile(){
        
    }
    
    func BodyRotation_High_Day_StatProfile(){
        
    }
    
    func BodyRotation_Low_Week_StatProfile(){
        
    }
    
    func BodyRotation_High_Week_StatProfile(){
        
    }
    
    func BodyRotation_Low_Month_StatProfile(){
        
    }
    
    func BodyRotation_High_Month_StatProfile(){
        
    }
    
    func BodyRotation_Low_Year_StatProfile(){
        
    }
    
    func BodyRotation_High_Year_StatProfile(){
        
    }

    //VerticleBatAngle
    
    func VerticleBatAngle_Low_Day_StatProfile(){
        
    }
    
    func VerticleBatAngle_High_Day_StatProfile(){
        
    }
    
    func VerticleBatAngle_Low_Week_StatProfile(){
        
    }
    
    func VerticleBatAngle_High_Week_StatProfile(){
        
    }
    
    func VerticleBatAngle_Low_Month_StatProfile(){
        
    }
    
    func VerticleBatAngle_High_Month_StatProfile(){
        
    }
    
    func VerticleBatAngle_Low_Year_StatProfile(){
        
    }
    
    func VerticleBatAngle_High_Year_StatProfile(){
        
    }

        
}
