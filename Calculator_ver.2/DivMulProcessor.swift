//
//  DivMulProcessor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/15.
//

import Foundation

struct DivMulProcessor : Processor {
    let calculator = Calculator()
    
    func process(_ number: String, _ storage: Storage, _ op: Operator) -> String? {
        if storage.getLast() == Operator.division.rawValue || storage.getLast() == Operator.multiplication.rawValue {
            if let oper = storage.popLast() , let popNum = storage.popLast() {
                let result = calculator.calculate(popNum, number, oper)
                save(storage, result, op.rawValue)
                return result
            }
        } else {
            save(storage, number, op.rawValue)
        }
        return nil
    }
}
