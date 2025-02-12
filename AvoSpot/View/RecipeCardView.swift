//
//  RecipeCardView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct RecipeCardView: View {
    
    //MARK: - Properties
    var recipe: Recipe
    @State private var showModal = false
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(recipe.image)
                .resizable()
                .scaledToFit()
                .overlay {
                    HStack {
                        Spacer()
                        VStack {
                            Image(systemName: Constants.systemBookmark)
                                .font(.title.weight(.light))
                                .foregroundColor(.white)
                                .imageScale(.small)
                                .shadow(color: .colorBlackTransparentLight, radius: 2, x: 0, y: 0)
                                .padding(.trailing, 12)
                                .padding(.top, 22)
                            
                            Spacer()
                        } //: VStack
                    } //: HStack
                }
            
            VStack(alignment: .leading, spacing: 12) {
                //title
                Text(recipe.title)
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                    .foregroundColor(.colorGreenMedium)
                    .lineLimit(1)
            
                //headline
                Text(recipe.headline)
                    .font(.system(.body, design: .serif))
                    .foregroundColor(.gray)
                    .italic()
                
                //rates
                RecipeRatingView(recipe: recipe)
                
                //cooking
                RecipeCookingView(recipe: recipe)
            }
            .padding()
            .padding(.bottom, 12)
        } //: VStack
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 0)
        .onTapGesture {
            Constants.feedback.impactOccurred()
            showModal = true
        } //: onTapGesture
        .sheet(isPresented: $showModal) {
            RecipeDetailView(recipe: self.recipe)
        } //: sheet
    }
}

//MARK: - Preview
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
