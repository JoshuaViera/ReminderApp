//
//  DetailInterfaceController.swift
//  Watch-ReminderApp WatchKit Extension
//
//  Created by Joshua Viera on 2/9/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import WatchKit
import Foundation


class DetailInterfaceController: WKInterfaceController {

    
    @IBOutlet weak var detailLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        if let detailData = context as? String {
            detailLabel.setText(detailData)
        }
        // Configure interface objects here.
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
