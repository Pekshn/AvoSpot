//
//  RecipeDetailView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct RecipeDetailView: View {
    
    //MARK: - Properties
    @Environment(\.presentationMode) var presentationMode
    @State private var pulsateAnimation = false
    var recipe: Recipe
    
    //MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 0) {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
                
                Group {
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.colorGreenAdaptive)
                        .padding(.top, 10)
                    
                    RecipeRatingView(recipe: recipe)
                    
                    RecipeCookingView(recipe: recipe)
                    
                    Text(Localization.ingredients)
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    VStack(alignment: .leading, spacing: 5) {
                        ForEach(recipe.ingredients, id: \.self) { ingredient in
                            VStack(alignment: .leading, spacing: 5) {
                                Text(ingredient)
                                    .font(.footnote)
                                    .multilineTextAlignment(.leading)
                                Divider()
                            } //: VStack
                        } //: ForEach
                    } //: VStack
                    
                    Text(Localization.instructions)
                        .fontWeight(.bold)
                        .modifier(TitleModifier())
                    
                    ForEach(recipe.instructions, id: \.self) { instrucion in
                        VStack(alignment: .center, spacing: 5) {
                            Image(systemName: Constants.systemChevronDownCircle)
                                .resizable()
                                .frame(width: 42, height: 42, alignment: .center)
                                .imageScale(.large)
                                .font(.title.weight(.ultraLight))
                                .foregroundColor(.colorGreenAdaptive)
                            
                            Text(instrucion)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        } //: VStack
                    } //: ForEach
                } //: Group
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
            } //: VStack
        } //: ScrollView
        .ignoresSafeArea(.all, edges: .all)
        .overlay {
            HStack {
                Spacer()
                
                VStack {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: Constants.systemChevronDownCircle)
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity(pulsateAnimation ? 1 : 0.6)
                            .scaleEffect(pulsateAnimation ? 1.2 : 0.8, anchor: .center)
                            .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true), value: pulsateAnimation)
                    } //: Button
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    
                    Spacer()
                } //: VStack
            } //: HStack
        } //: overlay
        .onAppear {
            pulsateAnimation.toggle()
        } //: onAppear
    }
}

//MARK: - Preview
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
            .previewLayout(.sizeThatFits)
    }
}
