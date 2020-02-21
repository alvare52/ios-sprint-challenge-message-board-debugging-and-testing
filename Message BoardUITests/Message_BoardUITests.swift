//
//  Message_BoardUITests.swift
//  Message BoardUITests
//
//  Created by Spencer Curtis on 9/14/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest

class Message_BoardUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        continueAfterFailure = false
        app = XCUIApplication()
        
        // NOTE: Keep this setup as is for UI Testing
        app.launchArguments = ["UITesting"]
        app.launch()
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
//    func testSearchbarExists() {
//        // I dont know why even this won't work
//        XCTAssert(searchBar.exists)
//    }
    
    private var searchBar: XCUIElement {
        return app.textFields["SearchBar"]
    }
}
