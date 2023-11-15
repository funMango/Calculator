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
            return process(storage, number, op)
            
        case .division, .multiplication:
            if storage.getLast() == Operator.division.rawValue || storage.getLast() == Operator.multiplication.rawValue {
                if let oper = storage.popLast() , let popNum = storage.popLast() {
                    let result = calculator.calculate(popNum, number, oper)
                    save(storage, result, op.rawValue)
                    return result
                }
            } else {
                save(storage, number, op.rawValue)
            }
            
        case .result:
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
            
        case .point:
            if let last = number.last, String(last) == op.rawValue, isContainPoint(number) {
                return number
            }
            return number + op.rawValue
            
        case .changeSign:
            return Operator.subtraction.rawValue + number
            
        case .percent:
            if let num = Double(number) {
                return String(num * 0.01)
            }
            return nil
        }
        return nil
    }
    
    func isContainPoint(_ str: String) -> Bool {
        str.filter{ $0 == "."}.count > 0
    }
    
    func process(_ storage: Storage, _ number: String, _ op: Operator) -> String? {
        storage.push(number)
        let result = calculator.calculate(storage)
        storage.reset()
        save(storage, result, op.rawValue)
        return storage.getFirst()
    }
    
    func save(_ storage: Storage, _ target1: String, _ target2: String) {
        storage.push(target1)
        storage.push(target2)
    }
}
