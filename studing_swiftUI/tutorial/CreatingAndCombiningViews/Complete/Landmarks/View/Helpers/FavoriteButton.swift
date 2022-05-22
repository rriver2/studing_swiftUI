//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 이가은 on 2022/05/23.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }){
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                            .labelStyle(.iconOnly) // icon만 보여줄 수 있음 !
                            .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
