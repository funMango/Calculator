//
//  ContentView.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            BtnStack(first: 1, last: 3)
            BtnStack(first: 4, last: 6)
            BtnStack(first: 7, last: 9)
            
            
        }
        .padding()
    }
}

struct BtnStack: View {
    let first: Int
    let last: Int
    var body: some View {
        HStack {
            ForEach(first...last, id: \.self) { index in
                Button("\(index)") {
                    // Button action code here
                }
                .blackBtnStyle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
