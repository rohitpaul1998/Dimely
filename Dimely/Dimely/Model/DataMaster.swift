//
//  DataMaster.swift
//  Dimely
//
//  Created by Rohit Paul on 3/7/24.
//

import Foundation

class DataMaster {
    static let shared = DataMaster()
    var expenses: [Expense] = []
    var categories: [ExpenseCategory] = []
}
