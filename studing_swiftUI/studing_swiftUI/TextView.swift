//
//  Text.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/19.
//
import SwiftUI

struct TextView: View {
    var body: some View {
        VStack{
            Text("1) Hello, world! SwiftUI 빡공하자 화이팅구리입니다유 ~")
            // 􀄷 디자인 추가 가능 !
                .font(.system(.title, design: .serif))
            
            // 􀄷 automatical 하게 사이즈 변경이 안되기 때문에 .title 이런 식으로 사용하는 게 좋음!
            // .font(.system(size: 20, weight: .bold, design: .serif))
            
            // 􀄷 여러줄일 때 왼쪽 정렬
                .multilineTextAlignment(.center)
            
            
            Text("2) hi, I am Gaeun Lee ! SwiftUI 빡공하자 화이팅구리입니다유 ~")
            // 􀄷 여러줄일 때 위(-) 혹은 아래로(+) 여백 설정 가능
                .baselineOffset(-30)
            
            Text("3) hi, I am Gaeun Lee ! SwiftUI 빡공하자 화이팅구리입니다유 ~")
            // 􀄷 텍스트 사이의 간격 변경 가능 !
                .kerning(10)
            
            VStack{
                Text("4) hi, I am Gaeun Lee ! SwiftUI 빡공하자 화이팅구리입니다유 ~")
                // 􀄷 크기에 맞게 텍스트가 잘림 !
                    .frame(width: 100, height: 50, alignment: .center)
                
                Text("4-1.1) hi, I am Gaeun Lee ! SwiftUI 빡공하자 화이팅구리입니다유 ~")
                    .frame(width: 100, height: 50, alignment: .center)
                // 􀄷 크기에 맞게 텍스트를 축소함
                    .minimumScaleFactor(0.7)
                
                Text("4-1.2) hi, I am Gaeun Lee !")
                    .frame(width: 100, height: 50, alignment: .center)
                // 􀄷 만약 이렇게 텍스트가 넘어가지 않으면 줄여지지 않음 !
                // ( minimumScaleFactor == 만약에 줄인다면 텍스트를 줄일 수 있는 최소 사이즈 !)
                    .minimumScaleFactor(0.7)
                
                Text("4-2.1) hi")
                    .frame(width: 100, height: 50, alignment: .center)
                    .background(Color.green)
                
                Text("4-2.1) hi")
                // 􀄷 이렇게 해당하는 사이즈에서 alignment를 바꾸면 정렬이 됨
                    .frame(width: 100, height: 50, alignment: .leading)
                    .background(Color.green)
            }
            VStack{
                // 􀄷 영어 대소문자 및 capitalized 표기 가능
                Text("5) hi".capitalized)
                Text("5-1.1) hi".lowercased())
                Text("5-1.2) hi".uppercased())
            }
        }
        .padding(.horizontal, 25)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
