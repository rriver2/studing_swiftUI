//
//  ModelData.swift
//  Landmarks
//
//  Created by 이가은 on 2022/05/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks : [Landmark] = load("landmarkData.json")
}

func load<T : Decodable>(_ filename : String) -> T {
    let data : Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in name bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle :\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}
