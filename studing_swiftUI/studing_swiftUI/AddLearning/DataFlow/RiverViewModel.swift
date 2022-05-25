//
//  RiverViewModel.swift
//  NC1_Test
//
//  Created by 이가은 on 2022/04/28.
//

import SwiftUI

var ViewCount : Int = 0

struct hi {
    let name : String
    let age : Int
}

class RiverViewModel: ObservableObject {
    @Published var data = 0
    @Published var color = "white"
    
    @Published var array : [hi] = []
    
    init() {
        ViewCount += 1
        print("ViewModel init \(ViewCount)")
    }
    
    func addArray(name : String, age : Int){
        let hi인스턴스 = hi(name: name, age: age)
        self.array.append(hi인스턴스)
    }
    
    func addCount5(){
        self.data += 5
    }
    
    deinit {
        print("ViewModel deinit \(ViewCount)")
    }

}
