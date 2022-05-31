//
//  Pading_SpacerView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/31.
//

import SwiftUI

struct Pading_SpacerView: View {
    var body: some View {
        VStack{
        Text("Hello, World!")
            .padding()
            .background(Color.yellow)
            .padding(.trailing, 30)
            .background(Color.blue)
            .padding(10)
            .background(Color.green)
            .padding(.bottom, 20)
            
            Text("Hello, World!")
                .frame(maxWidth : .infinity, alignment: .leading)
                .padding(.leading, 20)
                .padding(.bottom, 10)
            
            Text("어떤 생각을 일정한 형식에 따라 글자로 나타낸 것. 시·소설·수필·희곡 등을 비롯하여, 일기·편지·논설·신문 기사 등과 같이 일정한 내용을 담은 모든 기록을 두루 이르는 말임. ")
                .multilineTextAlignment(.center) // .leading이 기본
        }
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 10.0)
        )
        .padding()
    }
}

struct Pading_SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        Pading_SpacerView()
    }
}
