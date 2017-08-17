//
//  Test_Profile.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/15/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation


extension NGABaseballUITests{
    
    /// <#Description#>
    func ttest_Menu_Profile_Player(){
        print("testProfile ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:false)
        let menu=main.tap_LeftMenu()
        let profile=menu.tap_UserProfile()
        
        profile.tap_Bio()
        profile.fields_Bio.FirstName(txt: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_FirstName"))!)
        print("FirstName: "+profile.fields_Bio.FirstName())
        print("LastName: "+profile.fields_Bio.LastName())
        //print("LevelOfPlay: "+profile.fields_Bio.LevelOfPlay())
        print("BirthDate: "+profile.fields_Bio.BirthDate())
        print("Gender: "+profile.fields_Bio.Gender())
        print("Bats: "+profile.fields_Bio.Bats())
        print("Height: "+profile.fields_Bio.Height())
        print("Weight: "+profile.fields_Bio.Weight())
        
        profile.fields_Bio.BirthDate(year: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_BirthDate_year"))!,
                                     month: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_BirthDate_month"))!,
                                     day: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_BirthDate_day"))!)
        profile.fields_Bio.Gender(txt: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_Gender"))!)
        profile.fields_Bio.Bats(txt: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_Bats"))!)
        profile.fields_Bio.Height(feet: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_Height_feet"))!,
                                  inches: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_Height_inches"))!)
        profile.fields_Bio.Weight(lbs: (TESTDATA?.getTestValueStr(fieldname: "profile_bio_Weight"))!)
        profile.fields_Bio.LevelOfPlay(txt: (TESTDATA?.getTestValueStrArr(fieldname: "profile_bio_LevelOfPlay"))!)
        profile.tap_Account()
        print("Email: "+profile.fields_Account.Email())
        print("AccountType: "+profile.fields_Account.AccountType())
        print("PhoneNumber: "+profile.fields_Account.PhoneNumber())
        print("accountType: "+profile.fields_Account.ZipCode())
        profile.fields_Account.PhoneNumber(txt: "9998881234")
        profile.fields_Account.ZipCode(txt: "12345")
        profile.fields_Account.AccountType(txt: "I'M A PLAYER")
        print("accountType: "+profile.fields_Account.AccountType())
        sleep(1)
        //at=ui_AccountType(self.fw)
        
        
        
        profile.tap_BlastConnect()
        print(profile.uifw.fwapp.descendants(matching: .any).debugDescription)
        print(profile.fields_BlastConnect.Email())
        print(profile.fields_BlastConnect.Password())
        profile.fields_BlastConnect.Email(txt: "dog@gmail.com")
        profile.fields_BlastConnect.Password(txt: "zQ!gfsh7j")
        profile.fields_BlastConnect.tap_Login_Fail(waitResponseSec: 8)
        profile.tap_Close()
        sleep(5)
    }
    
    /// <#Description#>
    func ttest_Menu_Profile_Coach(){
        print("testProfile ============")
        XCUIDevice.shared().orientation = .faceUp
        //let app = XCUIApplication()
        let fw=UIFramework(app: XCUIApplication())
        // startup screen ------------------------------------------------------
        fw.printinfo(msg: "startup",in_out: 0,fninfo:"fn: \(#function), line: \(#line), file: \(#file)")
        sleep(10) //wait for account info fetch
        let main=ui_Main(fw1:fw,welcome:false)
        let menu=main.tap_LeftMenu()
        let profile=menu.tap_UserProfile()
        
        profile.tap_Bio()
        profile.fields_Bio.FirstName(txt: "ABCDEFGH")
        print(profile.fields_Bio.FirstName())
        print(profile.fields_Bio.LastName())
        print(profile.fields_Bio.LevelOfPlay())
        print(profile.fields_Bio.BirthDate())
        print(profile.fields_Bio.Gender())
        print(profile.fields_Bio.Bats())
        print(profile.fields_Bio.Height())
        print(profile.fields_Bio.Weight())
        
        profile.fields_Bio.BirthDate(year: "1999", month: "August", day: "13")
        profile.fields_Bio.Gender(txt: "Male")
        profile.fields_Bio.Bats(txt: "Right")
        profile.fields_Bio.Height(feet: "6 ft", inches: "7 in")
        profile.fields_Bio.Weight(lbs: "144 lbs")
        profile.fields_Bio.LevelOfPlay(txt: ["Other","Youth","Professional MLB"])
        print(profile.fields_Bio.LevelOfPlay())
        profile.tap_Account()
        print(profile.fields_Account.Email())
        print(profile.fields_Account.AccountType())
        print(profile.fields_Account.PhoneNumber())
        print(profile.fields_Account.ZipCode())
        profile.fields_Account.PhoneNumber(txt: "9998881234")
        profile.fields_Account.ZipCode(txt: "12345")
        profile.fields_Account.AccountType(txt: "Coach")
        sleep(10)
        profile.tap_Coach()
        
        var loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        profile.fields_Coach.AcceptNewStudents(studentlist: ["All","All","All"])
        loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        profile.fields_Coach.AcceptNewStudents(studentlist: ["Local"])
        loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        profile.fields_Coach.AcceptNewStudents(studentlist: ["Online"])
        loginfo=profile.fields_Coach.AcceptNewStudents()
        print(loginfo)
        
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All","All","All"])//reset return none
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All","Hitting","Pitching","Virtual Coaching"])
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All","All","Hitting","Pitching","Virtual Coaching"])
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All"])//return all
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        profile.fields_Coach.ServicesProvided(serviceslist: ["All"])//inverse return none
        loginfo = profile.fields_Coach.ServicesProvided()
        print(loginfo)
        
        
        
        profile.tap_BlastConnect()
        print(profile.uifw.fwapp.descendants(matching: .any).debugDescription)
        print(profile.fields_BlastConnect.Email())
        print(profile.fields_BlastConnect.Password())
        profile.fields_BlastConnect.Email(txt: "dog@gmail.com")
        profile.fields_BlastConnect.Password(txt: "zQ!gfsh7j")
        profile.fields_BlastConnect.tap_Login_Fail(waitResponseSec: 8)
        profile.tap_Close()
        sleep(5)
    }
}
