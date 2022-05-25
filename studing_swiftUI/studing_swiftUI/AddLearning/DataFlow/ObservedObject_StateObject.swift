//
//  NavigationViewTest1.swift
//  NC1_Test
//
//  Created by KYUBO A. SHIM on 2022/04/28.
//

import SwiftUI

struct RiverView: View {
    @State private var name = "리버리"
    
    var body: some View {
        
        ScrollView{
            Button {
                if(name == "리버리2"){
                    name = "리버리"
                }else if(name == "리버리"){
                    name = "리버리2"
                }
            } label: {
                Text("change name")
            }
            
            Text(name)
            RiverSubView(name: name)
            RiverSubView2(name: name)
        }
    }
}

struct RiverSubView: View {
    @ObservedObject var viewmodel = RiverViewModel()
    // ObservedObject를 사용시
    // RiverView의 name이 변경되었을 때 RiverView의 하위 뷰들이 초기화가 되면서
    // RiverSubView의 viewmodel 또한 초기화가 된다.
    // 띠라서 data의 값이 50으로 초기화 된다.
    
    // change name button을 누를 때마다
    // "ViewModel init, ViewModel deinit" 이 뜨는 건
    // 이 RiverSubView의 viewmodel이 새로 생성되기 때문임
    let name : String
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(height: 10)
            Text("RiverSubView")
                .font(.title)
            Text("(ObservedObject)")
                .padding(10)
            
            Text(name)
            HStack{
                Text("\(viewmodel.data)")
                    .font(.largeTitle)
                    .padding()
                Image(systemName: "plus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .onTapGesture {
                        viewmodel.addCount5()
                    }
                Image(systemName: "minus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .onTapGesture {
                        viewmodel.addCount5()
                    }
            }
        }
    }
}

struct RiverSubView2: View {
    @StateObject var viewmodel = RiverViewModel()
    // stateObject를 사용시에 viewmodel이 객체화가 되어 따로 관리가 되어지고 있다.
    // RiverView의 name이 변경되었을 때 RiverView의 하위 뷰들이 초기화가 되더라도
    // viewmodel는 별개로 관리가 되고 있기 때문에 name 변경 전의 값이 유지가 된다.
    
    // 따라서 change name button을 누를 때마다
    // 이 RiverSubView2의 viewmodel은 새로 생성되지 않기 때문에
    // "ViewModel init, ViewModel deinit" 이 뜨지 않음
    let name : String
    
    var body: some View {
        VStack{
            Rectangle()
                .frame(height: 10)
            Text("RiverSubView2")
                .font(.title)
            Text("(StateObject)")
                .padding(10)
            
            Text(name)
            HStack{
                Text("\(viewmodel.data)")
                    .font(.largeTitle)
                    .padding()
                Image(systemName: "plus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .onTapGesture {
                        viewmodel.addCount5()
                    }
                Image(systemName: "minus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .onTapGesture {
                        viewmodel.addCount5()
                    }
            }
            
            Button(action: {
                viewmodel.addArray(name: "hi", age: 1)
            }) {
                Text("hi there")
            }
            
            ForEach(viewmodel.array.indices, id: \.self) { index in
                let str = viewmodel.array[index]
                HStack{
                    Text(str.name)
                    Text("\(str.age)")
                }
            }
            
            // RiverSubView2에서 StateObject로 객체화시킨 viewmodel을 하위 뷰로 전달
            RiverSubView3(viewmodel: viewmodel)
            
            RiverSubView3(viewmodel: viewmodel)
        }
    }
}

struct RiverSubView3: View {
    // 상위 뷰에서 StateObject로 객체화시킨 viewmodel는
    // ObservedObject로 받아서 사용
    // StateObject의 객체회 된 viewmodel의 변화를 감지하기 때문에 name 값이 변화하더라도
    // data 값이 초기화되지 않는다.
    
    // 정리 )
    // 처음에 viewmodel의 값의 인스턴스를 만들때는
    // stateObject로 객체화를 시켜 따로 관리하도록 만들고,
    // 이후 하위뷰로 전달할 때에는 ObservedObject를 사용해서
    // 부모 뷰의 stateObject로 객체화 된 viewmodel을 감시한다.
    @ObservedObject var viewmodel : RiverViewModel
    
    var body: some View {
        VStack{
            Divider()
            Text("RiverSubView3")
                .font(.title2)
            Text("(RiverSubView에서 viewmodel을 ObservedObject로 받아옴)")
                .padding(10)
            
            HStack{
                Text("\(viewmodel.data)")
                    .font(.largeTitle)
                    .padding()
                Image(systemName: "plus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .onTapGesture {
                        viewmodel.addCount5()
                    }
                Image(systemName: "minus.circle")
                    .font(.system(size: 40))
                    .foregroundColor(.red)
                    .onTapGesture {
                        viewmodel.addCount5()
                    }
            }
            ForEach(viewmodel.array.indices, id: \.self) { index in
                let str = viewmodel.array[index]
                HStack{
                    Text(str.name)
                    Text("\(str.age)")
                }
            }
        }
    }
}

struct RiverView_Previews: PreviewProvider {
    static var previews: some View {
        RiverView()
    }
}
