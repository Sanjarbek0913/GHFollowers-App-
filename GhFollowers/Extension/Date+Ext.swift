//
//  Date+Ext.swift
//  GhFollowers
//
//  Created by Sanjarbek Abdurayimov on 30/01/24.
//

import Foundation

extension Date {
//    func convertToMonthYearFormat() -> String {
//        let dateFormatter        = DateFormatter()
//        dateFormatter.dateFormat = "MMM yyy"
//        return dateFormatter.string(from: self)
//    }
    
    func convertToMonthYearFormat() -> String {
        return formatted(.dateTime.month().year())
    }
}
