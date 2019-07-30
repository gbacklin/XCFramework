//
//  InterfaceController.swift
//  UniversalWatch Extension
//
//  Created by Gene Backlin on 7/27/19.
//  Copyright © 2019 Gene Backlin. All rights reserved.
//

import WatchKit
import Foundation
import UniKit


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var myLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        myLabel.setText(UniKit.hello("Adam Ant"))
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
