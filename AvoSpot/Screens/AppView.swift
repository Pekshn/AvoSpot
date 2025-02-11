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
                    Image("tabicon-branch")
                    Text("Avocados")
                } //: tabItem
            
            RecipesView()
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                } //: tabItem
            
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                } //: tabItem
            
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                } //: tabItem
        } //: TabView
        .edgesIgnoringSafeArea(.all)
        .accentColor(.primary)
    }
}

//MARK: - Preview
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
