//
//  Ext_XCUIApplication.swift
//  NextGenIOSUniversal
//
//  Created by New Computer on 8/14/17.
//  Copyright © 2017 Blast Motion, Inc. All rights reserved.
//

import Foundation
import XCTest

extension XCUIApplication {
    
    func filterCells(containing labels: [String]) -> XCUIElementQuery {
        var cells = self.cells
        
        for label in labels {
            cells = cells.containing(NSPredicate(format: "label CONTAINS %@", label))
        }
        return cells
    }
    
    func cell(containing labels: String...) -> XCUIElement {
        return filterCells(containing: labels).element
    }
    
    func cell(containing labels: [String]) -> XCUIElement {
        return filterCells(containing: labels).element
    }
    
    func tapCell(containing labels: String...) {
        cell(containing: labels).tap()
    }
    
    func swipeCellLeft(containing labels: String...) {
        cell(containing: labels).swipeLeft()
    }
    
    func swipeCellRight(containing labels: String...) {
        cell(containing: labels).swipeRight()
    }
    
    func existsCell(containing labels: String...) -> Bool {
        return cell(containing: labels).exists
    }
}

