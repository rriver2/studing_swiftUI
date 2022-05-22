//
//  Landmark.swift
//  Landmarks
//
//  Created by 이가은 on 2022/05/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

// identifiable 하게 만들기 위해서 Hashable 프로토콜 선언
struct Landmark : Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    //Private 하는 이유 공부하기 -> 아마 밖에서 안 쓰여서 인 듯 ?
    // :You make the property private because users of the Landmarks structure care only about the image itself.
    private var imageName : String
    var image : Image { // -> 이렇게 뷰를 만들어도 되는 구나 !
        Image(imageName)
    }
    
    //Private 하는 이유 공부하기
    // :You mark this property as private because you’ll use it only to create a public computed property in the next step.
    
    private var coordinates : Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    struct Coordinates : Hashable, Codable {
        var longitude : Double
        var latitude : Double
    }
}
