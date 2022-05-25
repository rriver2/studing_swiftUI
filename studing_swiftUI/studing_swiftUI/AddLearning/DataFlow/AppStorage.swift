//
//  AppStorage.swift
//  NC1_Test
//
//  Created by 이가은 on 2022/04/29.
//

import SwiftUI

struct AppStorageView: View {
    @AppStorage("name5") var userName3  = "River"
    @AppStorage(wrappedValue: "River", "name4") var userName4
    
    @State var isShowAppStorageSubView2 = false
    
    var body: some View {
        VStack{
            Text("AppStorageView")
                .font(.system(size: 40))
            Text("appStorage1 : \(userName3)")
            
            Button(action: {
                    userName4 = ""
            }){
                Text("make userName")
            }
            .padding()
            .foregroundColor(Color.red)
            
            Button(action: {
                isShowAppStorageSubView2 = true
            }){
                Text("AppStorageSubView2 나타나랏 !")
            }

            if(isShowAppStorageSubView2 == true){
                AppStorageSubView2()
            }
        }
    }
}

struct AppStorageSubView2: View {
    @AppStorage("name5") var userName3 : String = ""
    
    var body: some View {
        VStack{
            Text("SubView")
                .font(.system(size: 40))
            Text("appStorage1 : \(userName3)")
        }.padding()
    }
}

struct AppStorageView_Previews: PreviewProvider {
    @AppStorage("username1") static var userName1 : String!
    @AppStorage("username2") static var userName2 : String!
    
    static var previews: some View {
        AppStorageView()
    }
}
