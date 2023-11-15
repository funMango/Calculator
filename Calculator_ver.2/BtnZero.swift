//
//  BtnZero.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/14.
//

import SwiftUI

struct BtnZero: View {
    @StateObject var stateObj: State
    let number : Number
    let isPointColor: Bool
    
    
    var body: some View {
        Button {
            stateObj.addNumber(number)
        } label: {
            HStack {
                Spacer()
                Text(number.rawValue)
                    .font(.system(size: 33))
                Spacer()
                Spacer()
                Spacer()
                Spacer() // 왼쪽 정렬을 위해 Spacer 추가
            }
            .frame(maxWidth: 180, minHeight: 80)
            .background(isPointColor ? Color.orange : Color.gray)
            .cornerRadius(40)
            .foregroundColor(.white)
        }

        
    }
}

struct BtnZero_Previews: PreviewProvider {
    static var previews: some View {
        BtnZero(stateObj: State(), number: .zero, isPointColor: false)
    }
}
