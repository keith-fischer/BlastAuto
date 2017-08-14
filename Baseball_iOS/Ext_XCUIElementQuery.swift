//
//  Ext_XCUIElementQuery.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/14/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

extension XCUIElementQuery {
    func UIDump(msg:String?=""){
        print(msg!+"XCUIElementQuery>>>>>>>>>>>>>>>>")
        
        debugPrint(self)
        print("_________________")
        print(self.descendants(matching: .any).count)
        print("_________________")
        print(type(of: self))
        print("_________________")
        print(self.debugDescription)
        print("-----------")
        print(self.descendants(matching: .any).debugDescription)
        print("XCUIElementQuery<<<<<<<<<<<<<<<<")
    }
}
