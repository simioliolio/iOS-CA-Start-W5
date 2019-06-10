//
//  ThingsNearbyTests.swift
//  ThingsNearbyTests
//
//  Created by Simon Haycock on 2/5/19.
//  Copyright © 2019 Expedia. All rights reserved.
//

import XCTest
@testable import ThingsNearby

class ThingsNearbyTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_decodePageJSON_decodeSuccessfully() {
        
        // There may not be data, so we can use 'if let' to make
        // a new variable, which unwraps the optional returned by
        // the 'data' method.
        if let jsonInput = pageResponseJSON.data(using: .utf8) {
            
            // 'decode' is a throwing method, so needs to be handled in
            // some way. One way is to use a do-catch.
            do {
                let json = try JSONDecoder().decode(Page.self, from: jsonInput)
                print(json)
            } catch {
                XCTFail("something went wrong. error: \(error)")
            }
            
        } else {
            XCTFail("couldn't get data from string")
        }
    }

}
