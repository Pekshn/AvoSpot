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
                Image(Constants.avocado)
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 4)
                
                Text(Localization.avocados.uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.colorGreenAdaptive)
            } //: VStack
            .padding()
            
            Form {
                Section(header: Text(Localization.generalSettings)) {
                    SettingsToggleView(enabled: $displayInfo, title: Localization.displayAppInfo)
                    SettingsToggleView(enabled: $bgRefresh, title: Localization.backgroundRefresh)
                } //: Section
                
                Section(header: Text(Localization.application)) {
                    if displayInfo {
                        SettingsTitleView(title: Localization.product, value: Localization.avocadoRecipes)
                        SettingsTitleView(title: Localization.compatibility, value: Localization.iPhoneAndiPad)
                        SettingsTitleView(title: Localization.developer, value: Localization.developerValue)
                        SettingsTitleView(title: Localization.thanksTo, value: Localization.thanksToValue)
                        SettingsTitleView(title: Localization.version, value: Localization.versionOne)
                    } else {
                        SettingsTitleView(title: Localization.personalMessage, value: Localization.happyCoding)
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
