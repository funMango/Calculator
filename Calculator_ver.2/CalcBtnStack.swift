//
//  CalcBtnStack.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/05.
//

import SwiftUI

struct CalcBtnStack: View {
    let Buttons: [ButtonInfo]


    var body: some View {
        HStack {
            ForEach (Buttons, id: \.self) { button in
                Button{

                } label: {
                    switch button.type {
                    case .number(let number):
                        BtnNumber(number: number, isPointColor: button.isPointColor)
                    case .oper(let op):
                        BtnOperator(op: op, isPointColor: button.isPointColor)
                    }
                }
            }
        }
    }
}

struct CalcBtnStack_Previews: PreviewProvider {
    static var previews: some View {
        CalcBtnStack(Buttons: [
            ButtonInfo(type: .number(.seven), isPointColor: false),
            ButtonInfo(type: .number(.eight), isPointColor: false),
            ButtonInfo(type: .number(.nine), isPointColor: false),
            ButtonInfo(type: .oper(.multiplication), isPointColor: true),
        ])
    }
}
