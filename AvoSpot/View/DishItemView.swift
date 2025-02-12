//
//  DishItemView.swift
//  AvoSpot
//
//  Created by Petar  on 12.2.25..
//

import SwiftUI

struct DishItemView: View {
    
    //MARK: - Properties
    var title: String
    var imageName: String
    var leftSided: Bool
    var hasDivider: Bool
    
    //MARK: - Body
    var body: some View {
        if leftSided {
            HStack {
                Text(title)
                
                Spacer()
                
                Image(imageName)
                    .resizable()
                    .modifier(IconModifier())
            } //: HStack
        } else {
            HStack {
                Image(imageName)
                    .resizable()
                    .modifier(IconModifier())
                
                Spacer()
                
                Text(title)
            }
        } //: HStack
        
        if hasDivider {
            Divider()
        }
    }
}

//MARK: - Preview
struct DishItemView_Previews: PreviewProvider {
    static var previews: some View {
        DishItemView(title: "Title", imageName: Constants.iconToasts, leftSided: true, hasDivider: true)
            .previewLayout(.sizeThatFits)
    }
}

