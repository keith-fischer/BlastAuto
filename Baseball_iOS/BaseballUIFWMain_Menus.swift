//
//  BaseballUIFWMain_Menus.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 7/8/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest


class ui_menuLeft{
    //var icbackbutton: XCUIElement
    let uifw: UIFramework
    init(fw: UIFramework){
        //super init(fw,welcome)
        self.uifw=fw
        print(type(of: self))
        //self.uifw.fwapp.staticTexts[self.uifw.account_name].tap()

        //self.uifw.fwapp.staticTexts["automation1499442505FirstName LastName"].tap()
    }
    func tap_closeMenu(){
        self.uifw.fwapp.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).children(matching: .other).element(boundBy: 0).tap()
        
    }
    
    func tap_UserProfile() -> ui_menu_UserProfile{
        self.uifw.fwapp.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).buttons["avatarNavDrawer"].tap()
        return ui_menu_UserProfile(fw: self.uifw)
    }
}
////select profile
//
//let app = XCUIApplication()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).buttons["avatarNavDrawer"].tap()
//app.navigationBars["User Profile"].staticTexts["User Profile"].tap()
//app.tables.staticTexts["automation1499464123FirstName LastName"].tap()


class ui_menu_UserProfile{
    let uifw: UIFramework
    var fields_Bio: ui_menu_UserProfile.textFields_Bio
    var fields_Account: textFields_Account!=textFields_Account()
    var fields_BlastConnect: textFields_BlastConnect!=textFields_BlastConnect()
    var fields_Coach: textFields_Coach!=textFields_Coach()
    let title: XCUIElement
    init(fw: UIFramework){
        print(type(of: self))
        //self.fields_Bio.uifw=fw
        //super init(fw,welcome)
        self.uifw=fw
        self.fields_Bio=textFields_Bio(fw:self.uifw)
        print(type(of: self))
        //validate title
        self.title = self.uifw.fwapp.navigationBars["User Profile"].staticTexts["User Profile"]
        self.title.tap()
        //validate user profile name
        //let profileuser=self.uifw.account_name+" "+self.uifw.account_Lastname
        //self.uifw.fwapp.tables.staticTexts[profileuser].tap()
        //defaults shows bio tab
        
        
    }
    
    /*************************
     Close user profile
     Also closes the left menu
     returns to screen
     [Progrees|Dashboard|Training|Videos]
     **************************/
    func tap_Close(){
        print(type(of: self))
        self.uifw.fwapp.navigationBars["User Profile"].buttons["icClose"].tap()
    }
    /*************************
     set the Bio fields visible
     **************************/
    func tap_Bio(){
        print(type(of: self))
        self.uifw.fwapp.buttons["Bio"].tap()
        self.title.tap()
    }
    /*************************
     set the Account fields visible
     **************************/
    func tap_Account(){
        print(type(of: self))
        self.uifw.fwapp.buttons["Account"].tap()
        self.title.tap()
        
        //        let profileuser=self.uifw.account_name+" "+self.uifw.account_Lastname
        //        self.uifw.fwapp.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).staticTexts[profileuser].tap()
    }
    
    /*************************
     set the BlastConnect fields visible
     **************************/
    func tap_BlastConnect(){
        print(type(of: self))
        self.title.tap()
        self.uifw.fwapp.buttons["Blast Connect"].tap()
    }
    func tap_Coach(){
        print(type(of: self))
        self.uifw.fwapp.buttons["Coach"].tap()
        self.title.tap()
        
    }
    class textFields_Bio{
        let uifw: UIFramework
        init(fw:UIFramework){
            print(type(of: self))
            self.uifw=fw
            self.uifw.fwapp.debugDescription
        }
        
        func getElement(id:UInt)->XCUIElement{
            return self.uifw.fwapp.tables.children(matching: .cell).element(boundBy: id).children(matching: .textField).element
        }
        
        func FirstName() -> String{
            print(type(of: self))
            let textField = self.getElement(id: 2)
            
            print(type(of: textField))
            //textField.tap()
            return textField.value as! String
        }
        
        func FirstName(txt:String){
            print(type(of: self))
            let textField = self.getElement(id:2)
            print(type(of: textField.debugDescription))
            textField.forceTap(tapcount: 3)
            sleep(3)
            //textField.forceTap()
            //textField.forceTap()
            sleep(3)
            textField.typeText(txt)
            self.uifw.fwapp.toolbars.buttons["Done"]
        }

