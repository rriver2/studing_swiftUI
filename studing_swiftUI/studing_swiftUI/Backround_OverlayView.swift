//
//  BackroundAndOverlayView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/24.
//

import SwiftUI

struct Backround_OverlayView: View {
    var body: some View {
        VStack{
            // View -> Color, Screen, Text, Shape, gradient ...
            // 1) background
            Text("Hello, World!")
                .background(
                    Circle()
                        .fill(LinearGradient(colors: [Color.yellow, Color.green], startPoint: .leading, endPoint: .trailing))
                        . frame(width: 100, height: 100 )
                )
                .frame(width: 120, height: 120)
                .background(
                    Circle()
                        .fill(.red)
                    
                )
            
            // 2) overlay
            Circle()
                .fill(Color.pink)
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Text("1")
                        .font(.largeTitle)
                )
                .background(
                    Circle()
                        .fill(Color.yellow)
                        .frame(width: 110, height: 110)
                )
            
            // background & overlay의 alignment
            Rectangle()
                .frame(width: 100, height: 100)
                .overlay(alignment: .bottomTrailing) {
                    Rectangle()
                        .fill(Color.yellow)
                        .frame(width: 50, height: 50)
                }
                .background(alignment: .topLeading) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 150, height: 150)
                }
                .padding(.bottom, 80)
            
            // 실제 사용할 때
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                colors: [Color(#colorLiteral(red: 0.478941977, green: 0.4035412669, blue: 0.904317379, alpha: 1)), .purple],
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing)
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .purple.opacity(0.5), radius: 10, x: 0.0, y: 10)
                        .overlay(alignment: .bottomTrailing) {
                            Circle()
                                .fill(.blue)
                                .frame(width: 35, height: 35)
                                .overlay(
                                    Text("5").foregroundColor(.white)
                                )
                                .shadow(color: .purple.opacity(0.5), radius: 10, x: 5.0, y: 5)
                        }
                )
                
        }
    }
}

struct Backround_OverlayView_Previews: PreviewProvider {
    static var previews: some View {
        Backround_OverlayView()
    }
}
