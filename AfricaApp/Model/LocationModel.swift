//
//  LocationModel.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 31.10.2023.
//

import Foundation
import MapKit

struct NationalParkLocation:Codable,Identifiable {
    var id:String
    var name:String
    var image:String
    var latitude:Double
    var longitude:Double
    
    var location: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
