//
//  ContentView.swift
//  GoodHealthChicken
//
//  Created by Amanoyuri on 2024/11/13.
//
import SwiftUI

struct ContentView: View {
    // A sample percentage value, e.g., fetched from HealthKit or user input
    @State private var exercisePercentage: Double = 0.5 // 50%

    var body: some View {
        VStack {
            ZStack {
                // Blue square with rounded corners
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.blue.opacity(0.5))
                    .frame(width: 300, height: 100)
                
                VStack {
                    // Clickable "X" button
                    Button(action: {
                        // Action for "X" button tap
                    }) {
                        Text("✕")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .frame(maxWidth: .infinity, alignment: .topTrailing)
                    
                    Spacer()

                    // Movable progress bar
                    VStack {
                        Text("Exercise Progress")
                            .font(.headline)
                            .foregroundColor(.white)
                        
                        ProgressView(value: exercisePercentage)
                            .progressViewStyle(LinearProgressViewStyle(tint: .green))
                            .frame(width: 250)
                            .padding()
                    }
                    .padding(.bottom, 50)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
