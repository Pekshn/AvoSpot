//
//  RecipesView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct RecipesView: View {
    
    //MARK: - Properties
    var headers = headerData
    var facts = factData
    var recepies = recipeData
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: - Header
                ScrollView(.horizontal, showsIndicators: false ) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        } //: ForEach
                    } //: HStack
                } //: ScrollView
                
                //MARK: - Dishes View
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                //MARK: - Avocato facts
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { fact in
                            FactsView(fact: fact)
                        } //: ForEach
                    } //: HStack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                } //: ScrollView
                
                //MARK: - Recipe Cards
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recepies) { recipe in
                        RecipeCardView(recipe: recipe)
                    } //: ForEach
                } //:VStack
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                //MARK: - Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                        .frame(minHeight: 60)
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                } //: VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            } //: VStack
        } //: ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

//MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipesView(headers: headerData, facts: factData, recepies: recipeData)
    }
}
