//
//  SettingsTitleView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct SettingsTitleView: View {
    
    //MARK: - Properties
    var title: String
    var value: String
    
    //MARK: - Body
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.gray)
            
            Spacer()
            
            Text(value)
        } //: HStack
    }
}

//MARK: - Preview
struct SettingsTitleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsTitleView(title: "Title", value: "Value")
            .previewLayout(.sizeThatFits)
    }
}
