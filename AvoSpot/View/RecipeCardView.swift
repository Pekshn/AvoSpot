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
                            Image(systemName: "bookmark")
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
                HStack(alignment: .center, spacing: 5) {
                    ForEach(1...(recipe.rating), id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .font(.body)
                            .foregroundColor(.yellow)
                    } //: ForEach
                } //: HStack
                
                //cooking
                HStack(alignment: .center, spacing: 12) {
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "person.2")
                        Text("Serves: \(recipe.serves)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "clock")
                        Text("Prep: \(recipe.preparation)")
                    }
                    HStack(alignment: .center, spacing: 2) {
                        Image(systemName: "flame")
                        Text("Cooking: \(recipe.cooking)")
                    }
                } //: HStack
                .font(.footnote)
                .foregroundColor(.gray)
            }
            .padding()
            .padding(.bottom, 12)
        } //: VStack
        .background(.white)
        .cornerRadius(12)
        .shadow(color: .colorBlackTransparentLight, radius: 8, x: 0, y: 0)
    }
}

//MARK: - Preview
struct RecipeCardView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCardView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
