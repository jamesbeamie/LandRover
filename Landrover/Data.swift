//
//  Data.swift
//  Landrover
//
//  Created by James on 12/10/19.
//  Copyright © 2019 James. All rights reserved.
//

import Foundation

let roverData:[Rover] = load("roverdb.json")


func load<T:Decodable>(_ filename: String, as type: T.Type = T.self)-> T{
    let data: Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) in Main bundle")
    }
    do{
        data = try Data(contentsOf: file)
    }catch{
        fatalError("Couldn't load \(filename) from main bundle \n: \(error)")
    }
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self): \n(error)")
    }
}
