//
//  DataPersistenceManager.swift
//  Watch-ReminderApp WatchKit Extension
//
//  Created by Joshua Viera on 2/6/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import Foundation

final class DataPersistenceManager {
    static func documentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    static func filepathToDocumentsDirectory(filename: String) -> URL {
        return documentsDirectory().appendingPathComponent(filename)
    }
}
