//
//  ResultProcessor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/15.
//

import Foundation

struct ResultProcessor: Processor {
    let calculator = Calculator()
    
    func process (_ number: String, _ storage: Storage, _ op: Operator) -> String? {
        storage.push(number)
        if let num = storage.lastNumber, let oper = storage.lastOper ,(storage.values.count == 1) {
            save(storage, oper, num)
        } else {
            storage.lastNumber = number
            storage.lastOper = storage.values[storage.values.count - 2]
        }
        
        let result = calculator.calculate(storage)
        storage.reset()
        return result
    }
}
