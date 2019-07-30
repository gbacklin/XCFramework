//
//  ViewController.swift
//  UniversalTV
//
//  Created by Gene Backlin on 7/30/19.
//  Copyright © 2019 Gene Backlin. All rights reserved.
//

import UIKit
import UniKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.text = UniKit.hello("Adam Ant")
    }


}

