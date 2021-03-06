//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    
    /// So I don't need to keep making one
    //var app: XCUIApplication!
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }
    
    /// Not an actual search bar, I just thought it was one
    private var searchBar: XCUIElement {
        return app.tables["Empty list"].textFields["Create a new thread:"]
        //return app.textFields["MessageThreadTableViewController.SearchBar"]
    }
    
    /// Do this everytime it runs
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        let app = XCUIApplication()
        
        // NOTE: Keep this setup as is for UI Testing
        app.launchArguments = ["UITesting"]
        app.launch()
    }
    
    /// Tests to see if you can enter a thread into search bar and if it creates a cell
    func testSearchbarEnters() {
        let cell = app.cells.element(boundBy: 0)
        searchBar.tap()
        searchBar.typeText("Goobers")
        app.buttons["Return"].tap()
        XCTAssert(cell.exists)
    }
    
    /// Tests to see if the back bar works after you tap on a cell
    func testFirstBackBar() {
        let cell = app.cells.element(boundBy: 0)
        searchBar.tap()
        searchBar.typeText("Goobers")
        app.buttons["Return"].tap()
        cell.tap()
        app.navigationBars.buttons.element(boundBy: 0).tap()
        XCTAssert(cell.exists)
    }
    
    /*
    func testExpectation() {
        let didFinish = expectation(description: "didFinish")
        var name = ""
        let url = URL(string: "https://apple.com")!

        URLSession.shared.dataTask(with: url) { (data, _, _) in
            didFinish.fulfill()
            name = "Dave"
        }.resume()

        wait(for: [didFinish], timeout: 5) // blocking sync wait

        // Assertion only happens after the time out, or web request completes
        XCTAssertEqual("Dave", name)
    }
    */
}
