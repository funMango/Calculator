//
//  Convertor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/09.
//

import Foundation

struct Convertor {
    private let MIN_DIGIT = 0
    private let MAX_DIGIT = 0
    
    func toPostfix(_ values: [String]) -> [String] {
        var result: [String] = []
        var opers: [String] = []
        
        for value in values {
            if value == Operator.multiplication.rawValue || value == Operator.division.rawValue {
                guard !opers.isEmpty else { opers.append(value); continue }
                
                while let op = opers.last,
                        (op == Operator.multiplication.rawValue || op == Operator.division.rawValue) {
                    result.append(opers.popLast()!)
                }
                opers.append(value)
            }
            else if value == Operator.addition.rawValue || value == Operator.subtraction.rawValue {
                guard !opers.isEmpty else { opers.append(value); continue }
                
                while let op = opers.popLast() {
                    result.append(op)
                }
                opers.append(value)
            }
            else {
                result.append(value)
            }
        }        
        return result + opers.reversed()
    }
    
    func doubleToString(_ number: Double) -> String {
        
        let formatter = NumberFormatter()
        formatter.minimumFractionDigits = MIN_DIGIT
        formatter.maximumFractionDigits = MAX_DIGIT

        if let formattedString = formatter.string(from: NSNumber(value: number)) {
            return formattedString
        } else {
            return "Conversion failed"
        }
    }    
}

