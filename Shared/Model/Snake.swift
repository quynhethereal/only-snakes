//
//  Snake.swift
//  Assignment One (iOS)
//
//  Created by Le Helen on 24/07/2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Snake: Identifiable{
    var id = UUID()
    var name: String
    var description: String
    var secondDescription: String
    var shortDescription: String
    var location: String
    var status: String
    var statusEmoji: String
    var tag: [String]

    var imageName: String
    var image: Image {
        Image(imageName)
    }
    
}
