//
//  ContentView.swift
//  Pinch
//
//  Created by Y K on 03.01.2024.
//

import SwiftUI

struct ContentView: View {
    //MARK: Prop
    @State private var isAnimating: Bool = false
    @State private var imageScale: CGFloat = 1
    var body: some View {
        NavigationView {
            ZStack {
                // MARK:  PAGE IMage
                Image("magazine-front-cover")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                    .padding()
                    .shadow(color: .black.opacity(0.2), radius: 12, x: 2, y: 2)
                    .opacity(isAnimating ? 1 : 0)
                    .animation(.linear(duration: 1), value: isAnimating)
                    .scaleEffect(imageScale)
                // MARK: Tap Gesture
                    .onTapGesture(count: 2, perform: {
                        if imageScale == 1 {
                            withAnimation(.spring()) {
                                imageScale = 5
                            }
                        } else {
                            withAnimation(.spring()) {
                                imageScale = 1
                            }
                        }
                    })
            } // : Zstack
            .navigationTitle("Pinch & Zoom")
            .navigationBarTitleDisplayMode(.inline)
            .onAppear(perform: {
                withAnimation(.linear(duration: 1)) {
                    isAnimating = true
                }
            })
            
        } // : NavigationV
        .navigationViewStyle(.stack)
    }
}

#Preview {
    ContentView()
}
