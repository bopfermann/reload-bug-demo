//
//  ExtensionDelegate.swift
//  reload-bug-demo WatchKit Extension
//
//  Created by Brandon Opfermann on 8/29/15.
//  Copyright © 2015 E7 Solutions. All rights reserved.
//

import WatchKit

class ExtensionDelegate: NSObject, WKExtensionDelegate {

    func applicationDidFinishLaunching() {
        let data = ["1","2","3"]
        let controllers = Array(count: data.count, repeatedValue: "target")
        WKInterfaceController.reloadRootControllersWithNames(controllers, contexts: data)
    }

}
