//
//  Buttons.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/05.
//

import SwiftUI

struct BtnNumber: View {
    let number : Number
    let isPointColor: Bool
    
    var body: some View {
        Text(String(format: "%.0f", number.rawValue))
            .frame(width: 80, height: 80)
            .background(isPointColor ? Color.orange : Color.gray)
            .cornerRadius(40)
            .foregroundColor(.white)
            .font(.system(size: 33))
    }
}

struct BtnNumber_Previews: PreviewProvider {
    static var previews: some View {
        BtnNumber(number: .seven, isPointColor: true)
    }
}
