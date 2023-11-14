//
//  Convertor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/09.
//

import Foundation

struct Convertor {
    func toPostfix(_ values: [String]) -> [String] {
        var result: [String] = []
        var opers: [String] = []
        
        for value in values {
            if value == "x" || value == "÷" {
                guard !opers.isEmpty else { opers.append(value); continue }
                
                while let op = opers.last, (op == "x" || op == "÷") {
                    result.append(opers.popLast()!)
                }
                opers.append(value)
            }
            else if value == "+" || value == "-" {
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
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2

        if let formattedString = formatter.string(from: NSNumber(value: number)) {
            return formattedString
        } else {
            return "Conversion failed"
        }
    }    
}

