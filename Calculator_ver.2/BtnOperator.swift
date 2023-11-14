//
//  BtnOperator.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/08.
//

import SwiftUI

struct BtnOperator: View {
    @StateObject var stateObj: State
    let op : Operator
    let isPointColor: Bool
    
    
    var body: some View {
        Button {
            stateObj.addOper(op)
            print("storage: ", stateObj.storage.values)
            //print("lastNumber: ", stateObj.storage.numbers)
        } label: {
            Text(op.rawValue)
                .frame(width: 80, height: 80)
                .background(isPointColor ? Color.orange : Color.gray)
                .cornerRadius(40)
                .foregroundColor(.white)
                .font(.system(size: 33))
        }        
    }
}

struct BtnOperator_Previews: PreviewProvider {
    static var previews: some View {
        BtnOperator(stateObj: State(), op: .addition, isPointColor: true)
    }
}
