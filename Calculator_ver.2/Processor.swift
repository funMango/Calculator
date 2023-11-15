//
//  Processor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/15.
//

import Foundation

protocol Processor {
    func process(_ number: String, _ storage: Storage, _ op: Operator) -> String?
}

extension Processor {
    
    func save(_ storage: Storage, _ target1: String, _ target2: String) {
        storage.push(target1)
        storage.push(target2)
    }
    
}
