//
//  ViewController.swift
//  TestXCFrameworkiOS
//
//  Created by Gene Backlin on 5/29/20.
//  Copyright © 2020 Gene Backlin. All rights reserved.
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

