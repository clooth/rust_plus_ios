//
//  MainViewController.swift
//  Brews
//
//  Created by Nico Hämäläinen on 02/10/15.
//  Copyright © 2015 sizeof.io. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
  /// Label for showing the current fibonacci value
  lazy var fibonacciLabel: UILabel = {
    let label = UILabel(frame: CGRectMake(20, 20, self.view.frame.width - 40.0, 40.0))
    label.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.010)
    label.textAlignment = .Center
    label.textColor = UIColor.blackColor().colorWithAlphaComponent(0.5)
    label.layer.cornerRadius = 4.0
    label.layer.borderColor = UIColor.blackColor().colorWithAlphaComponent(0.080).CGColor
    label.layer.borderWidth = 1.0
    label.layer.masksToBounds = true
    return label
  }()
  
  var fibonacciTimer: NSTimer?
  var fibonacciCount: Int64 = 1
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    edgesForExtendedLayout = .None
    title = "Brews"
  
    view.addSubview(fibonacciLabel)
    
//    update()
  }
  
  func update() {
    fibonacciTimer?.invalidate()
    fibonacciTimer = nil
    
    fibonacciLabel.text = "Fibonacci count: \(fibonacci(fibonacciCount))"
    fibonacciCount++
    
    fibonacciTimer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "update", userInfo: nil, repeats: true)
  }

}
