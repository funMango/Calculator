//
//  CalculateView.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/14.
//

import SwiftUI

struct CalculateView: View {
    @StateObject var stateObj: State = State()
    
    var body: some View {
        Grid {
            GridRow {
                BtnOperator(stateObj: stateObj, op: .reset, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .changeSign, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .percent, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .division, isPointColor: true)
            }
            
            GridRow {
                BtnNumber(stateObj: stateObj, number: .seven, isPointColor: false)
                BtnNumber(stateObj: stateObj, number: .eight, isPointColor: false)
                BtnNumber(stateObj: stateObj, number: .nine, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .multiplication, isPointColor: true)
            }
            
            GridRow {
                BtnNumber(stateObj: stateObj, number: .four, isPointColor: false)
                BtnNumber(stateObj: stateObj, number: .five, isPointColor: false)
                BtnNumber(stateObj: stateObj, number: .six, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .subtraction, isPointColor: true)
            }
            
            GridRow {
                BtnNumber(stateObj: stateObj, number: .one, isPointColor: false)
                BtnNumber(stateObj: stateObj, number: .two, isPointColor: false)
                BtnNumber(stateObj: stateObj, number: .three, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .addition, isPointColor: true)
            }
            
            GridRow {
                BtnZero(stateObj: stateObj, number: .zero, isPointColor: false)
                    .gridCellColumns(2)
                BtnNumber(stateObj: stateObj, number: .eight, isPointColor: false)
                BtnOperator(stateObj: stateObj, op: .multiplication, isPointColor: true)                    
            }
        }
    }
}

struct CalculateView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateView()
    }
}
