//
//  State.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/08.
//

import Foundation

class State : ObservableObject {
    let DEFAULT_NUMBER = "0"
    
    @Published var number: String = "0"
    
    var storage = Storage()
    let opManager = OperatorManager()
    let convertor = Convertor()
            
    func addNumber(_ number: Number) {
        if storage.isActOp {
            self.number = DEFAULT_NUMBER
            storage.isActOp = false
        }
        
        let target = number.rawValue
        self.number = self.number == DEFAULT_NUMBER ? target : self.number + target
    }
    
    func addOper(_ oper: Operator) {
        if let calcResult = opManager.process(self.number, self.storage, oper) {
            self.number = calcResult
        }
        
        if oper != Operator.changeSign && oper != Operator.point {
            storage.isActOp = true
        } 
    }        
}
