//
//  ViewController.swift
//  ClickCounter
//
//  Created by Gabriele on 3/16/16.
//  Copyright © 2016 Ashley Donohoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Label 1
        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = String(count)
        
        self.view.addSubview(label)
        self.label = label
        
        // Label 2
        var label2 = UILabel()
        label2.frame = CGRectMake(150, 200, 60, 60)
        label2.text = String(count)
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        // Button
        var button = UIButton()
        button.frame = CGRectMake(150, 250, 90, 60)
        button.setTitle("Increment", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(button)
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
    
        // Button2
        var button2 = UIButton()
        button2.frame = CGRectMake(150, 300, 90, 60)
        button2.setTitle("Decrement", forState: .Normal)
        button2.setTitleColor(UIColor.blueColor(), forState: .Normal)
        
        self.view.addSubview(button2)
        button2.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        var changeButton = UIButton()
        changeButton.frame = CGRectMake(150, 375, 90, 60)
        changeButton.setTitle("Change", forState: .Normal)
        changeButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        
        self.view.addSubview(changeButton)
        changeButton.addTarget(self, action: "changeBackgroundColor", forControlEvents: UIControlEvents.TouchUpInside)
        
        // Set background color
        
        self.view.backgroundColor = UIColor.yellowColor()
    }
    

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func changeBackgroundColor() {
        self.view.backgroundColor = UIColor.redColor()
    }
}

