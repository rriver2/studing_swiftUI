//
//  ImageView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/24.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
            Image("sky")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 100)
                .clipped()
            
            Image("sky")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
            
            Image("sky")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(30)
            
            Image("sky")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipped()
                .cornerRadius(50)
            
            Image("sky")
                .resizable()
                .scaledToFill()
                .frame(width: 100, height: 100)
                .clipShape(Circle())
            
            Image("apple")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
            
            Image("apple")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
            
            Image("apple-1")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.red)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
