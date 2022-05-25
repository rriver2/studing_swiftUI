//
//  Input_Event_Modifiers.swift
//  DataFlow
//
//  Created by 이가은 on 2022/05/01.
//

import SwiftUI

struct Input_Event_Modifiers: View {
    var body: some View {
        //        NavigationView{
        //            VStack{
        //                Text("Input_Event_Modifiers")
        //                    .font(.title)
        //                    .padding()
        //                NavigationLink("onChange", destination:
        //                                onChangeView())
        //                NavigationLink("onRecieve", destination:
        //                                onRecieveView())
        //                NavigationLink("onSubmit", destination:
        //                                onSubmitView())
        //            }
        //        }
        EventView().environmentObject(ViewModel())
    }
}
struct onChangeView: View {
    @State private var name = "River"
    @State private var colorName = "green"
    @State private var color = Color.green
    
    @State private var priviewName = "Ocean"

    
    var body: some View {
        VStack{
            Text("onChange")
                .font(.title)
                .padding()
            Text(name)
                .font(.title2)
            Text(colorName)
                .foregroundColor(color)
            
            Text("priviewName : \(priviewName)")
                .padding(.bottom)
            
            Button(action: {
                if name == "Ocean" {
                    name = "River"
                }else if name == "River" {
                    name = "Ocean"
                }
            }){
                Text("change name")
            }
        }
        .onChange(of: name){[name] newValue in
            if newValue == "Ocean" {
                colorName = "blue"
                color = Color.blue
            }else if newValue == "River" {
                colorName = "green"
                color = Color.green
            }
            priviewName = name
        }
    }
}

class ViewModel : ObservableObject{
    @Published var name = "River"
}

struct EventView: View {
    @EnvironmentObject var viewModel : ViewModel
    @State var changeCount : Int = 0
    @State var name = "River"
    
    var body: some View {
        VStack{
            Text("onRecieve")
                .font(.title)
                .padding()
            Text(viewModel.name)
            
            Button(action: {
                if viewModel.name == "Ocean" {
                    viewModel.name = "River"
                    changeCount += 1
                }else if viewModel.name == "River" {
                    viewModel.name = "Ocean"
                    changeCount += 1
                }
            }){
                Text("change name")
            }
            Text("changeCount:\(changeCount)")
        }
        .onChange(of: viewModel.name) { newValue in
            print("2:" + name)
        }
        .onReceive(viewModel.$name){ newValue in
            print(name)
        }
    }
}
struct onSubmitView: View {
    var body: some View {
        Text("hi")
    }
}

struct Input_Event_Modifiers_Previews: PreviewProvider {
    static var previews: some View {
        Input_Event_Modifiers()
    }
}
