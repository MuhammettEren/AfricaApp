//
//  MotionAnimationView.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 31.10.2023.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating:Bool = false
    
    func randomCoordinate(max:CGFloat) -> CGFloat{
        return CGFloat.random(in: 0...max)
    }
    
    func randomSize(max:CGFloat) -> CGFloat{
        return CGFloat.random(in: 10...300)
    }
    
    func randomScale() -> CGFloat{
        return CGFloat.random(in: 0.1...2.0)
    }
    
    func randomSpeed() -> CGFloat{
        return Double.random(in: 0.025...1.0)
    }
    
    func randomDelay() -> CGFloat{
        return Double.random(in: 0...2)
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle,id: \.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: 256,height: 256,alignment: .center)
                        .scaleEffect(isAnimating ? randomScale() : 1)
                        .position(
                            x:randomCoordinate(max: geometry.size.width),
                            y:randomCoordinate(max: geometry.size.height)
                        
                    )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating = true
                        }
                            
                        )
                }
                
            }
        }
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
}
