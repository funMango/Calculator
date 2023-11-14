//
//  Storage.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/09.
//

import Foundation

class Storage {
    var values: [String] = []
    var isActOp: Bool = false
    var lastNumber: String?
    var lastOper: String?
    var isActEqual = false
    
    func getFirst() -> String? {
        if !values.isEmpty {
            return values[0]
        }
        return nil
    }
    
    func getLast() -> String? {
        if !values.isEmpty {
            return values[values.count - 1]
        }
        return nil
    }
    
    func push(_ value: String) {
        values.append(value)
    }
    
    func canCalculate() -> Bool {
        if values.count < 2 {
            return false
        }
        return values.count % 2 == 0
    }
    
    func isEven() -> Bool {
        if values.count == 0 {
            return false
        }
        return values.count % 2 == 0
    }
                                   
    func reset() {
        values = []
        isActOp = false        
    }
}
