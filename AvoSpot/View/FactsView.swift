//
//  FactsView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct FactsView: View {
    
    //MARK: - Properties
    var fact: Fact
    
    //MARK: - Body
    var body: some View {
        ZStack {
            Text(fact.content)
                .padding(.leading, 55)
                .padding(.trailing, 10)
                .padding(.vertical, 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenLight]), startPoint: .leading, endPoint: .trailing)
                )
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(.white)
            
            Image(fact.image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                    Circle()
                        .fill(.white)
                        .frame(width: 74, height: 74, alignment: .center)
                ) //: background
                .background(
                    Circle()
                        .fill(LinearGradient(gradient: Gradient(colors: [.colorGreenMedium, .colorGreenLight]), startPoint: .trailing, endPoint: .leading))
                        .frame(width: 82, height: 82, alignment: .center)
                ) //: background
                .background(
                    Circle()
                        .fill(.colorAppearanceAdaptive)
                        .frame(width: 90, height: 90, alignment: .center)
                ) //: background
                .offset(x: -150)
        } //: ZStack
    }
}

//MARK: - Preview
struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView(fact: factData[0])
            .previewLayout(.fixed(width: 400, height: 220))
    }
}
