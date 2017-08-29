//
//  NGABaseballUITests.swift
//  NGABaseballUITests
//
//  Created by New Computer on 6/21/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import XCTest
import Foundation


class NGABaseballUITests: XCTestCase {
    //static var _accountemail:String = ""
    //static var _pw: String = "@utoMat1on"
    //static var _accountname: String = ""
    //var TESTDATA: TestData? = nil

    
    override func setUp() {
        super.setUp()
        
        
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        sleep(2)
        

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
    func ttest_Tests(){
        var runtests:[String]
        runtests=["ttestMain_Progress_SwipeCharts","ttest_Main_Basic","ttest_Menu_Profile_Player"]
        //runtests=["ttestMain_Progress_SwipeCharts"]
        //self.ttestdotest(tests: runtests)
    }
    
    
//    /// iterate time/iterate low high/page through stats
//    func test_ScrapeProgressStats{
//
//        
//        
//        print("test1")
//        sleep(10)
//        XCUIDevice.shared().orientation = .portrait
//        let lowhigh:[String]=["Lowest","Highest"]
//        let statnames: [String]=["Bat Speed","Peak Hand Speed","Attack Angle","Time to Contact","Blast Factor","Power","Peak Bat Speed","On Plane","Body Rotation","Vertical Bat Angle"]
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
//        
//    }
    /// for debugging and recording
    func test_1(){
        print("test1")
        sleep(10)
        XCUIDevice.shared().orientation = .portrait
        
        let app = XCUIApplication()
        app.buttons["Day"].tap()
        //tap low
        app.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 0).tap()
        
        app.staticTexts["Lowest Bat Speed"].tap()
        
        let staticText = app.staticTexts["271 Maple"]
        staticText.tap()
        staticText.tap()
        
        let collectionViewsQuery = app.collectionViews
        var elementLabels = [String]()
        let statnames: [String]=["Bat Speed","Peak Hand Speed","Attack Angle","Time to Contact","Blast Factor","Power","Peak Bat Speed","On Plane","Body Rotation","Vertical Bat Angle"]
        var stat:String=""
        var lastel:XCUIElement
        var firstel:XCUIElement
        //var lastindex:UInt32=0
        for stat in statnames{
            
            for i in 0..<collectionViewsQuery.staticTexts.count {
                elementLabels.append (stat+" - " + collectionViewsQuery.staticTexts.element(boundBy: i).label)
                //lastindex=i
                
            }
            lastel=collectionViewsQuery.staticTexts.element(boundBy: 2)
            firstel=app.staticTexts["Lowest Bat Speed"]
            //while lastel.isHittable {
            lastel.press(forDuration: 1, thenDragTo: firstel)
            //}
        }
        print (elementLabels)
        
//        collectionViewsQuery.staticTexts["Bat Speed"].tap()
//
//        let staticText2 = collectionViewsQuery.staticTexts["35.8"]
//        staticText2.tap()
//        
//        let mphStaticText = collectionViewsQuery.staticTexts["MPH"]
//        mphStaticText.tap()
//        staticText2.swipeUp()
//        collectionViewsQuery.staticTexts["Peak Hand Speed"].tap()
//        collectionViewsQuery.staticTexts["9.5"].tap()

        app.buttons["icClose"].tap()
        
//        XCUIDevice.shared().orientation = .portrait
//        
//        var app = XCUIApplication()
//        var element2 = app.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//        var element = element2.children(matching: .other).element(boundBy: 3)
//        element.tap()
//        element2.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 0).tap()
//        //in the profile screen
//        app.staticTexts["Lowest Bat Speed"].tap()
//        
//        var collectionViewsQuery2 = app.collectionViews
//        var collectionViewsQuery = collectionViewsQuery2
//        collectionViewsQuery.staticTexts["Bat Speed"].tap()
//        collectionViewsQuery.staticTexts["35.8"].tap()
//        collectionViewsQuery.staticTexts["MPH"].tap()
//        //collectionViewsQuery2.cells.children(matching: .other).element.children(matching: .other).element(boundBy: 1).swipeUp()
//        
//        var verticalBatAngleStaticText = collectionViewsQuery.staticTexts["Vertical Bat Angle"]
//        verticalBatAngleStaticText.
//        verticalBatAngleStaticText.tap()
//        
//        var staticText = collectionViewsQuery.staticTexts["-17"]
//        staticText.tap()
//        collectionViewsQuery.staticTexts["Degrees"].tap()
//        staticText.tap()
//        verticalBatAngleStaticText.tap()
//        
//        var staticText2 = collectionViewsQuery.staticTexts["47"]
//        staticText2.tap()
//        
//        var bodyRotationStaticText = collectionViewsQuery.staticTexts["Body Rotation"]
//        bodyRotationStaticText.tap()
//        staticText2.tap()
//        collectionViewsQuery.staticTexts["Percent"].tap()
//        //bodyRotationStaticText.swipeDown()
//        //collectionViewsQuery.staticTexts["40"].swipeUp()
//        staticText2.tap()
//        staticText2.tap()
//        bodyRotationStaticText.tap()
//        collectionViewsQuery.staticTexts["On Plane"].tap()
//        
//        //let app = XCUIApplication()
//        let iccloseButton = app.buttons["icClose"]
//        iccloseButton.tap()
//        app.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 1).tap()
//        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
//        app.staticTexts["Highest Bat Speed"].tap()
//        app.staticTexts["271 Maple"].tap()
//        
//        collectionViewsQuery = app.collectionViews
//        //let collectionViewsQuery = collectionViewsQuery2
//        collectionViewsQuery.staticTexts["Bat Speed"].tap()
//        
//        staticText = collectionViewsQuery.staticTexts["48.4"]
//        staticText.tap()
//        collectionViewsQuery.staticTexts["MPH"].tap()
//        staticText.tap()
//        
//        staticText2 = collectionViewsQuery.staticTexts["14.6"]
//        staticText2.tap()
//        collectionViewsQuery.staticTexts["Attack Angle"].tap()
//        collectionViewsQuery.staticTexts["Peak Hand Speed"].tap()
//        
//        element = collectionViewsQuery2.cells.children(matching: .other).element.children(matching: .other).element(boundBy: 1)
//        element.tap()
//        staticText.tap()
//        staticText.tap()
//        staticText2.tap()
//        //staticText.swipeUp()
//        staticText.tap()
//        element.tap()
//        staticText.tap()
//        //staticText.swipeUp()
//        staticText.tap()
//        staticText2.swipeUp()
//        collectionViewsQuery2.children(matching: .cell).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element(boundBy: 1).tap()
//        collectionViewsQuery2.children(matching: .cell).element(boundBy: 1).children(matching: .other).element.children(matching: .other).element(boundBy: 1).tap()
//        iccloseButton.tap()
//=============
//        XCUIDevice.shared().orientation = .portrait
//        app.scrollViews["AppSwitcherScrollView"].otherElements["Baseball"].tap()
//        XCUIDevice.shared().orientation = .portrait
//        
//        let app2 = app
//        app2.tables.buttons["Log In"].tap()
//        XCUIDevice.shared().orientation = .portrait
//        XCUIDevice.shared().orientation = .portrait
//        
//        let app = app2
//        let element = app.scrollViews.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
//        element.children(matching: .other).element(boundBy: 3).tap()
//        element.children(matching: .other).element(boundBy: 2).children(matching: .button).element(boundBy: 0).tap()
//        
//        let collectionViewsQuery = app2.collectionViews
//        collectionViewsQuery.staticTexts["Bat Speed"].tap()
//        app.staticTexts["Lowest Bat Speed"].tap()
//        app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .other).element.tap()
//        app.staticTexts["271 Maple"].tap()
//        
//        let test12345StaticText = collectionViewsQuery.staticTexts["test12345"]
//        test12345StaticText.tap()
//        
//        let mphStaticText = collectionViewsQuery.staticTexts["MPH"]
//        mphStaticText.tap()
//        test12345StaticText.swipeLeft()
//        collectionViewsQuery.staticTexts["Peak Hand Speed"].tap()
//        
//        let staticText = collectionViewsQuery.staticTexts["9.5"]
//        staticText.tap()
//        mphStaticText.tap()
//        staticText.tap()
//        staticText.tap()
//        app.buttons["icClose"].tap()
        
    }
    
    
    func test2(){
        print("test2")
    }
    
    func test3(){
        print("test3")
    }
    
}



