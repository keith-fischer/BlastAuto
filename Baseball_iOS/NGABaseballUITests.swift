//
//  NGABaseballUITests.swift
//  NGABaseballUITests
//
//  Created by New Computer on 6/21/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation

//class Baseball_UI{
//    var app: XCUIElement
//    init(app: XCUIElement){
//        self.app = app
//    }
//    func Title(){
//        print(self.app.title)
//    }
//}



class NGABaseballUITests: XCTestCase {
    //static var _accountemail:String = ""
    //static var _pw: String = "@utoMat1on"
    //static var _accountname: String = ""
    var TESTDATA: TestData? = nil
    var accountname: String {
        get {
            return TESTDATA!.getTestValueStr(fieldname: "accountname")

        }
        set(newvalue) {
            TESTDATA?.setTestValue(fieldname: "accountname", fieldvalue: newvalue)
        }
    }
    
    var accountemail: String {
        get {
            return TESTDATA!.getTestValueStr(fieldname: "accountemail")
        }
        set(newvalue) {
            TESTDATA?.setTestValue(fieldname: "accountemail", fieldvalue: newvalue)
        }
    }
    
    var pw: String {
        get {
            return TESTDATA!.getTestValueStr(fieldname: "pw")
        }
        set(newvalue) {
            TESTDATA?.setTestValue(fieldname: "pw", fieldvalue: newvalue)
        }
    }
    
    override func setUp() {
        super.setUp()
        TESTDATA = TestData(testname: "test1")
        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
//        let app = XCUIApplication()
//        setupSnapshot(app)
//        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    //=====================================================
    //  T E S T S
    // default test func names are prefixed with "test"
    // All prefixed tests will run
    // TODO: Need to impleament reflection so parameter string can call test func
    //=====================================================
    /// Entry for the test driver
    func test_Tests(){
        let runtests=["ttest_Main_Basic","ttest_Menu_Profile_Player"]
        self.ttestdotest(tests: runtests)
    }
    
    /// for debugging and recording
    func test1(){
        print("test1")
//        XCUIDevice.shared().orientation = .portrait
//        let app = XCUIApplication()
//        app.tabBars.buttons["icVideoCamera"].tap()
//        app.buttons["Long 5210"].tap()
//        app.buttons["271 Maple"].tap()
//        app.navigationBars["My Bats"].buttons["icBack"].tap()
//        app.buttons["icClose"].tap()

        
    }
    
    
    func test2(){
        print("test2")
    }
    
    func test3(){
        print("test3")
    }
    
}



