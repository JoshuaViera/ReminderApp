//
//  InterfaceController.swift
//  Watch-ReminderApp WatchKit Extension
//
//  Created by Joshua Viera on 2/6/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    
    @IBOutlet weak var tableView: WKInterfaceTable!
    
    var tableData = ["Joshua"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        loadTableViewData()
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
    
    
    private func loadTableViewData(){
        tableView.setNumberOfRows(tableData.count, withRowType: "RowController")
        // setNumberOfRows(numberOfRows, withRowType)
        //the first one is the number of rows, [array].count
        //second one is a reference to what type they are
        
        //binds the text to the cells
        for (index, rowModel) in tableData.enumerated(){
            if let rowController = tableView.rowController(at: index) as? RowController {
                rowController.rowLabel.setText(rowModel)
            }
        }

    }
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        pushController(withName: "DetailInterfaceController", context: tableData[rowIndex])
    }
}
