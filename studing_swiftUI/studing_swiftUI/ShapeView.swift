//
//  ShapeView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/20.
//

import SwiftUI

struct ShapeView: View {
    var body: some View {
        VStack{
            //  + Circle에서 알아봤던 modifier는 shape에서 모두 사용 가능
            Circle()
            // 􀄷 circle 안에 색 추가하는 방법 2가지
                .fill(Color.green)
                .foregroundColor(Color.green)
            
            Circle()
            // 􀄷 바깥 둘레에
                .stroke(Color.red, lineWidth: 10)
            
            Circle()
        // 􀄷 StrokeStyle Parameters:
        ///   - lineWidth: 선 굵기
        ///   - lineCap: 점들의 끝부분 스타일
            ///
            ///이 두개는 아직 몰겠슘
        ///   - lineJoin: The join type of a segment.
        ///   - miterLimit: The threshold used to determine whether to use a bevel
        ///     instead of a miter at a join.
            ///
        ///   - dash: 색칠되는 간격
        ///   - dashPhase: 선이 대시 패턴에서 시작하는 거리
                .stroke(Color.orange, style: StrokeStyle(lineWidth: 10, lineCap: .butt ,dash: [10], dashPhase : 20))
            
            Circle()
            // 􀄷 한 부분 잘라내기
                .trim(from: 0.2, to: 1)
                .stroke(Color.purple, lineWidth: 10)
            
            // 􀄷 타원
            Ellipse()
                .frame(width: 200, height: 100)
            
            // 􀄷 캡슐 모양 : 버튼 같은 거에 잘 쓰임
            Capsule(style: .continuous)
                .frame(width: 200, height: 100)
            
            // 􀄷 직사각형
            Rectangle()
                .frame(width: 200, height: 100)
            
            // 􀄷 둥근 사각형
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 200, height: 100)
        }
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