        func LastName() -> String{
            print(type(of: self))
            let textField = self.getElement(id: 3)
            
            print(type(of: textField))
            //textField.tap()
            return textField.value as! String
        }
        
        func LastName(txt:String){
            print(type(of: self))
            let textField = self.getElement(id:3)
            print(type(of: textField.debugDescription))
            textField.forceTap(tapcount: 3)
            sleep(3)
            //textField.forceTap()
            //textField.forceTap()
            sleep(3)
            textField.typeText(txt)
            self.uifw.fwapp.toolbars.buttons["Done"]
        }
        
        var LevelOfPlay:String{
            get{
                return "test"
            }
            set(newString){
                self.LevelOfPlay=newString
                print(self)
            }
        }
        
        func BirthDate(year:String,month:String,day:String){
            
        }
        
        func BirthDate() ->String{
            return ""
        }
        
        var Gender:String{
            get{
                return "test"
            }
            set(newString){
                self.Gender=newString
                print(self)
            }
        }
        
        var Bats:String{
            get{
                return "test"
            }
            set(newString){
                self.Bats=newString
                print(self)
            }
        }
        
        func Height(feet:String,inches:String){
            
        }
        
        func Height() ->String{
            return ""
        }
        
        var Weight:String{
            get{
                return "test"
            }
            set(newString){
                self.Weight=newString
                print(self)
            }
        }
        
    }
    
    struct textFields_Account{
        var Email:String{
            get{
                return "test"
            }
            
            set(newString){
                self.Email=newString
                print(self)
            }
        }
        
        var Password:String{
            get{
                return "test"
            }
            
            set(newString){
                self.Password=newString
                print(self)
            }
        }
        
        var AccountType:String{
            get{
                return "test"
            }
            
            set(newString){
                self.AccountType=newString
                print(self)
            }
        }
        
        var PhoneNumber:String{
            get{
                return "test"
            }
            
            set(newString){
                self.PhoneNumber=newString
                print(self)
            }
        }
        
        var ZipCode:String{
            get{
                return "test"
            }
            
            set(newString){
                self.ZipCode=newString
                print(self)
            }
        }
        
    }
    
    struct textFields_BlastConnect{
        var Email:String{
            get{
                return "test"
            }
            
            set(newString){
                self.Email=newString
                print(self)
            }
        }
        
        var Password:String{
            get{
                return "test"
            }
            
            set(newString){
                self.Password=newString
                print(self)
            }
        }
    }
    
    struct textFields_Coach{
        var Email:String{
            get{
                return "test"
            }
            
            set(newString){
                self.Email=newString
                print(self)
            }
        }
        
        var Password:String{
            get{
                return "test"
            }
            set(newString){
                self.Password=newString
                print(self)
            }
        }
    }
}







