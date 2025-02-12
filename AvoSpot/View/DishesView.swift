//
//  DishesView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct DishesView: View {
    
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            VStack(alignment: .leading, spacing: 4) {
                DishItemView(title: Localization.toasts, imageName: Constants.iconToasts,
                             leftSided: false, hasDivider: true)
                DishItemView(title: Localization.tacos, imageName: Constants.iconTacos,
                             leftSided: false, hasDivider: true)
                DishItemView(title: Localization.salads, imageName: Constants.iconSalads,
                             leftSided: false, hasDivider: true)
                DishItemView(title: Localization.spreads, imageName: Constants.iconHalfavo,
                             leftSided: false, hasDivider: false)
            } //: VStack
            
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
            } //: VStack
            
            VStack(alignment: .trailing, spacing: 4) {
                DishItemView(title: Localization.guacamole, imageName: Constants.iconGuacamole,
                             leftSided: true, hasDivider: true)
                DishItemView(title: Localization.sandwiches, imageName: Constants.iconSandwiches,
                             leftSided: true, hasDivider: true)
                DishItemView(title: Localization.soup, imageName: Constants.iconSoup,
                             leftSided: true, hasDivider: true)
                DishItemView(title: Localization.smoothies, imageName: Constants.iconSmoothies,
                             leftSided: true, hasDivider: false)
            } //: VStack
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
