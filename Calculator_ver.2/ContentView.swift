//
//  ContentView.swift
//  Calculator_ver.2
//
//  Created by 이민호 on 2023/10/31.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                HStack {
                    Text("=")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                    Spacer()
                    Text(String(format: "%.2f", 12.5))
                        .font(.system(size: 73))
                        .foregroundColor(.white)
                        .padding()
                }                
            }
        }
    }
    
    func calculate(expression: String) -> Double? {
        let changedExpression = expression.replacingOccurrences(of: "x", with: "*")
        let mathExpression = NSExpression(format: changedExpression)
        if let result = mathExpression.expressionValue(with: nil, context: nil) as? Double {
            return result
        } else {
            return nil
        }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