//XCUIDevice.shared().orientation = .portrait
////open menu
//
//let app = XCUIApplication()
//app.navigationBars["NGABaseball.ProgressView"].children(matching: .button).element.tap()
//app.staticTexts["automation1499464123FirstName LastName"].tap()
//
////select profile
//
//let app = XCUIApplication()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).buttons["avatarNavDrawer"].tap()
//app.navigationBars["User Profile"].staticTexts["User Profile"].tap()
//app.tables.staticTexts["automation1499464123FirstName LastName"].tap()
//
////tap bio
//XCUIApplication().buttons["Bio"].tap()
//
////bio fields
////first name
//let app = XCUIApplication()
//let textField = app.tables.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
//textField.tap()
//textField.tap()
//app.buttons["shift"].tap()
//textField.typeText("Z")
//app.toolbars.buttons["Done"].tap()
////lastname
//
//let app = XCUIApplication()
//let textField = app.tables.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element
//textField.tap()
//app.buttons["shift"].tap()
//textField.typeText("Z")
//app.toolbars.buttons["Done"].tap()
//
////  youth
//
//let app = XCUIApplication()
//app.tables.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
//app.collectionViews.staticTexts["Middle School"].tap()
//app.navigationBars["Level of Play"].buttons["icBack"].tap()
//
////  birthd
//
//let app = XCUIApplication()
//app.tables.children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
//
//let datePickersQuery = app.datePickers
//datePickersQuery.pickerWheels["July"].tap()
//datePickersQuery.pickerWheels["12"].tap()
//datePickersQuery.pickerWheels["2000"].tap()
//app.toolbars.buttons["Done"].tap()
//
////  gender
//
//let app = app2
//let textField = app.tables.children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//textField.tap()
//
//let app2 = app
//let femalePickerWheel = app2.pickerWheels["Female"]
//femalePickerWheel.tap()
//
//let doneButton = app.toolbars.buttons["Done"]
//doneButton.tap()
//textField.tap()
//
//let malePickerWheel = app2.pickerWheels["Male"]
//malePickerWheel.tap()
//doneButton.tap()
//textField.tap()
//
//let otherPickerWheel = app2.pickerWheels["Other"]
//otherPickerWheel.tap()
//malePickerWheel.tap()
//femalePickerWheel.tap()
//otherPickerWheel.tap()
//malePickerWheel.tap()
//femalePickerWheel.tap()
//doneButton.tap()
//
////  bats
//
//let app = XCUIApplication()
//app.tables.children(matching: .cell).element(boundBy: 7).children(matching: .textField).element.tap()
//
//let leftPickerWheel = app.pickerWheels["Left"]
//leftPickerWheel.tap()
//app.pickerWheels["Right"].tap()
//leftPickerWheel.tap()
//app.toolbars.buttons["Done"].tap()
//
////  height
//
//let app = XCUIApplication()
//let textField = app.tables.children(matching: .cell).element(boundBy: 8).children(matching: .textField).element
//textField.tap()
//app.pickerWheels["5 ft"].tap()
//app.pickerWheels["3 in"].tap()
//
//let doneButton = app.toolbars.buttons["Done"]
//doneButton.tap()
//textField.tap()
//doneButton.tap()
//
////  weight
//
//let app = XCUIApplication()
//app.tables.children(matching: .cell).element(boundBy: 9).children(matching: .textField).element.tap()
//app.pickerWheels["150 lbs"].tap()
//app.toolbars.buttons["Done"].tap()
//
////tap account
//
//let app = XCUIApplication()
//app.buttons["Account"].tap()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).staticTexts["automation1499464123FirstNameZ LastNameZ"].tap()
//
////account felds
////  email
////     not editable
//let table = XCUIApplication().children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1)
//let textField = table.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//textField.tap()
//table.children(matching: .cell).element(boundBy: 3).children(matching: .secureTextField).element.tap()
//
////  password
////   not editable
//table.children(matching: .cell).element(boundBy: 3).children(matching: .secureTextField).element.tap()
////  accounttype
//
//let app = XCUIApplication()
//let textField = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
//textField.tap()
//app.navigationBars["Account Type"].staticTexts["Account Type"].tap()
//
//let tablesQuery = app.tables
//tablesQuery.staticTexts["I'M A PLAYER"].tap()
//textField.tap()
//
//let iMACoachStaticText = tablesQuery.staticTexts["I'M A COACH"]
//iMACoachStaticText.tap()
//
//let accountChangeAlert = app.alerts["Account Change"]
//accountChangeAlert.staticTexts["Account Change"].tap()
//accountChangeAlert.staticTexts["Are you sure you want to upgrade your account type to coach? Please note that after upgrading to a coach account you cannot downgrade to a player account type."].tap()
//accountChangeAlert.buttons["Cancel"].tap()
//textField.tap()
//iMACoachStaticText.tap()
//accountChangeAlert.buttons["Upgrade"].tap()
//XCUIApplication().children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 4).children(matching: .textField).element.tap()
//
////  phone
//
//let app = XCUIApplication()
//let textField = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 5).children(matching: .textField).element
//textField.tap()
//textField.typeText("94955227280088")
//app.toolbars.buttons["Done"].tap()
//
////  zip
//
//let app = XCUIApplication()
//let textField = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 6).children(matching: .textField).element
//textField.tap()
//textField.typeText("92123")
//app.toolbars.buttons["Done"].tap()
//
////tapblastconn
//
//let app = XCUIApplication()
//app.buttons["Blast Connect"].tap()
//
//let tablesQuery = app.tables
//tablesQuery.staticTexts["BLAST CONNECT"].tap()
//tablesQuery.staticTexts["The insights and tools that empower your daily drive to get better."].tap()
//
////blastconn fields
////email
//
//let app = XCUIApplication()
//let table = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1)
//table.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
//
//let tablesQuery = app.tables
//let clearTextTextField = tablesQuery.textFields.containing(.button, identifier:"Clear text").element
//clearTextTextField.typeText("fischertech")
//
//let moreKey = app.keys["more"]
//moreKey.tap()
//moreKey.tap()
//clearTextTextField.typeText("00@")
//
//let moreKey2 = app.keys["more"]
//moreKey2.tap()
//moreKey2.tap()
//clearTextTextField.typeText("gmaill.cc")
//
//let deleteKey = app.keys["delete"]
//deleteKey.tap()
//deleteKey.tap()
//clearTextTextField.typeText("comm")
//deleteKey.tap()
//deleteKey.tap()
//app.keys["m"].tap()
//clearTextTextField.typeText("m")
//clearTextTextField.tap()
//clearTextTextField.typeText("gmail")
//
//let doneButton = app.toolbars.buttons["Done"]
//doneButton.tap()
//
////pw
//table.children(matching: .cell).element(boundBy: 3).children(matching: .secureTextField).element.tap()
//
//let shiftButton = app.buttons["shift"]
//shiftButton.tap()
//
//let clearTextSecureTextField = tablesQuery.secureTextFields.containing(.button, identifier:"Clear text").element
//clearTextSecureTextField.typeText("Qwerty")
//shiftButton.tap()
//shiftButton.tap()
//moreKey.tap()
//moreKey.tap()
//clearTextSecureTextField.typeText("1!")
//doneButton.tap()
//
////login
//
//let app = XCUIApplication()
//app.tables.buttons["Log In"].tap()
//
//let blastConnectAlert = app.alerts["Blast Connect"]
//blastConnectAlert.staticTexts["Blast Connect"].tap()
//blastConnectAlert.staticTexts["Your password or email was invalid, please try again or reset your password."].tap()
//blastConnectAlert.buttons["OK"].tap()
//
//
////tap coach
//XCUIApplication().buttons["Coach"].tap()
//
////services provided
//
//let app = XCUIApplication()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 2).children(matching: .textField).element.tap()
//
//let servicesNavigationBar = app.navigationBars["Services"]
//servicesNavigationBar.staticTexts["Services"].tap()
//
//let tablesQuery = app.tables
//let allStaticText = tablesQuery.staticTexts["All"]
//allStaticText.tap()
//allStaticText.tap()
//
//let hittingStaticText = tablesQuery.staticTexts["Hitting"]
//hittingStaticText.tap()
//hittingStaticText.tap()
//
//let pitchingStaticText = tablesQuery.staticTexts["Pitching"]
//pitchingStaticText.tap()
//pitchingStaticText.tap()
//
//let infieldStaticText = tablesQuery.staticTexts["Infield"]
//infieldStaticText.tap()
//infieldStaticText.tap()
//
//let outfieldStaticText = tablesQuery.staticTexts["Outfield"]
//outfieldStaticText.tap()
//outfieldStaticText.tap()
//
//let catchingStaticText = tablesQuery.staticTexts["Catching"]
//catchingStaticText.tap()
//catchingStaticText.tap()
//
//let baseRunningStaticText = tablesQuery.staticTexts["Base Running"]
//baseRunningStaticText.tap()
//baseRunningStaticText.tap()
//
//let strengthAndConditioningStaticText = tablesQuery.staticTexts["Strength and Conditioning"]
//strengthAndConditioningStaticText.tap()
//strengthAndConditioningStaticText.tap()
//
//let campsStaticText = tablesQuery.staticTexts["Camps"]
//campsStaticText.tap()
//campsStaticText.tap()
//
//let virtualCoachingStaticText = tablesQuery.staticTexts["Virtual Coaching"]
//virtualCoachingStaticText.tap()
//virtualCoachingStaticText.tap()
//
//
//servicesNavigationBar.buttons["icBack"].tap()
//
////training address
//
//let app = app2
//let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 3).children(matching: .textField).element.tap()
//
//let trainingAddressNavigationBar = app.navigationBars["Training Address"]
//trainingAddressNavigationBar.staticTexts["Training Address"].tap()
//
//let tablesQuery = app.tables
//let textField = tablesQuery.children(matching: .cell).element(boundBy: 1).children(matching: .textField).element
//textField.tap()
//
//let app2 = app
//let moreKey = app2.keys["more"]
//moreKey.tap()
//moreKey.tap()
//textField.typeText("123 sttrreet")
//
//let doneButton = app.toolbars.buttons["Done"]
//doneButton.tap()
//
//let textField2 = tablesQuery.children(matching: .cell).element(boundBy: 2).children(matching: .textField).element
//textField2.tap()
//textField2.typeText("basse townn")
//doneButton.tap()
//
//let textField3 = tablesQuery.children(matching: .cell).element(boundBy: 3).children(matching: .textField).element
//textField3.tap()
//textField3.typeText("az")
//doneButton.tap()
//
//let textField4 = tablesQuery.children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
//textField4.tap()
//textField4.tap()
//textField4.typeText("677854")
//doneButton.tap()
//
//let table = element.children(matching: .table).element
//table.tap()
//table.tap()
//
//let trainingAddressAlert = app.alerts["Training Address"]
//trainingAddressAlert.staticTexts["Training Address"].tap()
//trainingAddressAlert.staticTexts["ZIP Code is invalid."].tap()
//trainingAddressAlert.buttons["OK"].tap()
//textField4.tap()
//
//let deleteKey = app2.keys["delete"]
//deleteKey.tap()
//deleteKey.tap()
//textField4.typeText("3")
//doneButton.tap()
//trainingAddressNavigationBar.buttons["Done"].tap()
//
////phone
//
//let app = XCUIApplication()
//let textField = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 4).children(matching: .textField).element
//textField.tap()
//textField.typeText("949912545887")
//
//let deleteKey = app.keys["Delete"]
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//app.keys["1"].tap()
//textField.typeText("12334")
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//app.keys["3"].tap()
//textField.typeText("34")
//app.toolbars.buttons["Done"].tap()
//
////email
//
//let app = XCUIApplication()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 5).children(matching: .textField).element.tap()
//
//let clearTextTextField = app.tables.textFields.containing(.button, identifier:"Clear text").element
//clearTextTextField.typeText("dog@@gmail.ccom")
//
//let deleteKey = app.keys["delete"]
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//deleteKey.tap()
//clearTextTextField.typeText("om")
//app.toolbars.buttons["Done"].tap()
//
////acceptnew students
//
//let app = XCUIApplication()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element(boundBy: 1).children(matching: .cell).element(boundBy: 6).children(matching: .textField).element.tap()
//
//let providerOptionsNavigationBar = app.navigationBars["Provider Options"]
//providerOptionsNavigationBar.staticTexts["Provider Options"].tap()
//
//let tablesQuery = app.tables
//let allStaticText = tablesQuery.staticTexts["All"]
//allStaticText.tap()
//allStaticText.tap()
//
//let localStaticText = tablesQuery.staticTexts["Local"]
//localStaticText.tap()
//localStaticText.tap()
//
//let onlineStaticText = tablesQuery.staticTexts["Online"]
//onlineStaticText.tap()
//onlineStaticText.tap()
//providerOptionsNavigationBar.buttons["icBack"].tap()
//
//
////close





























