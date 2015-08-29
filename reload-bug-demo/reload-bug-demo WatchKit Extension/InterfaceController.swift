//
//  InterfaceController.swift
//  reload-bug-demo WatchKit Extension
//
//  Created by Brandon Opfermann on 8/29/15.
//  Copyright © 2015 E7 Solutions. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var num: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        num.setText((context as! String))
    }

    @IBAction func reload() {
        let data = ["1","2","3"]
        let controllers = Array(count: data.count, repeatedValue: "target")
        WKInterfaceController.reloadRootControllersWithNames(controllers, contexts: data)
    }
}
