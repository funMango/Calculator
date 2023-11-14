//
//  NumProcessor.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

struct NumProcessor  {
    func add(_ state: State, _ number: Number) {
        let target = String(format: "%g", number.rawValue)
        state.number = state.number == "0" ? target : state.number + target
    }
}
