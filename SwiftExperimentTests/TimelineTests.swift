//
//  TimelineTests.swift
//  SwiftExperiment
//
//  Created by George Pimm on 13/11/2015.
//  Copyright © 2015 George Pimm. All rights reserved.
//

import XCTest
@testable import SwiftExperiment

class TimelineTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    let tl = SwiftExperiment.Timeline()
    
    tl.add_object(SwiftExperiment.TimelineObject(construction: 0.0, destruction: 5.0));
  }
  
  func testPerformanceExample() {
    // This is an example of a performance test case.
    self.measureBlock {
      // Put the code you want to measure the time of here.
    }
  }
  
}
