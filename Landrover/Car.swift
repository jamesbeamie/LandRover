//
//  Car.swift
//  Landrover
//
//  Created by James on 12/17/19.
//  Copyright © 2019 James. All rights reserved.
//

import SwiftUI

struct Car: View {
    var rover: Rover
    var body: some View {
        VStack(alignment: .leading, spacing: 16.0){
            Image(rover.imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 170)
                .cornerRadius(10)
                .shadow(radius: 10)
            VStack(alignment: .leading, spacing: 5.0){
                Text(rover.name)
                    .font(.headline)
                Text(rover.description)
                    .font(.subheadline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .frame(height:40)
            }
        }
    }
}

struct Car_Previews: PreviewProvider {
    static var previews: some View {
        Car(rover: roverData[0])
    }
}
