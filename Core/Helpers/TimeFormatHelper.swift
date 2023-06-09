//
//  TimeFormatHelper.swift
//  NewsReader
//
//  Created by Florian Marcu on 3/28/17.
//  Copyright © 2017 iOS App Templates. All rights reserved.
//

import Foundation

class TimeFormatHelper {

    static func string(for date: Date, format: String) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: date)
    }

    static func chatString(for date: Date) -> String {
        let calendar = NSCalendar.current
        if calendar.isDateInToday(date) {
            return self.string(for: date, format: "HH:mm")
        }
        return self.string(for: date, format: "MMM dd")
    }
}

/// This section related to format date and is used for Dating App
extension String {
    var convertToDate: Date? {
        return dateFormatter.date(from: self)
    }
}

extension Date {
    var convertToString: String {
        return dateFormatter.string(from: self)
    }
}

private let dateFormatter: DateFormatter = {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
    dateFormatter.timeZone = TimeZone(secondsFromGMT: 0)
    dateFormatter.locale = Locale(identifier: "en_US_POSIX")
    return dateFormatter
}()
