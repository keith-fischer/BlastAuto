//
//  Ext_XCUIElement.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/14/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

// MARK: - <#Description#>
extension XCUIElement {
    /**
     Removes any current text in the field before typing in the new value
     - Parameter text: the text to enter into the field
     */
    /// <#Description#>
    func clearText() {
        let backspace = "\u{8}"
        let backspaces = Array(((self.value as? String) ?? "").characters).map { _ in backspace }
        self.typeText(backspaces.joined(separator: ""))
    }
    /// <#Description#>
    func UIDump(msg:String?=""){
        print(msg!+"XCUIElement>>>>>>>>>>>>>>>>")
        debugPrint(self)
        print("_________________")
        print(self.descendants(matching: .any).count)
        print("_________________")
        print(type(of: self))
        print("_________________")
        print(self.debugDescription)
        print("-----------")
        print(self.descendants(matching: .any).debugDescription)
        print("XCUIElement<<<<<<<<<<<<<<<<")
    }
    //    func dodump(){
    //        print(self.descendants(matching: .any).debugDescription)
    //
    //        for ele in self.descendants(matching: .any){
    //            ele.dodump()
    //        }
    //    }
    /// <#Description#>
    ///
    /// - Parameter text: <#text description#>
    func typeSlow(text: String) {
        for i in text.characters {
            self.typeText(String(i))
        }
    }
    
    /// <#Description#>
    ///
    /// - Parameter text: <#text description#>
    func clearAndEnterText(text: String) {
        guard let stringValue = self.value as? String else {
            XCTFail("Tried to clear and enter text into a non string value")
            return
        }
        self.tap()
        let deleteString = stringValue.characters.map { _ in XCUIKeyboardKeyDelete }.joined(separator: "")
        self.typeText(deleteString)
        self.typeText(text)
    }
    /*************************
     UI Synch
     **************************/
    /// <#Description#>
    ///
    /// - Parameters:
    ///   - element: <#element description#>
    ///   - wait: <#wait description#>
    /// - Returns: <#return value description#>
    func waitForElementToAppear(_ element: XCUIElement, wait: Double?=5) -> Bool {
        let expectation = XCTKVOExpectation(keyPath: "exists", object: element,
                                            expectedValue: true)
        let result = XCTWaiter().wait(for: [expectation], timeout: wait!)
        return result == .completed
    }
    
    /// <#Description#>
    ///
    /// - Parameter tapcount: <#tapcount description#>
    func forceTap(tapcount: uint?=1) {
        print(type(of: self))
        let ii=Int(tapcount!)
        for _ in stride(from: 0, to: ii, by: 1){
            if self.isHittable {
                print("tap)")
                self.tap()
                //let coordinate: XCUICoordinate = self.coordinate(withNormalizedOffset: CGVector(dx: 0.0, dy: 0.0))
                //coordinate.tap()
            } else {
                print("Forced Tap")
                let coordinate: XCUICoordinate = self.coordinate(withNormalizedOffset: CGVector(dx: 0.0, dy: 0.0))
                coordinate.tap()
            }
        }
    }
}
