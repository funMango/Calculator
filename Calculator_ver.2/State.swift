//
//  State.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/08.
//

import Foundation

class State : ObservableObject {
    @Published var number: String = "0"
    var storage = Storage()
    let opProcessor = OpProcessor()
    let convertor = Convertor()
    
    func addNumber(_ number: Number) {
        if storage.isActOp {
            self.number = "0"
            storage.isActOp = false
        }
        
        let target = number.rawValue
        self.number = self.number == "0" ? target : self.number + target
    }
    
    func addOper(_ oper: Operator) {
        if let calcResult = opProcessor.process(self.number, self.storage, oper) {
            self.number = calcResult
        }
        
        if oper != Operator.changeSign && oper != Operator.point {
            storage.isActOp = true
        } 
    }        
}
