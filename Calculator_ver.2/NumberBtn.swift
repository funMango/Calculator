//
//  NumberBtn.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/11/14.
//

import SwiftUI

struct NumberBtn: View {
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, maxWidth: .infinity, minHeight: 100)
            .background(color)
            .cornerRadius(8)
            .font(.system(.largeTitle))
    }
}

struct NumberBtn_Previews: PreviewProvider {
    static var previews: some View {
        NumberBtn()
    }
}
