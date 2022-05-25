//
//  FrameView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/24.
//

import SwiftUI
// frame : object가 있는 직사각형의 영역
struct FrameView: View {
    var body: some View {
        VStack{
//            minWidth, minHeight    속성값이 자신의 값보다 작아지는 것을 방지
//            maxWidth, maxHeight    속성값이 자신의 값보다 커지는 것을 방지

//            Text("Hello, World!")
//                .background(.green)
//                .frame(width: 150, height: 100, alignment: .bottomLeading)
//                .background(.blue)
//                .frame(width: 200, height: 50, alignment: .bottomLeading)
//                .background(.red)
//
//            Text("Hello, World!")
//                .background(.green)
//                .frame(width: 150, height: 100, alignment: .topTrailing)
//                .background(.blue)
//
//            Text("Hello, World!")
//                .background(.green)
//                .frame(maxWidth: .infinity, alignment: .leading)
//                .background(.blue)

            Text("Hello, World!")
                .background(.green)
                .frame(height : 100, alignment: .top)
                .background(.orange)
                .frame(width: 150)
                .background(.pink)
                .frame(maxWidth : .infinity, alignment: .leading)
                .background(.black)
                .frame(height : 250)
                .background(.blue)
                .frame(maxHeight : .infinity, alignment: .top)
                .background(.yellow)
        }
    }
}

struct FrameView_Previews: PreviewProvider {
    static var previews: some View {
        FrameView()
    }
}
