//
//  ContentView.swift
//  studing_swiftUI
//
//  Created by 이가은 on 2022/05/19.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("TextView", destination: TextView())
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
