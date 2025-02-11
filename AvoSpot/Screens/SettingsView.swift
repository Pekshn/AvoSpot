//
//  SettingsView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    @State private var displayInfo = true
    @State private var bgRefresh = false
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            //MARK: Header
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.colorGreenAdaptive)
            } //: VStack
            .padding()
            
            Form {
                Section(header: Text("General Settings")) {
                    SettingsToggleView(enabled: $displayInfo, title: "Display App info")
                    SettingsToggleView(enabled: $bgRefresh, title: "Background refresh")
                } //: Section
                
                Section(header: Text("Application")) {
                    if displayInfo {
                        SettingsTitleView(title: "Product", value: "Avocado Recipes")
                        SettingsTitleView(title: "Compatibility", value: "iPhone & iPad")
                        SettingsTitleView(title: "Developer", value: "Petar")
                        SettingsTitleView(title: "Thanks to", value: "Robert Petras")
                        SettingsTitleView(title: "Version", value: "1.0.0")
                    } else {
                        SettingsTitleView(title: "Personal message", value: "Happy coding! 🎉")
                    }
                } //: Section
            } //: Form
        } //: VStack
        .frame(maxWidth: 640)
    }
}

//MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
