//
//  ContentView.swift
//  ButtonAnimation(1)
//
//  Created by Berk Aksu on 18.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount = 1.0
    
    var body: some View {
        Button("Tap me"){}
            .padding(50)
            .background(.cyan)
            .foregroundColor(.white)
            .clipShape(Circle())
            .overlay{
                Circle()
                    .stroke(.cyan)
                    .scaleEffect(animationAmount)
                    .opacity(2 - animationAmount)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
            }
            .onAppear{
                self.animationAmount = 2
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
