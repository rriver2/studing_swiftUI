//
//  BackroundAndOverlayView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/24.
//

import SwiftUI

struct BackroundAndOverlayView: View {
    var body: some View {
        VStack{
            // View -> Color, Screen, Text, Shape, gradient ...
            Text("Hello, World!")
                .background(
                    Circle()
                        .fill(.yellow)
                        . frame(width: 100, height: 100 )
                )
        }
        .frame(width: 120, height: 120)
        .background(
            Circle()
                .fill(.red)
            
        )
        
        
    }
}

struct BackroundAndOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        BackroundAndOverlayView()
    }
}
