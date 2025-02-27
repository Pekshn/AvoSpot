//
//  RipeningStagesView.swift
//  AvoSpot
//
//  Created by Petar  on 11.2.25..
//

import SwiftUI

struct RipeningStagesView: View {
    
    //MARK: - Properties
    @State private var ripeningViewID = UUID()
    var ripeningStages = ripeningData
    
    //MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { ripening in
                        RipeningView(ripening: ripening)
                            .id(ripeningViewID)
                    } //: ForEach
                } //: HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                
                Spacer()
            } //: VStack
        } //: ScrollView
        .onAppear {
            ripeningViewID = UUID()
        } //: onAppear
        .ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - Preview
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
