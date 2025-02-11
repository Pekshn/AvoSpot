//
//  AvocadosView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct AvocadosView: View {
    
    //MARK: - Properties
    
    //MARK: - Body
    var body: some View {
        VStack {
            Text("Avocados")
        }
        .padding()
    }
}

//MARK: - Preview
struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
