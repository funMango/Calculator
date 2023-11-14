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
        //return String(result)
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
            case "+":
                return target + number
                
            case "-":
                return target - number
                
            case "x":
                return target * number
                
            case "÷":
                return target / number
               
            default:
                return 0
        }
    }
}
