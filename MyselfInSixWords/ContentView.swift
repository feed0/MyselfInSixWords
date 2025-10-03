//
//  ContentView.swift
//  MyselfInSixWords
//
//  Created by Felipe Campelo on 03/10/25.
//

import SwiftUI

let myQualities = ["Resilient",
                   "Dedicated",
                   "Patient",
                   "Learner",
                   "Polyglot",
                   "Healthy",]

struct ContentView: View {
    var body: some View {
        VStack {
            ForEach(myQualities, id: \.self) { quality in
                Adjective(quality)
            }
        }
        .padding()
    }
}

struct Adjective: View {
    
    // MARK: - Constants
    let paddingLength = 8.0
    let backGroundColor = Color.blue
    let backGroundColorOpacity = 0.5
    let cornerRadius = 8.0
    let shadowRadius = 8.0
    let foreGroundColor = Color.white
    
    
    // MARK: - Parameters
    let literal: String
    
    // MARK: - Init
    init(_ literal: String) {
        self.literal = literal
    }
    
    // MARK: - Body
    var body: some View {
        Text(literal)
            .foregroundColor(foreGroundColor)
            .padding(paddingLength)
            .background(backGroundColor.opacity(backGroundColorOpacity),
                        in: RoundedRectangle(cornerRadius: cornerRadius))
            .shadow(radius: shadowRadius)
    }
}

// MARK: - Preview
#Preview {
    ContentView()
}
