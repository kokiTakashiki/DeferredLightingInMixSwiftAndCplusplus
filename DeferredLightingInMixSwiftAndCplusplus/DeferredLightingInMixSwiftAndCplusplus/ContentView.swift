//
//  ContentView.swift
//  DeferredLightingInMixSwiftAndCplusplus
//
//  Created by takedatakashiki on 2023/10/22.
//

import SwiftUI
#if os(iOS)

#else
import Fibonacci
#endif

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
#if os(iOS)
    return 0.0
#else
    return FibonacciCalculator(printInvocation: true).fibonacci(value)
#endif
}

#Preview {
    ContentView()
}
