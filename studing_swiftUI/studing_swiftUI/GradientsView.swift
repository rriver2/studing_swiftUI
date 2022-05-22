//
//  GradientsView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/23.
//

import SwiftUI


// Gradients 종류
// : Linear, Radial, Angular
struct GradientsView: View {
    var body: some View {
        VStack(spacing: 30){
            VStack(alignment: .leading){
                Text("1) LinearGradient")
                // 한 방향에서 다른 방향으로
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        LinearGradient(
                            // 더 추가 가능
                            colors:[Color(#colorLiteral(red: 0.7811967731, green: 0.8679119945, blue: 0.6914937496, alpha: 1)), Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))],
                            startPoint: .topLeading,
                            endPoint: .bottom)
                    )
                    .frame(width: 300, height: 200)
            }
            
            VStack(alignment: .leading){
                Text("2) RadialGradient")
                // 작은 원에서 큰 원으로
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        RadialGradient(
                            colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1))],
                            center: .center,
                            startRadius: 5,
                            endRadius: 200)
                    )
                    .frame(width: 300, height: 200)
            }
            
            VStack(alignment: .leading){
                Text("3) AngularGradient")
                //작은 원에서 큰 원으로
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1))],
                            center: .center,
                            angle: .degrees(180 + 45))
                     )
                    .frame(width: 300, height: 200)
                
                // center 위치를 옮김
                RoundedRectangle(cornerRadius: 25)
                    .fill(
                        AngularGradient(
                            colors: [Color(#colorLiteral(red: 0, green: 0.5898008943, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.4513868093, green: 0.9930960536, blue: 1, alpha: 1))],
                            center: .topLeading,
                            angle: .degrees(180 + 45))
                     )
                    .frame(width: 300, height: 200)
            }
        }
    }
}

struct GradientsView_Previews: PreviewProvider {
    static var previews: some View {
        GradientsView()
    }
}
