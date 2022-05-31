//
//  VStack_ZStack_HStack.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/29.
//

import SwiftUI

struct VStack_ZStack_HStack: View {
    var body: some View {
        VStack(alignment : .center){
            // alignment : .center, spacing : nil가 default
            // command -> embeded in ~Stack
            
            // VStack
            // alignment, spacing 지정가능
            Text("VStack")
            VStack(alignment: .leading, spacing: 0){
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 30 )
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 50, height: 30 )
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30 )
            }
            .padding()
            
            // HStack
            // alignment, spacing 지정가능
            Text("HStack")
            HStack(alignment: .center, spacing: 20){
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 30, height: 100 )
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 30, height: 50 )
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 30, height: 30 )
            }
            .padding()
            
            HStack(alignment: .firstTextBaseline){
                Color.red
                    .frame(width: 50, height: 10)
                Text("안녕하세요 ")
                    .font(.headline)
                    .foregroundColor(Color.white)
                    .background(Color.orange)
                Color.yellow
                    .frame(width: 50, height: 40)
                Text("꿈꾸는 리버리입니다")
                    .font(.footnote)
                    .foregroundColor(Color.white)
                    .background(Color.green)
                Color.blue
                    .frame(width: 50, height: 50)
                Text("오늘도 화이팅구리 ~").font(.caption)
                    .foregroundColor(Color.white)
                    .background(Color.pink)
                Color.purple
                    .frame(width: 50, height: 60)
            }
            .padding()
            
            
            HStack(alignment : .bottom){
                Text("hi, ")
                Text("I ")
                    .font(.caption)
                Text("am ")
                    .font(.title2)
                Text("River")
                    .font(.largeTitle)
            }
            .padding()
            
            // ZStack ( back to front )
            // background, overlay는 기본적으로 ZStack 녀석임
            Text("ZStack")
            ZStack(alignment: .topLeading){
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 30 )
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 80, height: 20 )
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 60, height: 10 )
            }
            
            // 하나 정도만 ZStack을 이용할 때는 background나 overlay를 사용하는 것을 추천함
            VStack{
                Text("background")
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 60, height: 10 )
                    .background(alignment: .topLeading){
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 80, height: 20 )
                            .background(alignment: .topLeading){
                                Rectangle()
                                    .fill(Color.green)
                                    .frame(width: 100, height: 30 )
                            }
                    }
                
                Text("overlay")
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 30 )
                    .overlay(alignment: .topLeading){
                        Rectangle()
                            .fill(Color.orange)
                            .frame(width: 80, height: 20 )
                            .overlay(alignment: .topLeading){
                                Rectangle()
                                    .fill(Color.red)
                                    .frame(width: 60, height: 10 )
                            }
                    }
            }
        }
        
    }
}

struct VStack_ZStack_HStack_Previews: PreviewProvider {
    static var previews: some View {
        VStack_ZStack_HStack()
    }
}
