//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 이가은 on 2022/05/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    //Because you use state properties to hold information that’s specific to a view and its subviews, you always create state as private.
    @State private var showFavoritesOnly = false
    
    // ask 이거 뭔.. 형태지 ..?
    var filteredLandmarks: [Landmark] {
           modelData.landmarks.filter { landmark in
               //이거 뭔.. 형태지 ..?
               (!showFavoritesOnly || landmark.isFavorite)
           }
       }
    //    var filteredLandmarks : [Landmark] =
    //        landmarks.filter { landmark in
    //            (!showFavoritesOnly || landmark.isFavorite)
    //        }
    
    var body: some View {
        //  landmark 자체가 id를 가지고 있음 따라서
        //        List(landmark, id: \.id){ landmark in
        //            LandmarkRow(landmark: landmark)
        //        }
        
        //ask : To combine static and dynamic views in a list, or to combine two or more different groups of dynamic views, use the ForEach type instead of passing your collection of data to List.
        List {
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites only")
            }
            
            ForEach(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
        }
        .navigationTitle("Landmarks")
    }
}

// 아이작 ask : 왜 안되는 거지 ?
struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
        //        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
        //              LandmarkList()
        //                .previewDevice(PreviewDevice(rawValue: deviceName))
        //                .previewDisplayName(deviceName)
        //        }
    }
}
