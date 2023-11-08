//
//  ButtonInfo.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/08.
//

import Foundation

struct ButtonInfo: Identifiable, Hashable {
    let id = UUID()
    let type: ButtonType
    let isPointColor: Bool
}
