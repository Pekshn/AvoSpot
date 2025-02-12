//
//  RipeningView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct RipeningView: View {
    
    //MARK: - Properties
    var ripening: Ripening
    @State private var slideInAnimaton = false
    
    //MARK: - Body
    var body: some View {
        VStack {
            Image(ripening.image)
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.colorGreenLight)
                        .frame(width: 110, height: 110, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 120, height: 120, alignment: .center)
                )
                .zIndex(1)
                .animation(.easeInOut(duration: 1), value: slideInAnimaton)
                .offset(y: slideInAnimaton ? 55 : -55)
            
            VStack(alignment: .center, spacing: 10) {
                VStack(alignment: .center, spacing: 0) {
                    Text(ripening.stage)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                    
                    Text(Localization.stage.uppercased())
                        .font(.system(.body, design: .serif))
                        .fontWeight(.heavy)
                } //: VStack
                .foregroundColor(.colorGreenMedium)
                .padding(.top, 65)
                .frame(width: 180)
                
                Text(ripening.title)
                    .font(.system(.title2, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.colorGreenMedium)
                    .padding(.vertical, 12)
                    .padding(.horizontal, 0)
                    .frame(width: 220)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [.white, .colorGreenLight]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                
                Spacer()
                
                Text(ripening.description)
                    .foregroundColor(.colorGreenDark)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                
                Spacer()
                
                Text(ripening.ripeness.uppercased())
                    .foregroundColor(.white)
                    .font(.system(.callout, design: .serif))
                    .fontWeight(.bold)
                    .shadow(radius: 3)
                    .padding(.vertical)
                    .padding(.horizontal, 0)
                    .frame(width: 185)
                    .background(
                        RoundedRectangle(cornerRadius: 12)
                            .fill(LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenDark]), startPoint: .top, endPoint: .bottom))
                            .shadow(color: .colorBlackTransparentLight, radius: 6, x: 0, y: 6)
                    )
                
                Text(ripening.instruction)
                    .font(.footnote)
                    .foregroundColor(.colorGreenLight)
                    .fontWeight(.bold)
                    .lineLimit(3)
                    .frame(width: 160)
                
                Spacer()
            } //: VStack
            .zIndex(0)
            .multilineTextAlignment(.center)
            .padding(.horizontal)
            .frame(width: 260, height: 485, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [.colorGreenLight, .colorGreenMedium]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        } //: VStack
        .ignoresSafeArea(.all, edges: .all)
        .onAppear {
            slideInAnimaton.toggle()
        } //: onAppear
    }
}

//MARK: - Preview
struct RipeningView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningView(ripening: ripeningData[1])
            .previewLayout(.sizeThatFits)
    }
}
