//
//  BrewsTests.swift
//  BrewsTests
//
//  Created by Nico Hämäläinen on 01/10/15.
//  Copyright © 2015 sizeof.io. All rights reserved.
//

import XCTest
@testable import Brews

extension Int {
  func timesWithIndex(iterator: (Int) -> Void) -> Int{
    for i in 0..<self {
      iterator(i)
    }
    
    return self
  }
}

func time <A> (@autoclosure f: () -> A) -> (result:A, duration: String) {
  let startTime = CFAbsoluteTimeGetCurrent()
  let result = f()
  let endTime = CFAbsoluteTimeGetCurrent()
  return (result, "Elapsed time is \(endTime - startTime) seconds.")
}

func swift_fibonacci(n: Int64) -> Int64 {
  if n < 2 {
    return n
  } else {
    return swift_fibonacci(n-1) + swift_fibonacci(n-2)
  }
}

class BrewsTests: XCTestCase {
  
  override func setUp() {
    super.setUp()
    // Put setup code here. This method is called before the invocation of each test method in the class.
  }
  
  override func tearDown() {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    super.tearDown()
  }
  
  func testExample() {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
  }
  
  func testRustPerformance() {
    time(fibonacci(100))
  }
  
  func testSwiftPerformance() {
    time(swift_fibonacci(100))
  }
  
}
