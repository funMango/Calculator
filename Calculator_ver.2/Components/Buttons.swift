//
//  Buttons.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

extension Button {
    func blackBtnStyle() -> some View {
        self
            .frame(width: 50, height: 50)
            .foregroundColor(Color.white)
            .background(Color.black)
            .cornerRadius(10)
    }
}
