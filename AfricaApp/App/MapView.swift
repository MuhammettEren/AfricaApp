//
//  MapView.swift
//  AfricaApp
//
//  Created by Muhammet Eren on 25.10.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations:[NationalParkLocation] = Bundle.main.decode("locations.json")
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { item in
        //MapMarker(coordinate: item.location, tint: .accentColor)
            
            MapAnnotation(coordinate: item.location){
                MapAnnotationView(location: item)
            }
        }
    }

}

#Preview {
    MapView()
}
