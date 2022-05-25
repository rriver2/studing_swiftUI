//
//  EnvironmentObject.swift
//  DataFlow
//
//  Created by 이가은 on 2022/05/01.
//

import SwiftUI

class River_ViewModel: ObservableObject {
    @Published var name : String = "River"
}


struct EnvironmentObjectView: View {
    @State var isSubView1 = false
    @State var isSubView2 = false
    
    var body: some View {
        NavigationView{
            VStack{
                Text("RootView")
                    .font(.title)
                    .padding()
                NavigationLink("SubView1", destination: SubView1(),isActive: $isSubView1)
                NavigationLink("SubView2", destination: SubView2(),isActive: $isSubView2)
            }
        }.environmentObject(River_ViewModel())
    }
}

struct SubView1: View {
    @EnvironmentObject var river: River_ViewModel
    
    var body: some View {
        VStack{
            Text("SubView1")
                .font(.title)
                .padding()
            Text("name : \(river.name)")
        }
    }
}

struct SubView2: View {
    
    var body: some View {
        VStack{
            Text("SubView2")
                .font(.title)
                .padding()
            Text("나눈 River_ViewModel 인스턴스 안 받았지렁이 ~")
            
            NavigationLink("SubView2-1", destination: SubView1())
        }
    }
}

struct EnvironmentObjectView_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectView()
            .environmentObject(River_ViewModel())
    }
}
