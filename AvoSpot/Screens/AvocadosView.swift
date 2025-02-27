//
//  AvocadosView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct AvocadosView: View {
    
    //MARK: - Properties
    @State private var pulseAnimation = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            
            Image(Constants.avocado)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 240, height: 240, alignment: .center)
                .shadow(color: .colorBlackTransparentDark, radius: 12, x: 0, y: 8)
                .scaleEffect(pulseAnimation ? 1 : 0.8)
                .opacity(pulseAnimation ? 1 : 0.8)
                .animation(.easeInOut(duration: 1.7).repeatForever(autoreverses: true), value: pulseAnimation)
            
            VStack {
                Text(Localization.avocados.uppercased())
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: .colorBlackTransparentDark, radius: 4, x: 0, y: 4)
                
                Text(Localization.creamyGreenInfo)
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(.colorGreenLight)
                .multilineTextAlignment(.center)
                .lineSpacing(8)
                .frame(maxWidth: 640, minHeight: 120)
            } //: VStack
            .padding()
            
            Spacer()
        } //: VStack
        .background(
            Image(Constants.background)
                .resizable()
                .aspectRatio(contentMode: .fill)
        ) //: background
        .ignoresSafeArea(.all, edges: .all)
        .onAppear {
            withAnimation {
                pulseAnimation.toggle()
            }
        } //: onAppear
    }
}

//MARK: - Preview
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
