//
//  SettingsToggleView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct SettingsToggleView: View {
    
    //MARK: - Properties
    @Binding var enabled: Bool
    var title: String
    
    //MARK: - Body
    var body: some View {
        Toggle(isOn: $enabled) {
            Text(title)
        }//: Toggle
    }
}

//MARK: - Preview
struct SettingsToggleView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsToggleView(enabled: .constant(false), title: "Title")
            .previewLayout(.sizeThatFits)
    }
}
