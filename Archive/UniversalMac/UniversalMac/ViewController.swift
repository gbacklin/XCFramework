//
//  ViewController.swift
//  UniversalMac
//
//  Created by Gene Backlin on 7/27/19.
//  Copyright © 2019 Gene Backlin. All rights reserved.
//

import Cocoa
import UniKit

class ViewController: NSViewController {
    @IBOutlet weak var myLabel: NSTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        myLabel.stringValue = UniKit.hello("Adam Ant")
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

