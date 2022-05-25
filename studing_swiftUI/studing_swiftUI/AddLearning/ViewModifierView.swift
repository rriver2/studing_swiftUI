//
//  ViewModifierView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/24.
//

import SwiftUI

struct ButtonModifier: ViewModifier{
    var backgroundColor : Color = .customColor
    var foregroundColor : Color = .white
    
    func body(content: Content) -> some View {
        content
            .font(.title3)
            .foregroundColor(foregroundColor)
            .padding()
            .frame(width: UIScreen.main.bounds.width-30, alignment: .center)
            .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                .fill(backgroundColor))
            .padding(.bottom, 8)
    }
}

extension View {
    
    // ask ModifiedContent를 이용하면 좋은 이유 ?
    func customButton(backgroundColor : Color = .customColor, foregroundColor : Color = .white) -> ModifiedContent<Self, ButtonModifier> {
        return modifier(ButtonModifier(backgroundColor : backgroundColor, foregroundColor : foregroundColor))
    }
        
    func titleStyle() -> some View{
        self
            .font(.system(size: 80,weight: .bold))
            .padding(.bottom, 10)
            .padding(.leading, 5)
    }
}

struct ViewModifierView: View {
    var body: some View {
        VStack{
            Text("button1")
                .customButton()
            
            Text("button2")
                .customButton(backgroundColor: .blue, foregroundColor: .black)
            
            Text("hi")
                .titleStyle()
        }
    }
}

struct ViewModifierView_Previews: PreviewProvider {
    static var previews: some View {
        ViewModifierView()
    }
}
