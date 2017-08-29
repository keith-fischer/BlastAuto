//
//  BaseballUIframework.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 6/26/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest


/*#####################################
Base class to the framework
put reusable UI query functions here

#######################################*/
public class UIFrameworkUtils{
    var fwapp: XCUIApplication
    let new_account_email: String
    var account_email: String
    var account_name:String
    var account_Lastname:String
    var TESTDATA: TestData? = nil
    init(testname:String?="test1"){
        self.fwapp = XCUIApplication()
        print(type(of: self))
        self.TESTDATA = TestData(testname: testname!)
        self.account_name=UIFrameworkUtils.getUserName()
        self.new_account_email = self.account_name+"@gmail.com"
        self.account_email=self.new_account_email
        print("account email:"+self.account_email)
        self.account_Lastname=""
    }
    func returnNilAsEmpty(obj:String)->String{
        return (obj ).isEmpty ? "" : obj
    }
    func Title(){
        print(self.fwapp.title)
    }
    
//    func getTextField2(id:UInt) -> XCUIElement{
//        let textField = self.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
//        return textField
//    }
    
    class func getUserName() -> String{
        let str1: String = "automation"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2
        return rc
    }
    
    class func CreateEmail() -> String{
        let str1: String = "automation"
        let str3: String = "@gmail.com"
        let timeStamp: TimeInterval = Date().timeIntervalSince1970
        let number = Int(timeStamp)
        let str2: String = "\(Int(number))"
        let rc: String = str1+str2+str3
        return rc
    }
    
    func showelements(listName:String,lists: XCUIElementQuery){
        print(listName + "==========")
        var elementLabels = [String]()
        for i in 0..<lists.count {
            elementLabels.append (lists.element(boundBy: i).label)
        }
        
        print (elementLabels)
    }

    
    func printinfo(msg: String?="",in_out:Int?=0,fninfo:String?="fn: \(#function), line: \(#line), file: \(#file)"){
        var innout = String()
        innout="" //in_out=0
        if(in_out!==1){
            innout = ">>>"
        }
        else if(in_out!==2){
            innout = "<<<"
        }

        print(innout+msg!+fninfo!)
    }
}

/*#####################################
Init framework
 Two app startup modes auto login and signed out
 #######################################*/
public class UIFramework: UIFrameworkUtils{
    
    override init(){
        super.init()
            }
    //default signed out
    func uiStartup() -> ui_Startup{
        return ui_Startup(fw: self)
        
    }
    
    //Auto login
    func uiMain() -> ui_Main{
        return ui_Main(fw1: self)
    }
}
