//
//  Calculator.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/09.
//

import Foundation

struct Calculator {
    let convertor = Convertor()
    
    func calculate(_ storage: Storage) -> String {
        let profix = convertor.toPostfix(storage.values)
        let result = calcPostFix(profix)
        return convertor.doubleToString(result)        
    }
    
    func calculate(_ number1: String, _ number2: String, _ op: String) -> String {
        if let num1 = Double(number1), let num2 = Double(number2) {
            let result = calculate(num1, num2, op)
            return convertor.doubleToString(result)
        }
        return number2
    }
    
    func calcPostFix(_ values: [String]) -> Double {
        var numbers : [Double] = []
        
        for value in values {
            if let num = Double(value) {
                numbers.append(num)
            }
            else {
                if let number = numbers.popLast(), let target = numbers.popLast() {
                    numbers.append(calculate(number, target, value))
                }
            }
        }    
        return numbers[0]
    }
    
    func calculate(_ number: Double, _ target: Double, _ op: String) -> Double {
        switch op {
            case Operator.addition.rawValue:
                return target + number
                
            case Operator.subtraction.rawValue:
                    return target - number
                    
            case Operator.multiplication.rawValue:
                    return target * number
                    
            case Operator.division.rawValue:
                    return target / number               
            default:
                return 0
        }
    }
}
