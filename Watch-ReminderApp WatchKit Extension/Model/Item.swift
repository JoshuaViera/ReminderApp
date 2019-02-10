//
//  Item.swift
//  Watch-ReminderApp WatchKit Extension
//
//  Created by Joshua Viera on 2/6/19.
//  Copyright © 2019 Joshua Viera. All rights reserved.
//

import Foundation

struct Item: Codable, Equatable {
    let title: String
    let description: String
    let createdAt: String
    public var dateFormattedString: String {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = createdAt
        if let date = isoDateFormatter.date(from: createdAt) {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMMM d, yyyy hh:mm a" // January 11, 2019 3:27pm
            formattedDate = dateFormatter.string(from: date)
        }
        return formattedDate
    }
    public var date: Date {
        let isoDateFormatter = ISO8601DateFormatter()
        var formattedDate = Date()
        if let date = isoDateFormatter.date(from: createdAt) {
            formattedDate = date
        }
        return formattedDate
    }
}
