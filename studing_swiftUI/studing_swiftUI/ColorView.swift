//
//  SwiftUIView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/20.
//

import SwiftUI

struct ColorView: View {
    var body: some View {
        VStack{
            Capsule(style: .continuous)
            // 􀄷 basic color
            // : mode에 따라 색이 달라짐
                .fill(Color.primary)
                .frame(width: 200, height: 100)
            
            Capsule(style: .continuous)
                .fill(
                    // toolbar에서 Edit -> format -> show Colors
                    // color literal ? 찾아보기
                    Color(#colorLiteral(red: 1, green: 0.6335018873, blue: 0.5513476729, alpha: 1))
                )
                .frame(width: 200, height: 100)
            
            Capsule(style: .continuous)
                .fill(
                    // Color는 swiftUI , UIColor는 UIkit
                    // 􀄷 systemBackground는 View의 배경 색과 같은 색으로 들어감
                    Color(UIColor.systemBackground)
                )
                .frame(width: 200, height: 100)
            
            Capsule(style: .continuous)
                .fill(
                    // 􀄷 System ~~ color들은 Dark mode 때 저절로 색이 바뀜
                    Color(UIColor.secondarySystemBackground)
                )
                .frame(width: 200, height: 100)
            
            Capsule(style: .continuous)
                .fill(
                    // 􀄷 Custom Color (Assets)
                    // Light & Dark mode
                    Color("CustomColor")
                )
                .frame(width: 200, height: 100)
                // 􀄷 그림자
                // x : + 일수록 오른쪽
                // y : + 일수록 아래
                .shadow(color: Color.green.opacity(0.3), radius: 10, x: 10, y: 10)
        }
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView()
            
    }
}
