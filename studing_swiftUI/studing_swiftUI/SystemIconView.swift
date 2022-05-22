//
//  SystemIconView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/23.
//

import SwiftUI

struct SystemIconView: View {
    var body: some View {
        ScrollView{
            VStack{
            Image(systemName: "heart")
                .font(.title)
            
            Image(systemName: "heart.fill")
                .font(.system(size: 80))
                .foregroundColor(Color.green)
            
            Image(systemName: "heart.fill")
                .frame(width: 100, height: 100)
                .background(Color.blue)
            
            Image(systemName: "heart.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .background(Color.blue)
                .padding(.bottom, 50)
                
            
                Text(".fill")
            Image(systemName: "heart.fill")
                .resizable()
                 // aspectRatio : 가로 세로 비율
                 // fill로 하면 최소 녀석 기준 꽉 참
                // == .scaledToFill()
                .aspectRatio(contentMode: .fill)
                .frame(width: 250, height: 250)
                .background(Color.blue)
             
                Text(".fit")
            Image(systemName: "heart.fill")
                .resizable()
                // fit로 하면 최대 녀석 기준 꽉 참
                // == .scaledToFit()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250, height: 250)
                .background(Color.blue)
                .padding(.bottom, 50)
            
            Text(".cliped")
            Image(systemName: "heart.fill")
                .resizable()
                .scaledToFill()
                .frame(width: 250, height: 250)
                .background(Color.blue)
                .clipped()
            }
            .frame(width: 500)
            .padding(.bottom, 50)
            
            Text("여러가지 색 Icone")
            Image(systemName: "circle.hexagongrid.fill")
                .renderingMode(.original)
                .font(.largeTitle)
                .foregroundColor(Color.brown)
        }
    }
}

struct SystemIconView_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconView()
    }
}
