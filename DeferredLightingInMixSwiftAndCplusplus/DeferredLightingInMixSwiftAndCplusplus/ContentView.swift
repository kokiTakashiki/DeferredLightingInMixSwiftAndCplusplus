//
//  ContentView.swift
//  DeferredLightingInMixSwiftAndCplusplus
//
//  Created by takedatakashiki on 2023/10/22.
//

import SwiftUI
import Fibonacci

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Text("Fibonacci(5) = \(fibonacci(5))")
        }
        .padding()
    }
}

func fibonacci(_ value: Double) -> Double {
    return FibonacciCalculator(printInvocation: true).fibonacci(value)
}

#Preview {
    ContentView()
}