//class ui_UserProfile_Bio{
//    var set_FirstName:String{
//        get{
//            return "test"
//        }
//        set(newString){
//            self.set_FirstName=newString
//            print(self)
//        }
//    }
//    struct Rect {
//        var origin = Point()
//        var size = Size()
//        var center: Point {
//            get {
//                let centerX = origin.x + (size.width / 2)
//                let centerY = origin.y + (size.height / 2)
//                return Point(x: centerX, y: centerY)
//            }
//            set(newCenter) {
//                origin.x = newCenter.x - (size.width / 2)
//                origin.y = newCenter.y - (size.height / 2)
//            }
//        }
//    }

////record==================
//XCUIDevice.shared().orientation = .portrait

//
////main toolbar bottom
//let app = XCUIApplication()
//
////left menu
////open menu
//
//let app = XCUIApplication()
////open menu
//app.navigationBars["NGABaseball.ProgressView"].children(matching: .button).element.tap()
////close menu tap far right
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element(boundBy: 0).children(matching: .other).element(boundBy: 0).tap()
//
////profile name
//XCUIApplication().staticTexts["automation1499442505FirstName LastName"].tap()
//
////sensors
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["Sensors"].tap()
//
//let mySensorsNavigationBar = app.navigationBars["My Sensors"]
//mySensorsNavigationBar.staticTexts["My Sensors"].tap()
//tablesQuery.staticTexts["No Sensors Found"].tap()
//tablesQuery.staticTexts["No sensors are setup with your account. Please make sure your sensor is charged prior and then proceed with adding the sensor to your account."].tap()
//tablesQuery.staticTexts["Have no sensor? Learn more about Blast Baseball and purchase a sensor online at: https://blastmotion.com/products/baseball/"].tap()
//
//let blastBaseballNavigationBar = app.navigationBars["Blast Baseball"]
//blastBaseballNavigationBar.staticTexts["Blast Baseball"].tap()
//blastBaseballNavigationBar.buttons["icBack"].tap()
//mySensorsNavigationBar.buttons["Debug"].tap()
//app.navigationBars["Debug"].buttons["icBack"].tap()
//mySensorsNavigationBar.buttons["icClose"].tap()
//
////my bats
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["My Bats"].tap()
//
//let myBatsNavigationBar = app.navigationBars["My Bats"]
//myBatsNavigationBar.staticTexts["My Bats"].tap()
//tablesQuery.staticTexts["33 in / 30 oz"].tap()
//
//let batDetailsNavigationBar = app.navigationBars["Bat Details"]
//batDetailsNavigationBar.staticTexts["Bat Details"].tap()
//batDetailsNavigationBar.buttons["icBack"].tap()
//myBatsNavigationBar.buttons["icClose"].tap()
//
////settings
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["Settings"].tap()
//
//let settingsNavigationBar = app.navigationBars["Settings"]
//settingsNavigationBar.staticTexts["Settings"].tap()
//app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .table).element.tap()
//tablesQuery.staticTexts["Auto Upload Settings"].tap()
//
//let autoVideoUploadStaticText = tablesQuery.cells.containing(.staticText, identifier:"Auto Video Upload").children(matching: .staticText).matching(identifier: "Auto Video Upload").element(boundBy: 0)
//autoVideoUploadStaticText.tap()
//autoVideoUploadStaticText.tap()
//tablesQuery.cells.containing(.staticText, identifier:"Use Cellular Data").children(matching: .staticText).matching(identifier: "Auto Upload when not connected to a WiFi network. Auto Upload files of any size or only those smaller than 50 MB").element(boundBy: 0).tap()
//tablesQuery.staticTexts["Use Cellular Data"].tap()
//tablesQuery.staticTexts["Storage Settings"].tap()
//
//let saveOriginalVideoCellsQuery = tablesQuery.cells.containing(.staticText, identifier:"Save Original Video")
//saveOriginalVideoCellsQuery.children(matching: .staticText).matching(identifier: "Save the full length video capture during a session").element(boundBy: 0).tap()
//saveOriginalVideoCellsQuery.children(matching: .staticText).matching(identifier: "Save Original Video").element(boundBy: 0).tap()
//tablesQuery.staticTexts["Record Settings"].tap()
//tablesQuery.staticTexts["Record Video"].tap()
//tablesQuery.staticTexts["Record Video"].tap()
//tablesQuery.staticTexts["720p HD at 30 fps"].tap()
//
//let staticText = tablesQuery.staticTexts["1080p HD at 30 fps"]
//staticText.tap()
//tablesQuery.staticTexts["4K HD at 30 fps"].tap()
//tablesQuery.staticTexts["1080p HD at 60 fps"].tap()
//staticText.tap()
//
//let recordVideoNavigationBar = app.navigationBars["Record Video"]
//recordVideoNavigationBar.staticTexts["Record Video"].tap()
//recordVideoNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Record Slo-mo"].tap()
//
//let recordSlowMotionNavigationBar = app.navigationBars["Record Slow Motion"]
//recordSlowMotionNavigationBar.staticTexts["Record Slow Motion"].tap()
//tablesQuery.staticTexts["Record Slow Motion"].tap()
//tablesQuery.staticTexts["720p HD at 120 fps"].tap()
//tablesQuery.staticTexts["1080p HD at 120 fps"].tap()
//tablesQuery.staticTexts["720p HD at 240 fps"].tap()
//tablesQuery.staticTexts["A minute of video will be approximately: *230 MB with 720p HD at 120 fps *350 MB with 1080p HD at 120 fps *300 MB with 720p HD at 240 fps"].tap()
//recordSlowMotionNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Progress Goals"].tap()
//
//let showGoalsStaticText = tablesQuery.cells.containing(.staticText, identifier:"Show Goals").children(matching: .staticText).matching(identifier: "Show Goals").element(boundBy: 0)
//showGoalsStaticText.tap()
//showGoalsStaticText.tap()
//settingsNavigationBar.buttons["icClose"].tap()
//
////help tips
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["Help & Tips"].tap()
//
//let helpTipsNavigationBar = app.navigationBars["Help & Tips"]
//helpTipsNavigationBar.staticTexts["Help & Tips"].tap()
//tablesQuery.staticTexts["User Guide"].tap()
//app.navigationBars["User Guide"].staticTexts["User Guide"].tap()
//tablesQuery.staticTexts["App Overview"].tap()
//
//let appOverviewNavigationBar = app.navigationBars["App Overview"]
//appOverviewNavigationBar.staticTexts["App Overview"].tap()
//appOverviewNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["FAQs"].tap()
//
//let faqsNavigationBar = app.navigationBars["FAQs"]
//faqsNavigationBar.staticTexts["FAQs"].tap()
//faqsNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Tech Support"].tap()
//
//let techSupportNavigationBar = app.navigationBars["Tech Support"]
//techSupportNavigationBar.staticTexts["Tech Support"].tap()
//techSupportNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Call Help Desk"].tap()
//
//let alert = app.alerts["1 (855) 632-5278"]
//alert.staticTexts["1 (855) 632-5278"].tap()
//alert.buttons["Cancel"].tap()
//tablesQuery.staticTexts["Legal"].tap()
//
//let legalNavigationBar = app.navigationBars["Legal"]
//legalNavigationBar.staticTexts["Legal"].tap()
//tablesQuery.staticTexts["Regulatory"].tap()
//
//let regulatoryNavigationBar = app.navigationBars["Regulatory"]
//regulatoryNavigationBar.staticTexts["Regulatory"].tap()
//regulatoryNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Privacy Policy"].tap()
//
//let privacyPolicyNavigationBar = app.navigationBars["Privacy Policy"]
//privacyPolicyNavigationBar.staticTexts["Privacy Policy"].tap()
//privacyPolicyNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["Terms of Use"].tap()
//
//let termsOfUseNavigationBar = app.navigationBars["Terms of Use"]
//termsOfUseNavigationBar.staticTexts["Terms of Use"].tap()
//termsOfUseNavigationBar.buttons["icBack"].tap()
//legalNavigationBar.buttons["icBack"].tap()
//tablesQuery.staticTexts["About"].tap()
//
//let aboutNavigationBar = app.navigationBars["About"]
//aboutNavigationBar.staticTexts["About"].tap()
//tablesQuery.staticTexts["Version 4.1.0"].tap()
//tablesQuery.staticTexts["THE COMPLETE HITTING SOLUTION"].tap()
//tablesQuery.children(matching: .cell).element(boundBy: 5).children(matching: .staticText).element.tap()
//aboutNavigationBar.buttons["icBack"].tap()
//helpTipsNavigationBar.buttons["icClose"].tap()
//
////whats new
//
//let app = XCUIApplication()
//let tablesQuery = app.tables
//tablesQuery.buttons["What's New"].tap()
//tablesQuery.staticTexts["WHAT'S NEW"].tap()
//tablesQuery.staticTexts["Coach Mode"].tap()
//tablesQuery.textViews.containing(.link, identifier:"Learn more about Coach Mode.").element.tap()
//tablesQuery.staticTexts["Improved Baseball Metrics & Goals"].tap()
//tablesQuery.textViews.containing(.link, identifier:"Learn more about the Improved Baseball Metrics.").element.tap()
//app.navigationBars["NGABaseball.BLView"].buttons["icClose"].tap()
//
////logout
//XCUIApplication().buttons["Logout (STG)"].tap()
////returns you to startup screen