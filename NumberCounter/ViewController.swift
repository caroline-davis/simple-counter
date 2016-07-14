//
//  ViewController.swift
//  NumberCounter
//
//  Created by Caroline Davis on 14/07/2016.
//  Copyright © 2016 Caroline Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label
        var label = UILabel()
        label.frame = CGRectMake(170,150,60,60)
        label.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        //Increment Button
        var button = UIButton()
        button.frame = CGRectMake(100,200,50,50)
        button.setTitle("+", forState: .Normal)
        button.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        var decrementButton = UIButton()
        decrementButton.frame = CGRectMake(200,200,50,50)
        decrementButton.setTitle("-", forState: .Normal)
        decrementButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
        self.view.backgroundColor = UIColor.orangeColor()
    }
    func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
        self.view.backgroundColor = UIColor.yellowColor()
    }

}

