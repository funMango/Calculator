//
//  PointProcessor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/15.
//

import Foundation

struct PointProcessor: Processor {
    func process (_ number: String, _ storage: Storage, _ op: Operator) -> String? {
        if let last = number.last, String(last) == op.rawValue, isContainPoint(number) {
            return number
        }
        return number + op.rawValue
    }
    
    func isContainPoint(_ str: String) -> Bool {
        str.filter{ $0 == "."}.count > 0
    }
}
