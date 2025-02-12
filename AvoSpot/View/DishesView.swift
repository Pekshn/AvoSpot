//
//  DishesView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct DishesView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    Image(Constants.iconToasts)
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text(Localization.toasts)
                }
                Divider()
                HStack {
                    Image(Constants.iconTacos)
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text(Localization.tacos)
                }
                Divider()
                HStack {
                    Image(Constants.iconSalads)
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text(Localization.salads)
                }
                Divider()
                HStack {
                    Image(Constants.iconHalfavo)
                        .resizable()
                        .modifier(IconModifier())
                    
                    Spacer()
                    
                    Text(Localization.spreads)
                }
            }
            
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: Constants.systemHeartCircle)
                    .font(.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }
            
            VStack(alignment: .trailing, spacing: 4) {
                HStack {
                    Text(Localization.guacamole)
                    
                    Spacer()
                    
                    Image(Constants.iconGuacamole)
                        .resizable()
                        .modifier(IconModifier())
                    
                }
                Divider()
                HStack {
                    Text(Localization.sandwiches)
                    
                    Spacer()
                    
                    Image(Constants.iconSandwiches)
                        .resizable()
                        .modifier(IconModifier())
                    
                }
                Divider()
                HStack {
                    Text(Localization.soup)
                    
                    Spacer()
                    
                    Image(Constants.iconSoup)
                        .resizable()
                        .modifier(IconModifier())
                    
                }
                Divider()
                HStack {
                    Text(Localization.smoothies)
                    
                    Spacer()
                    
                    Image(Constants.iconSmoothies)
                        .resizable()
                        .modifier(IconModifier())
                    
                }
            }
        } //: HStack
        .font(.system(.callout, design: .serif))
        .foregroundStyle(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

//MARK: - Preview
struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}
