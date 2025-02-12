//
//  AppView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct AppView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image(Constants.tabiconBranch)
                    Text(Localization.avocados)
                } //: tabItem
            
            RecipesView()
                .tabItem {
                    Image(Constants.tabiconBook)
                    Text(Localization.recipes)
                } //: tabItem
            
            RipeningStagesView()
                .tabItem {
                    Image(Constants.tabiconAvocado)
                    Text(Localization.ripening)
                } //: tabItem
            
            SettingsView()
                .tabItem {
                    Image(Constants.tabiconSettings)
                    Text(Localization.settings)
                } //: tabItem
        } //: TabView
        .ignoresSafeArea(.all, edges: .all)
        .accentColor(.primary)
    }
}

//MARK: - Preview
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
