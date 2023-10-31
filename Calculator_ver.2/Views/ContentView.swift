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
            Spacer()
            
            HStack {
                Button("C") {
                    
                }.grayStyle()
                Button("+/-") {
                    
                }.grayStyle()
                Button("%") {
                    
                }.grayStyle()
                Button("/") {
                    
                }.grayStyle()
            }
                        
            
            HStack {
                Button("7") {
                    
                }.blackStyle()
                Button("8") {
                    
                }.blackStyle()
                Button("9") {
                    
                }.blackStyle()
                Button("X") {
                    
                }.grayStyle()
            }
            
            HStack {
                Button("4") {
                    
                }.blackStyle()
                Button("5") {
                    
                }.blackStyle()
                Button("6") {
                    
                }.blackStyle()
                Button("-") {
                    
                }.grayStyle()
            }
            
            HStack {
                Button("1") {
                    
                }.blackStyle()
                Button("2") {
                    
                }.blackStyle()
                Button("3") {
                    
                }.blackStyle()
                Button("+") {
                    
                }.grayStyle()
            }
            
            HStack {
                Button("00") {
                    
                }.blackStyle()
                Button("0") {
                    
                }.blackStyle()
                Button(".") {
                    
                }.blackStyle()
                Button("=") {
                    
                }.orangeStyle()
            }
            Spacer()
            
            
            
        }
    }
}

struct NumBtnStack: View {
    let first: Int
    let last: Int
    var body: some View {
        HStack {
            ForEach(first...last, id: \.self) { index in
                Button("\(index)") {
                    
                }
                .blackStyle()
            }
        }
        
    }
}

struct OpBtnStack: View {
    var body: some View {
        HStack {
            ForEach(["+", "-", "*", "/"], id: \.self) { op in
                Button("\(op)") {
                    
                }
                .orangeStyle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
