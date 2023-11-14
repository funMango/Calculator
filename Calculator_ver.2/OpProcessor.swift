//
//  OpProcessor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

struct OpProcessor {
    let calculator = Calculator()
    let convertor = Convertor()
    
    func process(_ number: String, _ storage: Storage, _ op: Operator) -> String? {
        switch op {
        case .reset:
            storage.reset()
            return "0"
            
        case .addition, .subtraction:            
            storage.push(number)
            let result = calculator.calculate(storage)
            storage.reset()
            storage.push(result)
            storage.push(op.rawValue)
            return storage.getFirst()
            
        case .division:
            if storage.getLast() == "x" {
                storage.push(number)
                let result = calculator.calculate(storage)
                storage.reset()
                storage.push(result)
                storage.push(op.rawValue)
                return storage.getFirst()
            } else {
                storage.push(number)
                storage.push(op.rawValue)
            }            
                        
        case .multiplication:
            if storage.getLast() == "÷" {
                storage.push(number)
                let result = calculator.calculate(storage)
                storage.reset()
                storage.push(result)
                storage.push(op.rawValue)
                return storage.getFirst()
            } else {
                storage.push(number)
                storage.push(op.rawValue)
            }
                                                                                         
        case .result:
            storage.push(number)
            if let num = storage.lastNumber, let oper = storage.lastOper ,(storage.values.count == 1) {
                storage.push(oper)
                storage.push(num)
            } else {
                storage.lastNumber = number
                storage.lastOper = storage.values[storage.values.count - 2]
            }
                                    
            let result = calculator.calculate(storage)
            storage.reset()
            return result
                                                           
        default:
            return nil
        }
        return nil
    }
}
