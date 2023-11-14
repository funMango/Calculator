//
//  Buttons.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/05.
//

import SwiftUI

struct BtnNumber: View {
    @StateObject var stateObj: State
    let number : Number
    let isPointColor: Bool
    
    
    var body: some View {
        Button {
            stateObj.addNumber(number)
        } label: {
            Text(number.rawValue)
                .frame(minWidth: 80, minHeight: 80)
                .background(isPointColor ? Color.orange : Color.gray)
                .cornerRadius(40)
                .foregroundColor(.white)
                .font(.system(size: 33))
        }
        
    }
}

struct BtnNumber_Previews: PreviewProvider {
    static var previews: some View {
        BtnNumber(stateObj: State(), number: .seven, isPointColor: false)
    }
}
