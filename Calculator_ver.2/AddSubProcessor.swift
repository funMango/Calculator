//
//  AddSubProcessor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/15.
//

import Foundation

struct AddSubProcessor : Processor {
    let calculator = Calculator()
    
    func process(_ number: String, _ storage: Storage, _ op: Operator) -> String? {
        storage.push(number)
        let result = calculator.calculate(storage)
        storage.reset()
        save(storage, result, op.rawValue)
        return storage.getFirst()
    }
}
