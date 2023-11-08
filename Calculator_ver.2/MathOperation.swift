//
//  MathOperation.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/07.
//

import Foundation

protocol MathOperation : Equatable, Hashable {
    associatedtype OperationValue
    var operationValue: OperationValue { get }
}
